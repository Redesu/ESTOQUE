unit U_contas_pagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, DateUtils;

type
  TFrm_Contas_pagar = class(TFrm_padrao)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Q_pagar: TFDQuery;
    ds_pagar: TDataSource;
    Q_pagarSEQUENCIA_ID: TIntegerField;
    Q_pagarCOMPRA_ID: TIntegerField;
    Q_pagarVALOR_PARCELA: TFMTBCDField;
    Q_pagarDT_VENCIMENTO: TDateField;
    Q_pagarDT_PAGAMENTO: TDateField;
    Q_pagarATRASO: TIntegerField;
    Q_pagarJUROS: TFMTBCDField;
    Q_pagarVL_JUROS: TFMTBCDField;
    Q_pagarTOTAL_PAGAR: TFMTBCDField;
    Q_pagarSTATUS: TStringField;
    Q_padraoCOMPRA_ID: TIntegerField;
    Q_padraoFORNECEDOR_ID: TIntegerField;
    Q_padraoNOME: TStringField;
    Q_padraoCNPJ: TStringField;
    procedure bt_pesquisarClick(Sender: TObject);
    procedure bt_editarClick(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure bt_atualizarClick(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Contas_pagar: TFrm_Contas_pagar;

implementation

{$R *.dfm}

uses U_pesq_parcela_pagar;

procedure TFrm_Contas_pagar.bt_atualizarClick(Sender: TObject);
begin
  Q_pagar.Refresh;
  inherited;

end;

procedure TFrm_Contas_pagar.bt_editarClick(Sender: TObject);
begin

  inherited;
  Q_pagar.Edit;
  Frm_pesq_parcela_pagar.Q_pesq_padrao.Close;

end;

procedure TFrm_Contas_pagar.bt_pesquisarClick(Sender: TObject);
begin

  Frm_pesq_parcela_pagar := TFrm_pesq_Parcela_pagar.Create(self);
  Frm_pesq_parcela_pagar.ShowModal;
  try
    if Frm_pesq_parcela_pagar.codico > 0 then
    begin
      Q_padrao.Open;
      Q_pagar.Open;
      Q_padrao.Locate('COMPRA_ID', Frm_pesq_parcela_pagar.codico, []);
      Q_pagar.Locate('DT_VENCIMENTO', Frm_pesq_parcela_pagar.Data, []);
      Q_pagar.Locate('SEQUENCIA_ID', Frm_pesq_parcela_pagar.sequencia, []);
    end;
  finally
    Frm_pesq_parcela_pagar.Free;
    Frm_pesq_parcela_pagar := nil;
  end;
end;

procedure TFrm_Contas_pagar.DBEdit10Exit(Sender: TObject);
begin
  // Validar os dias em atraso

  if Q_pagarATRASO.AsInteger > 0 then
  begin
    Q_pagarVL_JUROS.AsFloat := (Q_pagarATRASO.AsInteger * Q_pagarJUROS.AsFloat *
      Q_pagarVALOR_PARCELA.AsFloat / 100);

    // insere o valor total a pagar
    Q_pagarTOTAL_PAGAR.AsFloat := Q_pagarJUROS.AsFloat +
      Q_pagarVALOR_PARCELA.AsFloat;
    Q_pagarSTATUS.AsString := 'PAGO';
  end;

end;

procedure TFrm_Contas_pagar.DBEdit8Exit(Sender: TObject);
begin
  inherited;

  if Q_pagarDT_PAGAMENTO.AsDateTime > Q_pagarDT_VENCIMENTO.AsDateTime then
  begin
    Q_pagarATRASO.Value := DaysBetween(Q_pagarDT_PAGAMENTO.AsDateTime,
      Q_pagarDT_VENCIMENTO.AsDateTime);
    DBEdit10.SetFocus;
  end
  else

    Q_pagarJUROS.AsFloat := 0;
  Q_pagarVL_JUROS.AsFloat := 0;
  Q_pagarSTATUS.AsString := 'PAGO';
  Q_pagarTOTAL_PAGAR.AsFloat := Q_pagarVALOR_PARCELA.AsFloat;

end;

procedure TFrm_Contas_pagar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Q_pagar.Close;
end;

end.
