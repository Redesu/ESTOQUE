unit U_pesq_fornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Form_pesquisa_padrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls,
  frxClass, frxDBSet, frxExportBaseDialog, frxExportPDF, Vcl.DBCtrls;

type
  TFrm_pesq_fornecedor = class(TFrm_pesquisa_padrao)
    Q_pesq_padraoFORNECEDOR_ID: TIntegerField;
    Q_pesq_padraoNOME: TStringField;
    Q_pesq_padraoENDERECO: TStringField;
    Q_pesq_padraoNUMERO: TIntegerField;
    Q_pesq_padraoBAIRRO: TStringField;
    Q_pesq_padraoCIDADE: TStringField;
    Q_pesq_padraoUF: TStringField;
    Q_pesq_padraoCEP: TStringField;
    Q_pesq_padraoTELEFONE: TStringField;
    Q_pesq_padraoCNPJ: TStringField;
    Q_pesq_padraoEMAIL: TStringField;
    Q_pesq_padraoCADASTRO: TDateField;
    procedure bt_PesquisaClick(Sender: TObject);
    procedure bt_transferirClick(Sender: TObject);
    procedure bt_ImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_pesq_fornecedor: TFrm_pesq_fornecedor;

implementation

{$R *.dfm}

procedure TFrm_pesq_fornecedor.bt_ImprimirClick(Sender: TObject);

var
  caminho: string;

begin

  caminho := ExtractFilePath(Application.ExeName);

  if Frm_pesq_fornecedor.frxReport1.LoadFromFile(caminho + 'REL_FORNECEDOR.fr3')
  then
  begin

    frxReport1.clear; // limpa relatorio
    frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
      'REL_FORNECEDOR.fr3');
    frxReport1.PrepareReport(true);
    frxReport1.ShowPreparedReport;

  end
  else
    Messagedlg('Relatorio não encontrado', mtError, [mbOk], 0);

end;

procedure TFrm_pesq_fornecedor.bt_PesquisaClick(Sender: TObject);
begin
  inherited;
  Q_pesq_padrao.Close;
  Q_pesq_padrao.sql.add(''); // limpa
  Q_pesq_padrao.Params.clear; // limpa parametros
  Q_pesq_padrao.sql.clear; // limpa sql

  Q_pesq_padrao.sql.add('SELECT FORNECEDOR_ID, ' + 'NOME, ' + 'ENDERECO, ' +
    'NUMERO, ' + 'BAIRRO,' + 'CIDADE, ' + 'UF, ' + 'CEP, ' + 'TELEFONE,' +
    'CNPJ, ' + 'EMAIL, ' + 'CADASTRO FROM FORNECEDOR');

  case cb_chave_pesquisa.ItemIndex of
    0:
      begin
        // pesquisa por codigo
        Q_pesq_padrao.sql.add('WHERE FORNECEDOR_ID =:PFORNECEDOR_ID');
        // criamos parametro
        Q_pesq_padrao.paramByname('PFORNECEDOR_ID').AsString := ed_nome.Text;
        // aponta para o campo do parametro
      end;

    1:
      begin
        Q_pesq_padrao.sql.add('WHERE NOME LIKE :PNOME'); // criamos parametro
        Q_pesq_padrao.paramByname('PNOME').AsString := '%' + ed_nome.Text + '%';
        // aponta para o campo do parametro
      end;

    2:
      begin
        // pesquisa por periodo
        Q_pesq_padrao.sql.add('WHERE CADASTRO =:PCADASTRO');
        Q_pesq_padrao.paramByname('PCADASTRO').AsDate :=
          strTodate(mk_inicio.Text);
      end;

    3:
      begin
        // pesquisa por data
        Q_pesq_padrao.sql.add('WHERE CADASTRO BETWEEN :PINICIO AND :PFIM');
        Q_pesq_padrao.paramByname('PINICIO').AsDate :=
          strTodate(mk_inicio.Text);
        Q_pesq_padrao.paramByname('PFIM').AsDate := strTodate(mk_fim.Text);
      end;

    4:
      begin
        // pesquisa por todos
        Q_pesq_padrao.sql.add('ORDER BY FORNECEDOR_ID')
      end;

  end;

  Q_pesq_padrao.open;
  lb_resultado.Visible := true;
  lb_resultado.Caption := 'Total de registros localizados: ' +
    IntToStr(Q_pesq_padrao.RecordCount);

  if Q_pesq_padrao.IsEmpty then
  begin
    Messagedlg('Registro não encontrado!', Mtinformation, [mbOk], 0);
  end
  else
    abort;

end;

procedure TFrm_pesq_fornecedor.bt_transferirClick(Sender: TObject);
begin
  inherited;
  if Q_pesq_padrao.RecordCount > 0 then
  begin
    codico := Q_pesq_padraoFORNECEDOR_ID.AsInteger;

  end
  else
    abort;
end;

end.
