unit U_pesq_parcela_receber;

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
  TFrm_pesq_parcela_receber = class(TFrm_pesquisa_padrao)
    Q_pesq_padraoVENDA_ID: TIntegerField;
    Q_pesq_padraoCLIENTE_ID: TIntegerField;
    Q_pesq_padraoNOME: TStringField;
    Q_pesq_padraoCPF: TStringField;
    Q_pesq_padraoSEQUENCIA_ID: TIntegerField;
    Q_pesq_padraoVALOR_PARCELA: TFMTBCDField;
    Q_pesq_padraoDT_VENCIMENTO: TDateField;
    Q_pesq_padraoDT_PAGAMENTO: TDateField;
    Q_pesq_padraoATRASO: TIntegerField;
    Q_pesq_padraoJUROS: TFMTBCDField;
    Q_pesq_padraoVL_JUROS: TFMTBCDField;
    Q_pesq_padraoTOTAL_PAGAR: TFMTBCDField;
    Q_pesq_padraoSTATUS: TStringField;
    procedure cb_chave_pesquisaClick(Sender: TObject);
    procedure bt_PesquisaClick(Sender: TObject);
    procedure bt_transferirClick(Sender: TObject);
    procedure cb_chave_pesquisaChange(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bt_ImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Data: Tdate;
    sequencia: Integer;
  end;

var
  Frm_pesq_parcela_receber: TFrm_pesq_parcela_receber;

implementation

{$R *.dfm}

uses U_DM;

procedure TFrm_pesq_parcela_receber.bt_ImprimirClick(Sender: TObject);
var
  caminho: string;
begin
  caminho := ExtractFilePath(Application.ExeName);

  if Frm_pesq_Parcela_receber.frxReport1.LoadFromFile
    (caminho + 'REL_LISTA_RECEBER.fr3') then
  begin

    frxReport1.clear; // limpa relatorio
    frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
      'REL_LISTA_RECEBER.fr3');
    frxReport1.Variables['nome'] := QuotedStr(dm.usuario);
    frxReport1.PrepareReport(true);
    frxReport1.ShowPreparedReport;
    Frm_pesq_Parcela_receber.Close;

  end
  else
    Messagedlg('Relatorio n�o encontrado', mtError, [mbOk], 0);

end;

procedure TFrm_pesq_parcela_receber.bt_PesquisaClick(Sender: TObject);
begin
  inherited;
  Q_pesq_padrao.Close;
  Q_pesq_padrao.sql.add(''); // limpa
  Q_pesq_padrao.Params.clear; // limpa parametros
  Q_pesq_padrao.sql.clear; // limpa sql
  Q_pesq_padrao.sql.add('SELECT A.VENDA_ID, ' + 'A.CLIENTE_ID, ' + 'B.NOME, ' +
    'B.CPF, ' + 'C.SEQUENCIA_ID, ' + 'C.VALOR_PARCELA, ' + 'C.DT_VENCIMENTO, ' +
    'C.DT_PAGAMENTO, ' + 'C.ATRASO, ' + 'C.JUROS, ' + 'C.VL_JUROS, ' +
    'C.TOTAL_PAGAR, ' + 'C.STATUS FROM VENDAS A');
  Q_pesq_padrao.sql.add('INNER JOIN CLIENTE B ON B.CLIENTE_ID = A.CLIENTE_ID');
  Q_pesq_padrao.sql.add
    ('INNER JOIN CONTAS_RECEBER C ON C.VENDA_ID = A.VENDA_ID');
  case cb_chave_pesquisa.ItemIndex of

    0:
      begin
        Q_pesq_padrao.sql.add('WHERE A.CLIENTE_ID =:PCLIENTE_ID');
        Q_pesq_padrao.ParamByName('PCLIENTE_ID').AsString := ed_nome.Text;
        Q_pesq_padrao.sql.add('AND C.STATUS = ''EM ABERTO''');
      end;

    1:
      begin
        Q_pesq_padrao.sql.add('WHERE B.NOME LIKE :PNOME');
        Q_pesq_padrao.ParamByName('PNOME').AsString := '%' + ed_nome.Text + '%';
        Q_pesq_padrao.sql.add('AND C.STATUS = ''EM ABERTO''');
      end;

    2:
      begin
        Q_pesq_padrao.sql.add('WHERE B.CPF =:PCPF');
        Q_pesq_padrao.ParamByName('PCPF').AsString := ed_nome.Text;
        Q_pesq_padrao.sql.add('AND C.STATUS = ''EM ABERTO''');
      end;

      3:
      begin
        Q_pesq_padrao.sql.add('AND C.STATUS = ''EM ABERTO''');
        Q_pesq_padrao.SQL.Add('ORDER BY VENDA_ID');
      end;

  end;

  Q_pesq_padrao.open;
  lb_resultado.Visible := true;
  lb_resultado.Caption := 'Total de registros localizados: ' +
    IntToStr(Q_pesq_padrao.RecordCount);

  if Q_pesq_padrao.IsEmpty then
  begin
    Messagedlg('Registro n�o encontrado!', Mtinformation, [mbOk], 0);
  end
  else
    abort;

