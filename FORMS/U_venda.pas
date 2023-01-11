unit U_venda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_movimento_padrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask;

type
  TFrm_venda = class(TFrm_padrao_movimento)
    Q_padraoVENDA_ID: TIntegerField;
    Q_padraoCLIENTE_ID: TIntegerField;
    Q_padraoID_FORMA_PGTO: TIntegerField;
    Q_padraoUSUARIO: TStringField;
    Q_padraoVALOR: TFMTBCDField;
    Q_padraoCADASTRO: TDateField;
    Label1: TLabel;
    db_venda_id: TDBEdit;
    Label2: TLabel;
    db_cliente_id: TDBEdit;
    Label3: TLabel;
    db_forma_pgto: TDBEdit;
    Label4: TLabel;
    db_cadastro: TDBEdit;
    Label5: TLabel;
    db_usuario: TDBEdit;
    Label6: TLabel;
    db_valor: TDBEdit;
    Q_cliente: TFDQuery;
    Q_forma_pgto: TFDQuery;
    ds_Cliente: TDataSource;
    ds_forma_pgto: TDataSource;
    Q_clienteCLIENTE_ID: TIntegerField;
    Q_clienteNOME: TStringField;
    Q_padraoCLIENTE: TStringField;
    Label7: TLabel;
    db_cliente: TDBEdit;
    Q_padraoDESCRICAO: TStringField;
    Label8: TLabel;
    db_descricao: TDBEdit;
    Q_padraoPARCELA: TIntegerField;
    Q_padraoDINHEIRO: TFMTBCDField;
    Q_padraoTROCO: TFMTBCDField;
    Label9: TLabel;
    db_parcela: TDBEdit;
    Label10: TLabel;
    db_produto_id: TDBEdit;
    Label11: TLabel;
    db_qtde: TDBEdit;
    Label12: TLabel;
    db_vl_venda: TDBEdit;
    Label13: TLabel;
    db_desconto: TDBEdit;
    Label14: TLabel;
    db_total_item: TDBEdit;
    Q_padrao_itemSEQUENCIA_ID: TIntegerField;
    Q_padrao_itemVENDA_ID: TIntegerField;
    Q_padrao_itemPRODUTO_ID: TIntegerField;
    Q_padrao_itemQTDE: TFMTBCDField;
    Q_padrao_itemVL_VENDA: TFMTBCDField;
    Q_padrao_itemDESCONTO: TFMTBCDField;
    Q_padrao_itemTOTAL_ITEM: TFMTBCDField;
    Q_produto: TFDQuery;
    ds_produto: TDataSource;
    Q_produtoPRODUTO_ID: TIntegerField;
    Q_produtoPRODUTO_DESCRICAO: TStringField;
    Q_produtoESTOQUE: TFMTBCDField;
    Q_produtoESTOQUE_MIN: TFMTBCDField;
    Q_produtoVL_VENDA: TFMTBCDField;
    Q_padrao_itemSUBTOTAL: TAggregateField;
    DBEdit1: TDBEdit;
    Q_conta_receber: TFDQuery;
    ds_conta_receber: TDataSource;
    Q_conta_receberSEQUENCIA_ID: TIntegerField;
    Q_conta_receberVENDA_ID: TIntegerField;
    Q_conta_receberVALOR_PARCELA: TFMTBCDField;
    Q_conta_receberDT_VENCIMENTO: TDateField;
    Q_conta_receberDT_PAGAMENTO: TDateField;
    Q_conta_receberJUROS: TFMTBCDField;
    Q_conta_receberTOTAL_PAGAR: TFMTBCDField;
    Q_conta_receberVL_JUROS: TFMTBCDField;
    Q_conta_receberSTATUS: TStringField;
    Q_conta_receberATRASO: TIntegerField;
    procedure bt_novoClick(Sender: TObject);
    procedure db_cliente_idExit(Sender: TObject);
    procedure db_forma_pgtoExit(Sender: TObject);
    procedure bt_itemClick(Sender: TObject);
    procedure bt_okClick(Sender: TObject);
    procedure bt_excluirClick(Sender: TObject);
    procedure db_produto_idExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bt_deletarClick(Sender: TObject);
    procedure bt_pesquisarClick(Sender: TObject);
    procedure db_descontoClick(Sender: TObject);
    procedure db_descontoExit(Sender: TObject);
    procedure db_qtdeClick(Sender: TObject);
    procedure db_qtdeExit(Sender: TObject);
    procedure Q_padrao_itemQTDEValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_venda: TFrm_venda;

