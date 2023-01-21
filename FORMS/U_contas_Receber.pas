unit U_contas_Receber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, DateUtils, frxClass, frxDBSet,
  frxExportBaseDialog, frxExportPDF;

type
  TFrm_contas_Receber = class(TFrm_padrao)
    Q_padraoVENDA_ID: TIntegerField;
    Q_padraoCLIENTE_ID: TIntegerField;
    Q_padraoNOME: TStringField;
    Q_padraoCPF: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Q_Receber: TFDQuery;
    ds_Receber: TDataSource;
    Q_ReceberSEQUENCIA_ID: TIntegerField;
    Q_ReceberVENDA_ID: TIntegerField;
    Q_ReceberVALOR_PARCELA: TFMTBCDField;
    Q_ReceberDT_VENCIMENTO: TDateField;
    Q_ReceberDT_PAGAMENTO: TDateField;
    Q_ReceberATRASO: TIntegerField;
    Q_ReceberJUROS: TFMTBCDField;
    Q_ReceberVL_JUROS: TFMTBCDField;
    Q_ReceberTOTAL_PAGAR: TFMTBCDField;
    Q_ReceberSTATUS: TStringField;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    bt_Imprimir: TBitBtn;
    Recibo: TfrxReport;
    frx_padrao: TfrxDBDataset;
    frx_receber: TfrxDBDataset;
    frx_empresa: TfrxDBDataset;
    Q_empresa: TFDQuery;
    ds_empresa: TDataSource;
    Q_empresaEMPRESA_ID: TIntegerField;
    Q_empresaRAZAO_SOCIAL: TStringField;
    Q_empresaN_FANTASIA: TStringField;
    Q_empresaENDERECO: TStringField;
    Q_empresaNUMERO: TIntegerField;
    Q_empresaBAIRRO: TStringField;
    Q_empresaCIDADE: TStringField;
    Q_empresaUF: TStringField;
    Q_empresaCEP: TStringField;
    Q_empresaTELEFONE: TStringField;
    Q_empresaCNPJ: TStringField;
    Q_empresaEMAIL: TStringField;
    Q_empresaCADASTRO: TDateField;
    Q_empresaLOGO: TBlobField;
    frxPDFExport1: TfrxPDFExport;
    procedure bt_pesquisarClick(Sender: TObject);
    procedure bt_editarClick(Sender: TObject);
    procedure bt_cancelarClick(Sender: TObject);
    procedure bt_atualizarClick(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure bt_ImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_contas_Receber: TFrm_contas_Receber;

implementation

{$R *.dfm}

uses U_pesq_parcela_receber;

procedure TFrm_contas_Receber.bt_atualizarClick(Sender: TObject);
begin
  Q_Receber.Refresh;
  inherited;

end;

procedure TFrm_contas_Receber.bt_cancelarClick(Sender: TObject);
begin
  inherited;

  Q_Receber.CancelUpdates;

end;

procedure TFrm_contas_Receber.bt_editarClick(Sender: TObject);
begin
  Q_Receber.Edit;
  DBEdit8.SetFocus;
  inherited;

end;

procedure TFrm_contas_Receber.bt_ImprimirClick(Sender: TObject);
var
  caminho: string;

begin
  if Frm_contas_receber.Recibo.LoadFromFile(caminho + 'REL_RECIBO_PAGAMENTO.fr3') then
  begin

    Recibo.clear; // limpa relatorio
    Recibo.LoadFromFile(ExtractFilePath(Application.ExeName) +
      'REL_RECIBO_PAGAMENTO.fr3');
    Recibo.PrepareReport(true);
    Recibo.ShowPreparedReport;

  end
  else
    Messagedlg('Relatorio não encontrado', mtError, [mbOk], 0);

end;

procedure TFrm_contas_Receber.bt_pesquisarClick(Sender: TObject);
begin
  inherited;
  Frm_pesq_parcela_receber := TFrm_pesq_Parcela_receber.Create(self);
  Frm_pesq_parcela_receber.ShowModal;
  try
    if Frm_pesq_parcela_receber.codico > 0 then
    begin
      Q_padrao.Open;
      Q_Receber.Open;
      Q_padrao.Locate('VENDA_ID', Frm_pesq_parcela_receber.codico, []);
      Q_Receber.Locate('DT_VENCIMENTO', Frm_pesq_parcela_receber.Data, []);
      Q_Receber.Locate('SEQUENCIA_ID', Frm_pesq_parcela_receber.sequencia, []);
    end;
  finally
    Frm_pesq_parcela_receber.Free;
    Frm_pesq_parcela_receber := nil;
  end;
end;

procedure TFrm_contas_Receber.DBEdit10Exit(Sender: TObject);
begin
  // Validar os dias em atraso

  if Q_ReceberATRASO.AsInteger > 0 then
  begin
    Q_ReceberVL_JUROS.AsFloat :=
      (Q_ReceberATRASO.AsInteger * Q_ReceberJUROS.AsFloat *
      Q_ReceberVALOR_PARCELA.AsFloat / 100);

    // insere o valor total a pagar
    Q_ReceberTOTAL_PAGAR.AsFloat := Q_ReceberJUROS.AsFloat +
      Q_ReceberVALOR_PARCELA.AsFloat;
    Q_ReceberSTATUS.AsString := 'RECEBIDO';
  end;

end;

procedure TFrm_contas_Receber.DBEdit8Exit(Sender: TObject);
begin
  inherited;
  if Q_ReceberDT_PAGAMENTO.AsDateTime > Q_ReceberDT_VENCIMENTO.AsDateTime then
  begin
    Q_ReceberATRASO.Value := DaysBetween(Q_ReceberDT_PAGAMENTO.AsDateTime,
      Q_ReceberDT_VENCIMENTO.AsDateTime);
    DBEdit10.SetFocus;
  end
  else

    Q_ReceberJUROS.AsFloat := 0;
  Q_ReceberVL_JUROS.AsFloat := 0;
  Q_ReceberSTATUS.AsString := 'RECEBIDO';
  Q_ReceberTOTAL_PAGAR.AsFloat := Q_ReceberVALOR_PARCELA.AsFloat;

end;

end.