end;

procedure TFrm_pesq_parcela_receber.bt_transferirClick(Sender: TObject);
begin
  inherited;
  if Q_pesq_padrao.RecordCount > 0 then
  begin
    codico := Q_pesq_padraoVENDA_ID.AsInteger;
    Data := Q_pesq_padraoDT_VENCIMENTO.AsDateTime;
    sequencia := Q_pesq_padraoSEQUENCIA_ID.AsInteger;

  end
  else
    abort;
end;

procedure TFrm_pesq_parcela_receber.cb_chave_pesquisaChange(Sender: TObject);
begin
  case cb_chave_pesquisa.ItemIndex of
    0:
      begin
        mk_inicio.Visible := false;
        mk_fim.Visible := false;
        ed_nome.Visible := true;
        lb_nome.Caption := 'Digite o c�digo do cliente';
        lb_fim.Visible := false
      end;

    1:
      begin
        mk_inicio.Visible := false;
        mk_fim.Visible := false;
        ed_nome.Visible := true;
        lb_nome.Caption := 'Digite o nome';
        lb_fim.Visible := false
      end;

    2:
      begin
        mk_inicio.Visible := false;
        mk_fim.Visible := false;
        ed_nome.Visible := true;
        lb_nome.Caption := 'Digite o CPF';
        lb_inicio.Visible := false;
        lb_fim.Visible := false
      end;
  end;

end;

procedure TFrm_pesq_parcela_receber.cb_chave_pesquisaClick(Sender: TObject);
begin
  inherited;
  ed_nome.clear;
  ed_nome.SetFocus;
end;

procedure TFrm_pesq_parcela_receber.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

  // Se tiver sido recebido

  if (Q_pesq_padraoDT_PAGAMENTO.Value <> 0) and
    (Q_pesq_padraoSTATUS.AsString = 'RECEBIDO') then
  begin

    DBGrid1.Canvas.Brush.Color := clGreen;
    DBGrid1.Canvas.Font.Color := clWhite;

  end
  else
    // se estiver ha vencer

    if (Q_pesq_padraoDT_VENCIMENTO.AsDateTime > date) and
      (Q_pesq_padraoSTATUS.AsString = 'EM ABERTO') then
    begin

      DBGrid1.Canvas.Brush.Color := clYellow;
      DBGrid1.Canvas.Font.Color := clBlue;

    end
    else if (Q_pesq_padraoDT_PAGAMENTO.AsDateTime<=date) and
      (Q_pesq_padraoDT_PAGAMENTO.IsNull) then
    begin

      DBGrid1.Canvas.Brush.Color := clred;
      DBGrid1.Canvas.Font.Color := clWhite;

    end;



    dbgrid1.DefaultDrawColumnCell(rect, datacol, column, state);

end;

end.