implementation

{$R *.dfm}

uses U_DM, U_pesq_venda;

procedure TFrm_venda.bt_deletarClick(Sender: TObject);
begin

  if Messagedlg('Deseja excluir todo o registro?', mtConfirmation, [mbok, mbNo],
    0) = mrOk then
  begin

    // Exclui as parcelas
    Q_conta_receber.First;
    while not Q_conta_receber.eof do
    begin
      Q_conta_receber.Delete;
      Q_conta_receber.Next;
    end;

    // EXCLUI OS ITENS DE VENDA
    Q_padrao_item.First;
    while Q_padrao_item.RecordCount > 0 do
    begin
      if Q_produto.Locate('PRODUTO_ID', Q_padrao_itemPRODUTO_ID.AsInteger, [])
      then
      begin
        Q_produto.Edit;
        Q_produto.FieldByName('ESTOQUE').AsFloat :=
          Q_produto.FieldByName('ESTOQUE').AsFloat + Q_padrao_itemQTDE.AsFloat;
        Q_produto.Refresh;
        Q_padrao_item.Delete;
        Q_padrao_item.Next;
      end;
    end;
    // exclui o cabe�ario
    inherited;
  end
  else
    abort;
end;

procedure TFrm_venda.bt_excluirClick(Sender: TObject);
begin
  // EXCLUI ITEM DO DETALHE COMPRA
  if Messagedlg('Deseja excluir esse item?', mtConfirmation, [mbok, mbNo], 0) = mrOk
  then
  begin

    if Q_produto.Locate('PRODUTO_ID', Q_padrao_itemPRODUTO_ID.AsInteger, [])
    then
    begin
      Q_produto.Edit;
      Q_produto.FieldByName('ESTOQUE').AsFloat :=
        Q_produto.FieldByName('ESTOQUE').AsFloat + Q_padrao_itemQTDE.AsFloat;
      Q_produto.Refresh;
      Q_padrao_item.Delete;
      Messagedlg('Item excluido com sucesso!', mtConfirmation, [mbok], 0);

    end;

  end
  else
    abort;

end;

procedure TFrm_venda.bt_itemClick(Sender: TObject);

var
  proximo: integer;
begin
  // INSERE ITENS NA TABELA DE ITENS VENDAS

  Q_padrao_item.Open;
  Q_produto.Open;
  Q_padrao_item.Last;
  proximo := Q_padrao_itemSEQUENCIA_ID.AsInteger + 1;
  // recebe o valor do campo sequencia_id + 1
  Q_padrao_item.Append; // nova linha
  Q_padrao_itemSEQUENCIA_ID.AsInteger := proximo;
  // campo sequencia_id recebe o conteudo de proximo
  db_produto_id.SetFocus;

end;

procedure TFrm_venda.bt_novoClick(Sender: TObject);
begin
  inherited;
  Q_cliente.Open;
  Q_forma_pgto.Open;
  Q_produto.Open;
  db_cliente_id.SetFocus;
  db_cadastro.Text := DateTostr(now);
  db_usuario.Text := dm.usuario;
  db_valor.Text := IntToStr(0);
  db_parcela.Text := IntToStr(0);

end;

procedure TFrm_venda.bt_okClick(Sender: TObject);
var
  parcela: integer;
  diferenca, soma: Real;

