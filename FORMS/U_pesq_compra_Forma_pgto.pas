unit U_pesq_compra_Forma_pgto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Form_pesquisa_padrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, frxClass, frxExportBaseDialog, frxExportPDF,
  frxDBSet, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls;

type
  TFrm_pesq_compra_Forma_pgto = class(TFrm_pesquisa_padrao)
    Q_pesq_padraoQTDE_COMPRA: TLargeintField;
    Q_pesq_padraoVALOR_COMPRA: TStringField;
    Q_pesq_padraoID_FORMA_PGTO: TIntegerField;
    Q_pesq_padraoDESCRICAO: TStringField;
    lb_valor_compra: TLabel;
    procedure FormShow(Sender: TObject);
    procedure bt_PesquisaClick(Sender: TObject);
    procedure Soma_Compra();
    procedure bt_ImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_pesq_compra_Forma_pgto: TFrm_pesq_compra_Forma_pgto;

implementation

{$R *.dfm}

uses U_DM;

procedure TFrm_pesq_compra_Forma_pgto.bt_ImprimirClick(Sender: TObject);
var
  caminho: string;

begin
  if Frm_pesq_compra_Forma_pgto.frxReport1.LoadFromFile
    (caminho + 'REL_COMPRA_FORMA_PGTO.fr3') then
  begin

    frxReport1.clear; // limpa relatorio
    frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
      'REL_COMPRA_FORMA_PGTO.fr3');

    frxReport1.Variables['Data_ini'] := QuotedStr(mk_inicio.text);
    frxReport1.Variables['Data_fim'] := QuotedStr(mk_fim.text);
    frxReport1.Variables['Qtde'] := QuotedStr(lb_resultado.Caption);
    frxReport1.Variables['Valor_compra'] := QuotedStr(lb_valor_compra.Caption);
    frxReport1.Variables['nome'] := QuotedStr(dm.usuario);
    frxReport1.PrepareReport(true);
    frxReport1.ShowPreparedReport;

  end
  else
    Messagedlg('Relatorio n�o encontrado', mtError, [mbOk], 0);

end;

procedure TFrm_pesq_compra_Forma_pgto.bt_PesquisaClick(Sender: TObject);
begin
  Q_pesq_padrao.Close; // Fecha query
  Q_pesq_padrao.sql.add(''); // limpa
  Q_pesq_padrao.Params.clear; // limpa parametros
  Q_pesq_padrao.sql.clear; // limpa sql

  Q_pesq_padrao.sql.add(' SELECT COUNT(A.COMPRA_ID) AS QTDE_COMPRA, ' +
    'SUM (A.VALOR) AS VALOR_COMPRA, ' + 'A.ID_FORMA_PGTO, ' +
    'B.DESCRICAO FROM COMPRA A');
  Q_pesq_padrao.sql.add
    ('INNER JOIN FORMA_PGTO B ON B.ID_FORMA_PGTO = A.ID_FORMA_PGTO ');

  Q_pesq_padrao.sql.add('WHERE A.CADASTRO BETWEEN :PINICIO AND :PFIM');
  Q_pesq_padrao.paramByname('PINICIO').AsDate := strTodate(mk_inicio.text);
  Q_pesq_padrao.paramByname('PFIM').AsDate := strTodate(mk_fim.text);

  Q_pesq_padrao.sql.add('GROUP BY A.ID_FORMA_PGTO, B.DESCRICAO ');

  Q_pesq_padrao.Open;

  Soma_Compra;
  lb_resultado.Visible := true;
  lb_resultado.Caption := IntToStr(Q_pesq_padrao.RecordCount);

  if Q_pesq_padrao.IsEmpty then
  begin
    Messagedlg('Nenhum registro encontrado!', mtinformation, [mbOk], 0);
  end;

end;

procedure TFrm_pesq_compra_Forma_pgto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Q_pesq_padrao.Close;
end;

procedure TFrm_pesq_compra_Forma_pgto.FormShow(Sender: TObject);
begin
  mk_inicio.SetFocus;

end;

procedure TFrm_pesq_compra_Forma_pgto.Soma_Compra;
var
  soma: Currency;

begin

  soma := 0;

  // soma a quantidade de compras
  Q_pesq_padrao.First;

  while not Q_pesq_padrao.Eof do
  begin
    soma := soma + Q_pesq_padraoVALOR_COMPRA.AsCurrency;
    Q_pesq_padrao.Next;
  end;
  lb_valor_compra.Visible := true;
  lb_valor_compra.Caption := 'Valores em compras: ' +
    FormatFloat('R$ ##,##0.00', (soma));

end;

end.
