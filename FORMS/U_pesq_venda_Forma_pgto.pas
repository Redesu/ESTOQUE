unit U_pesq_venda_Forma_pgto;

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
  TFrm_pesq_Venda_Forma_Pgto = class(TFrm_pesquisa_padrao)
    lb_valor_venda: TLabel;
    Q_pesq_padraoQTDE_VENDA: TLargeintField;
    Q_pesq_padraoVALOR_VENDA: TStringField;
    Q_pesq_padraoID_FORMA_PGTO: TIntegerField;
    Q_pesq_padraoDESCRICAO: TStringField;
    procedure bt_PesquisaClick(Sender: TObject);
    procedure Soma_Venda();
    procedure bt_ImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_pesq_Venda_Forma_Pgto: TFrm_pesq_Venda_Forma_Pgto;

implementation

{$R *.dfm}

uses U_DM;

procedure TFrm_pesq_Venda_Forma_Pgto.bt_ImprimirClick(Sender: TObject);
var
  caminho: string;

begin
  if Frm_pesq_Venda_Forma_Pgto.frxReport1.LoadFromFile
    (caminho + 'REL_VENDA_FORMA_PGTO.fr3') then
  begin

    frxReport1.clear; // limpa relatorio
    frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
      'REL_VENDA_FORMA_PGTO.fr3');

    frxReport1.Variables['Data_ini'] := QuotedStr(mk_inicio.text);
    frxReport1.Variables['Data_fim'] := QuotedStr(mk_fim.text);
    frxReport1.Variables['Qtde'] := QuotedStr(lb_resultado.Caption);
    frxReport1.Variables['Valor_compra'] := QuotedStr(lb_valor_venda.Caption);
    frxReport1.Variables['nome'] := QuotedStr(dm.usuario);
    frxReport1.PrepareReport(true);
    frxReport1.ShowPreparedReport;

  end
  else
    Messagedlg('Relatorio n?o encontrado', mtError, [mbOk], 0);

end;

procedure TFrm_pesq_Venda_Forma_Pgto.bt_PesquisaClick(Sender: TObject);
begin
  Q_pesq_padrao.Close; // Fecha query
  Q_pesq_padrao.sql.add(''); // limpa
  Q_pesq_padrao.Params.clear; // limpa parametros
  Q_pesq_padrao.sql.clear; // limpa sql

  Q_pesq_padrao.sql.add(' SELECT COUNT(A.VENDA_ID) AS QTDE_VENDA, ' +
    'SUM(A.VALOR) AS VALOR_VENDA, ' + 'A.ID_FORMA_PGTO, ' +
    'B.DESCRICAO FROM VENDAS A');
  Q_pesq_padrao.sql.add
    ('INNER JOIN FORMA_PGTO B ON B.ID_FORMA_PGTO = A.ID_FORMA_PGTO ');

  Q_pesq_padrao.sql.add('WHERE A.CADASTRO BETWEEN :PINICIO AND :PFIM');
  Q_pesq_padrao.paramByname('PINICIO').AsDate := strTodate(mk_inicio.text);
  Q_pesq_padrao.paramByname('PFIM').AsDate := strTodate(mk_fim.text);

  Q_pesq_padrao.sql.add('GROUP BY A.ID_FORMA_PGTO, B.DESCRICAO ');

  Q_pesq_padrao.Open;

  Soma_Venda;
  lb_resultado.Visible := true;
  lb_resultado.Caption := IntToStr(Q_pesq_padrao.RecordCount);

  if Q_pesq_padrao.IsEmpty then
  begin
    Messagedlg('Nenhum registro encontrado!', mtinformation, [mbOk], 0);
  end;

end;

procedure TFrm_pesq_Venda_Forma_Pgto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Q_pesq_padrao.Close;

end;

procedure TFrm_pesq_Venda_Forma_Pgto.Soma_Venda;
var
  soma: Currency;

begin

  soma := 0;

  // soma a quantidade de compras
  Q_pesq_padrao.First;

  while not Q_pesq_padrao.Eof do
  begin
    soma := soma + Q_pesq_padraoVALOR_VENDA.AsCurrency;
    Q_pesq_padrao.Next;

  end;
  lb_valor_venda.Visible := true;
  lb_valor_venda.Caption := 'Valores em vendas: ' +
    FormatFloat('R$ ##,##0.00', (soma));

end;

end.