begin
  Q_padrao.Edit;
  Q_padraoVALOR.AsFloat := Q_padrao_item.AggFields.FieldByName
    ('SUBTOTAL').Value;
  Q_padrao.Refresh;


  // Alimentar o estoque

  Q_padrao_item.First;
  while not Q_padrao_item.eof do
  begin
    if Q_produto.Locate('PRODUTO_ID', Q_padrao_itemPRODUTO_ID.AsInteger, [])
    then
    begin
      Q_produto.Edit;
      Q_produto.FieldByName('ESTOQUE').AsFloat :=
        Q_produto.FieldByName('ESTOQUE').AsFloat - Q_padrao_itemQTDE.AsFloat;
      Q_padrao_item.Next;
    end;
  end;
  Q_produto.Refresh;
  Messagedlg('Dado baixa no estoque com sucesso!', mtinformation, [mbok], 0);

  // Insere o contas a receber
  Q_conta_receber.Open;
  parcela := 1;

  if (Q_padraoID_FORMA_PGTO.Value = 1) or (Q_padraoID_FORMA_PGTO.Value = 3) then
  begin

    while parcela <= Q_padraoPARCELA.AsInteger do
    begin

      // Abre para inser��o
      Q_conta_receber.Insert;
      Q_conta_receberSEQUENCIA_ID.AsInteger := 1;
      // Recebe a divis�o total por Cond_pgto
      Q_conta_receber.FieldByName('VALOR_PARCELA').AsFloat :=
        Q_padraoVALOR.AsFloat;
      // Insere data de vencimento e Pgto
      Q_conta_receber.FieldByName('DT_VENCIMENTO').Value := Date;
      Q_conta_receber.FieldByName('DT_PAGAMENTO').Value := Date;
      // Zera juros e atraso
      Q_conta_receber.FieldByName('ATRASO').AsFloat := 0;
      Q_conta_receber.FieldByName('JUROS').AsFloat := 0;
      Q_conta_receber.FieldByName('VL_JUROS').AsFloat := 0;
      // Total a pagar recebe o valor da parcela
      Q_conta_receber.FieldByName('TOTAL_PAGAR').AsFloat :=
        Q_conta_receber.FieldByName('VALOR_PARCELA').AsFloat;
      Q_conta_receber.FieldByName('STATUS').AsString := 'RECEBIDO';
      // Grava na tabela
      Q_conta_receber.Post;
      abort;

    end;

  end
  else
    Q_conta_receber.First;
  while parcela <= Q_padraoPARCELA.AsInteger do
  begin
    // Abre para inser��o
    Q_conta_receber.Insert;
    Q_conta_receberSEQUENCIA_ID.AsInteger := parcela;
    // Recebe a divis�o total por Cond_pgto
    Q_conta_receber.FieldByName('VALOR_PARCELA').AsFloat :=
      Q_padraoVALOR.AsFloat / Q_padraoPARCELA.Value;
    // Insere data de vencimento
    Q_conta_receber.FieldByName('DT_VENCIMENTO').Value := Date + (parcela * 30);
    // Zera juros e atraso
    Q_conta_receber.FieldByName('ATRASO').AsFloat := 0;
    Q_conta_receber.FieldByName('JUROS').AsFloat := 0;
    Q_conta_receber.FieldByName('VL_JUROS').AsFloat := 0;
    // Total a pagar recebe o valor da parcela
    Q_conta_receber.FieldByName('TOTAL_PAGAR').AsFloat :=
      Q_conta_receber.FieldByName('VALOR_PARCELA').AsFloat;
    Q_conta_receber.FieldByName('STATUS').AsString := 'EM ABERTO';
    // Grava na tabela
    Q_conta_receber.Post;
    // Auto incrementa a parcela
    inc(parcela);
    Q_conta_receber.Next;

  end;
  // CRIA O PROCEDIMENTO PARA TRATAR DIFEREN�A DE PARCELAS

  soma := soma + Q_padraoPARCELA.Value * Q_conta_receber.FieldByName
    ('VALOR_PARCELA').AsFloat;

  if soma > Q_padraoVALOR.AsFloat then
  begin
    diferenca := soma - Q_padraoVALOR.AsFloat;
    Q_conta_receber.Last;
    Q_conta_receber.Edit;
    Q_conta_receber.FieldByName('VALOR_PARCELA').AsFloat :=
      Q_conta_receber.FieldByName('VALOR_PARCELA').AsFloat - diferenca;
    Q_conta_receber.Refresh;
  end;

  Messagedlg('Parcelas geradas com sucesso!', mtinformation, [mbok], 0);

end;

procedure TFrm_venda.bt_pesquisarClick(Sender: TObject);
begin
  Frm_pesq_venda := TFrm_pesq_venda.Create(self);
  Frm_pesq_venda.ShowModal;
  try
    if Frm_pesq_venda.codico > 0 then
    begin
      Q_padrao.Open;
      Q_padrao.Locate('VENDA_ID', Frm_pesq_venda.codico, []);
    end;
  finally
    Frm_pesq_venda.Free;
    Frm_pesq_venda := nil;

  end;

end;

procedure TFrm_venda.db_cliente_idExit(Sender: TObject);
begin

  // Validar o cliente

  if not Q_cliente.Locate('cliente_id', Q_padrao.FieldByName('cliente_id')
    .AsInteger, []) then
  begin
    Messagedlg('Cliente n�o encontrado!', mtinformation, [mbok], 0);
    db_cliente_id.SetFocus;
    abort;
  end;

end;

