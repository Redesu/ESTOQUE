unit U_pesq_cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Form_pesquisa_padrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls,
  frxClass, frxDBSet, frxExportBaseDialog, frxExportPDF;

type
  TFrm_pesq_Cliente = class(TFrm_pesquisa_padrao)
    Q_pesq_padraoCLIENTE_ID: TIntegerField;
    Q_pesq_padraoNOME: TStringField;
    Q_pesq_padraoENDERECO: TStringField;
    Q_pesq_padraoNUMERO: TIntegerField;
    Q_pesq_padraoBAIRRO: TStringField;
    Q_pesq_padraoCIDADE: TStringField;
    Q_pesq_padraoUF: TStringField;
    Q_pesq_padraoCEP: TStringField;
    Q_pesq_padraoCPF: TStringField;
    Q_pesq_padraoTELEFONE: TStringField;
    Q_pesq_padraoCADASTRO: TDateField;
    procedure bt_PesquisaClick(Sender: TObject);
    procedure bt_transferirClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure bt_ImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_pesq_Cliente: TFrm_pesq_Cliente;

implementation

{$R *.dfm}

procedure TFrm_pesq_Cliente.bt_ImprimirClick(Sender: TObject);

var
  caminho: string;

begin

  caminho := ExtractFilePath(Application.ExeName);

  if Frm_pesq_Cliente.frxReport1.LoadFromFile(caminho + 'REL_CLIENTE.fr3') then
  begin

    frxReport1.clear; // limpa relatorio
    frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
      'REL_CLIENTE.fr3');
    frxReport1.PrepareReport(true);
    frxReport1.ShowPreparedReport;

  end
  else
    Messagedlg('Relatorio não encontrado', mtError, [mbOk], 0);

end;

procedure TFrm_pesq_Cliente.bt_PesquisaClick(Sender: TObject);
begin
  Q_pesq_padrao.Close;
  Q_pesq_padrao.sql.add(''); // limpa
  Q_pesq_padrao.Params.clear; // limpa parametros
  Q_pesq_padrao.sql.clear; // limpa sql

  Q_pesq_padrao.sql.add('SELECT CLIENTE_ID, ' + 'NOME, ' + 'ENDERECO, ' +
    'NUMERO, ' + 'BAIRRO, ' + 'CIDADE, ' + 'UF, ' + 'CEP, ' + 'CPF,' +
    'CADASTRO, ' + 'TELEFONE FROM CLIENTE');

  case cb_chave_pesquisa.ItemIndex of
    0:
      begin
        // pesquisa por codigo
        Q_pesq_padrao.sql.add('WHERE CLIENTE_ID =:PCLIENTE_ID');
        // criamos parametro
        Q_pesq_padrao.paramByname('PCLIENTE').AsString := ed_nome.Text;
        // aponta para o campo do parametro
      end;

    1:
      begin
        // pesquisa por nome
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
        Q_pesq_padrao.sql.add('ORDER BY CLIENTE_ID');
      end;

  end;

  Q_pesq_padrao.open; // abre a query

  // Se nada for encontrado, mostra o codico abaixo
  if Q_pesq_padrao.IsEmpty then
  begin
    Messagedlg('Registro não encontrado!', Mtinformation, [mbOk], 0);
  end
  else
    abort;

end;

procedure TFrm_pesq_Cliente.bt_transferirClick(Sender: TObject);
begin
  if Q_pesq_padrao.RecordCount > 0 then
  begin
    codico := Q_pesq_padraoCLIENTE_ID.AsInteger;

  end
  else
    abort;
end;

procedure TFrm_pesq_Cliente.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  bt_transferir.Click;
end;

end.