procedure TFrm_venda.db_descontoClick(Sender: TObject);
begin
  inherited;
  Q_padrao_item.Edit;
end;

procedure TFrm_venda.db_descontoExit(Sender: TObject);
begin
  inherited;
  Q_padrao_itemTOTAL_ITEM.AsFloat :=
    (Q_padrao_itemQTDE.AsFloat * Q_padrao_itemVL_VENDA.AsFloat) -
    (Q_padrao_itemDESCONTO.AsFloat);
  Q_padrao_item.Refresh;
end;

procedure TFrm_venda.db_forma_pgtoExit(Sender: TObject);
begin
  // valida a forma de pagamento
  inherited;
  if not Q_forma_pgto.Locate('id_forma_pgto',
    Q_padrao.FieldByName('id_forma_pgto').AsInteger, []) then
  begin
    Messagedlg('Forma de pagamento n�o encontrada!', mtinformation, [mbok], 0);
    db_forma_pgto.SetFocus;
    abort;
  end;

  // valida a quantidade de parcelas

  // a vista                              //debito
  if (db_forma_pgto.Text = IntToStr(1)) or (db_forma_pgto.Text = IntToStr(3))
  then
  begin
    db_parcela.Text := IntToStr(1);
  end
  else
    db_parcela.SetFocus;

end;

procedure TFrm_venda.db_produto_idExit(Sender: TObject);
begin

  if Q_padrao_itemSEQUENCIA_ID.AsInteger = 0 then
  begin
    Q_padrao_itemSEQUENCIA_ID.AsInteger :=
      Q_padrao_itemSEQUENCIA_ID.AsInteger + 1;
  end;

  if Q_padrao_itemPRODUTO_ID.AsInteger > 0 then
    if Q_produto.Locate('PRODUTO_ID', Q_padrao_item.FieldByName('PRODUTO_ID')
      .AsInteger, []) then

    begin
      Q_padrao_itemQTDE.AsFloat := 1;
      Q_padrao_itemDESCONTO.AsFloat := 0;
      // pagar o valor do produto
      Q_padrao_itemVL_VENDA.AsFloat :=
        Q_produto.FieldByName('VL_VENDA').AsFloat;

      // soma os itens
      Q_padrao_itemTOTAL_ITEM.AsFloat :=
        (Q_padrao_itemQTDE.AsFloat * Q_padrao_itemVL_VENDA.AsFloat) -
        (Q_padrao_itemDESCONTO.AsFloat);
      Q_padrao_item.Post;
      bt_item.SetFocus;

    end
    else
      Messagedlg('Produto n�o encontrado!', mtError, [mbok], 0);
  Q_padrao_item.Cancel;
  bt_item.SetFocus;

end;

procedure TFrm_venda.db_qtdeClick(Sender: TObject);
begin
  inherited;
  Q_padrao_item.Edit;
end;

procedure TFrm_venda.db_qtdeExit(Sender: TObject);
begin
  inherited;

  if Q_padrao_itemQTDE.AsFloat > Q_produtoESTOQUE.AsFloat then
  begin
    ShowMessage
      ('O valor digitado � maior que o estoque! Quantidade no estoque: ' +
      Q_produtoESTOQUE.AsString + '');

    db_qtde.SetFocus;
    abort;

  end
  else

    Q_padrao_itemTOTAL_ITEM.AsFloat :=
      (Q_padrao_itemQTDE.AsFloat * Q_padrao_itemVL_VENDA.AsFloat) -
      (Q_padrao_itemDESCONTO.AsFloat);
  Q_padrao_item.Refresh;

end;

procedure TFrm_venda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Q_cliente.close;
  Q_forma_pgto.close;
  Q_produto.close;
end;

procedure TFrm_venda.FormShow(Sender: TObject);
begin
  inherited;
  Q_produto.Open;
end;

procedure TFrm_venda.Q_padrao_itemQTDEValidate(Sender: TField);
begin

    if Q_produtoESTOQUE.AsFloat = 0 then
    begin
      Messagedlg('Produto em falta!', mterror, [mbOk],0);
      bt_item.SetFocus;
      Q_padrao_item.Delete;
      Abort;
    end
    else
    if Q_produtoESTOQUE.AsFloat < Q_produtoESTOQUE_MIN.AsFloat then
    begin
      showMessage('Produto abaixo do estoque minimo!! Quantidade no estoque: ' +
      Q_produtoESTOQUE.AsString + '');
      bt_item.SetFocus;
    end;

end;

end.