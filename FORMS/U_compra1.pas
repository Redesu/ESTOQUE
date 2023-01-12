unit U_compra1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_movimento_padrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Mask, frxClass, frxDBSet, frxExportBaseDialog, frxExportPDF, Vcl.ComCtrls;

type
  TFrm_compra1 = class(TFrm_padrao_movimento)
    Label1: TLabel;
    DB_id_compra: TDBEdit;
    Label2: TLabel;
    DB_fornecedor_id: TDBEdit;
    Label3: TLabel;
    DB_id_forma_pgto: TDBEdit;
    Label4: TLabel;
    DB_cadastro: TDBEdit;
    Label5: TLabel;
    DB_usuario: TDBEdit;
    Label6: TLabel;
    DB_valor: TDBEdit;
    Q_fornecedor: TFDQuery;
    Q_forma_pgto: TFDQuery;
    ds_fornecedor: TDataSource;
    ds_forma_pgto: TDataSource;
    Q_fornecedorFORNECEDOR_ID: TIntegerField;
    Q_fornecedorNOME: TStringField;
    Q_forma_pgtoID_FORMA_PGTO: TIntegerField;
    Q_forma_pgtoDESCRICAO: TStringField;
    Label7: TLabel;
    Label8: TLabel;
    DB_descricao: TDBLookupComboBox;
    Q_padrao_itemSEQUENCIA_ID: TIntegerField;
    Q_padrao_itemCOMPRA_ID: TIntegerField;
    Q_padrao_itemPRODUTO_ID: TIntegerField;
    Q_padrao_itemQTDE: TFMTBCDField;
    Q_padrao_itemVL_CUSTO: TFMTBCDField;
    Q_padrao_itemTOTAL_ITEM: TFMTBCDField;
    Label9: TLabel;
    db_produto_id: TDBEdit;
    Label10: TLabel;
    db_qtde: TDBEdit;
    Label11: TLabel;
    db_vl_custo: TDBEdit;
    Q_padrao_itemDESCONTO: TFMTBCDField;
    Label12: TLabel;
    db_desconto: TDBEdit;
    Label13: TLabel;
    db_total_item: TDBEdit;
    Q_produto: TFDQuery;
    Q_padrao_itemDESCRICAO: TStringField;
    Q_padrao_itemSUBTOTAL: TAggregateField;
    DBEdit2: TDBEdit;
    Rel_Recibo_Compra: TfrxReport;
    frxDB_Q_padrao: TfrxDBDataset;
    FD_empresa: TFDQuery;
    Ds_empresa: TDataSource;
    FD_empresaEMPRESA_ID: TIntegerField;
    FD_empresaRAZAO_SOCIAL: TStringField;
    FD_empresaN_FANTASIA: TStringField;
    FD_empresaENDERECO: TStringField;
    FD_empresaNUMERO: TIntegerField;
    FD_empresaBAIRRO: TStringField;
    FD_empresaCIDADE: TStringField;
    FD_empresaUF: TStringField;
    FD_empresaCEP: TStringField;
    FD_empresaTELEFONE: TStringField;
    FD_empresaCNPJ: TStringField;
    FD_empresaEMAIL: TStringField;
    FD_empresaCADASTRO: TDateField;
    FD_empresaLOGO: TBlobField;
    frxDB_EMPRESA: TfrxDBDataset;
    frxDB_padrao_item: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    Q_padraoCOMPRA_ID: TFDAutoIncField;
    Q_padraoFORNECEDOR_ID: TIntegerField;
    Q_padraoNOME: TStringField;
    Q_padraoID_FORMA_PGTO: TIntegerField;
    Q_padraoDESCRICAO: TStringField;
    Q_padraoUSUARIO: TStringField;
    Q_padraoVALOR: TFMTBCDField;
    Q_padraoCADASTRO: TDateField;
    Q_padraoCOND_PGTO: TIntegerField;
    Label14: TLabel;
    DB_cond_pgto: TDBEdit;
    Q_conta_pagar: TFDQuery;
    ds_conta_pagar: TDataSource;
    Q_conta_pagarSEQUENCIA_ID: TIntegerField;
    Q_conta_pagarCOMPRA_ID: TIntegerField;
    Q_conta_pagarVALOR_PARCELA: TFMTBCDField;
    Q_conta_pagarDT_VENCIMENTO: TDateField;
    Q_conta_pagarDT_PAGAMENTO: TDateField;
    Q_conta_pagarATRASO: TIntegerField;
    Q_conta_pagarJUROS: TFMTBCDField;
    Q_conta_pagarVL_JUROS: TFMTBCDField;
    Q_conta_pagarTOTAL_PAGAR: TFMTBCDField;
    Q_conta_pagarSTATUS: TStringField;
    db_nome: TDBEdit;
    bt_check_fornecedor: TBitBtn;
    bt_busca_forma_pgto: TBitBtn;
    procedure bt_novoClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure db_produto_idExit(Sender: TObject);
    procedure bt_okClick(Sender: TObject);
    procedure bt_excluirClick(Sender: TObject);
    procedure bt_deletarClick(Sender: TObject);
    procedure bt_pesquisarClick(Sender: TObject);
    procedure bt_imprimirClick(Sender: TObject);
    procedure DB_id_forma_pgtoExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure db_descontoClick(Sender: TObject);
    procedure db_descontoExit(Sender: TObject);
    procedure db_qtdeClick(Sender: TObject);
    procedure db_qtdeExit(Sender: TObject);
    procedure bt_check_fornecedorClick(Sender: TObject);
    procedure bt_busca_forma_pgtoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_compra1: TFrm_compra1;

implementation

{$R *.dfm}

uses U_DM, U_pesq_compra, U_pesq_fornecedor, U_pesq_forma_pgto;

procedure TFrm_compra1.BitBtn1Click(Sender: TObject);

var
  proximo: integer;

begin

  // INSERE ITENS NA TABELA DE ITENS COMPRAS

  Q_padrao_item.Open;
  Q_padrao_item.Last;
  proximo := Q_padrao_itemSEQUENCIA_ID.AsInteger + 1;
  // recebe o valor do campo sequencia_id + 1
  Q_padrao_item.Append; // nova linha
  Q_padrao_itemSEQUENCIA_ID.AsInteger := proximo;
  // campo sequencia_id recebe o conteudo de proximo
  db_produto_id.SetFocus;

end;

procedure TFrm_compra1.bt_busca_forma_pgtoClick(Sender: TObject);
begin
  if Q_padrao.State in [dsedit, dsinsert] then
  begin
    Frm_pesq_forma_pgto := Tfrm_pesq_forma_pgto.Create(self);
    Frm_pesq_forma_pgto.ShowModal;
    try
      if Frm_pesq_forma_pgto.codico > 0 then
      begin
        Q_padraoID_FORMA_PGTO.AsInteger := Frm_pesq_forma_pgto.codico;
      end;
    finally
      Frm_pesq_forma_pgto.Free;
      Frm_pesq_forma_pgto := nil;

    end;
  end;

end;

procedure TFrm_compra1.bt_check_fornecedorClick(Sender: TObject);
begin
  if Q_padrao.State in [dsedit, dsinsert] then
  begin
    Frm_pesq_fornecedor := TFrm_pesq_fornecedor.Create(self);
    Frm_pesq_fornecedor.ShowModal;
    try
      if Frm_pesq_fornecedor.codico > 0 then
      begin
        Q_padraoFORNECEDOR_ID.AsInteger := Frm_pesq_fornecedor.codico;
      end;
    finally
      Frm_pesq_fornecedor.Free;
      Frm_pesq_fornecedor := nil;

    end;
  end;

end;

procedure TFrm_compra1.bt_deletarClick(Sender: TObject);
begin

  if Messagedlg('Deseja excluir todo o registro?', mtConfirmation, [mbok, mbNo],
    0) = mrOk then
  begin

    // Exclui as parcelas
    Q_conta_pagar.First;
    while not Q_conta_pagar.eof do
    begin
      Q_conta_pagar.Delete;
      Q_conta_pagar.Next;
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
          Q_produto.FieldByName('ESTOQUE').AsFloat - Q_padrao_itemQTDE.AsFloat;
        Q_produto.Refresh;
        Q_padrao_item.Delete;
        Q_padrao_item.Next;
      end;
    end;
    inherited;
  end
  else
    abort;

end;

procedure TFrm_compra1.bt_excluirClick(Sender: TObject);
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
        Q_produto.FieldByName('ESTOQUE').AsFloat - Q_padrao_itemQTDE.AsFloat;
      Q_produto.Refresh;
      Q_padrao_item.Delete;
      Messagedlg('Item excluido com sucesso!', mtConfirmation, [mbok], 0);

    end;

  end
  else
    abort;

end;

procedure TFrm_compra1.bt_imprimirClick(Sender: TObject);

var
  caminho: string;
  compra: integer;

begin
  // Imprimir o recibo de compras

  compra := Q_padrao_itemCOMPRA_ID.AsInteger;

  Q_padrao.Close;
  Q_padrao_item.Close;
  Q_padrao.sql.add(''); // limpa
  Q_padrao.Params.clear; // limpa parametros
  Q_padrao.sql.clear; // limpa sql

  Q_padrao.sql.add('SELECT A.COMPRA_ID, ' + 'A.FORNECEDOR_ID, ' + 'B.NOME, ' +
    'A.ID_FORMA_PGTO, ' + 'C.DESCRICAO, ' + 'A.USUARIO, ' + 'A.VALOR, ' +
    'A.CADASTRO ' + 'FROM COMPRA A, FORNECEDOR B, FORMA_PGTO C ' +
    'A.COND_PGTO, ' + 'WHERE A.FORNECEDOR_ID=B.FORNECEDOR_ID ' +
    'AND C.ID_FORMA_PGTO=A.ID_FORMA_PGTO ');
  Q_padrao.sql.add('AND A.COMPRA_ID=:COMPRA_ID');

  Q_padrao.Params.ParamByName('COMPRA_ID').AsInteger := compra;

  Q_padrao.Open;
  Q_padrao_item.Open;
  Frm_compra1.Close;

  caminho := ExtractFilePath(Application.ExeName);

  if Frm_compra1.Rel_Recibo_Compra.LoadFromFile
    (caminho + 'REL_RECIBO_COMPRA.fr3') then
  begin

    Rel_Recibo_Compra.clear; // limpa relatorio
    Rel_Recibo_Compra.LoadFromFile(ExtractFilePath(Application.ExeName) +
      'REL_RECIBO_COMPRA.fr3');
    Rel_Recibo_Compra.PrepareReport(true);
    Rel_Recibo_Compra.ShowPreparedReport;

  end
  else
    Messagedlg('Relatorio n�o encontrado', mtError, [mbok], 0);

end;

procedure TFrm_compra1.bt_novoClick(Sender: TObject);
begin
  inherited;

  Q_padraoCADASTRO.AsDateTime := Date;
  Q_padraoUSUARIO.AsString := dm.usuario;
  Q_padraoVALOR.AsCurrency := 0;
  DB_fornecedor_id.SetFocus;

end;

procedure TFrm_compra1.bt_okClick(Sender: TObject);
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
        Q_produto.FieldByName('ESTOQUE').AsFloat + Q_padrao_itemQTDE.AsFloat;
      Q_padrao_item.Next;
    end;
  end;
  Q_produto.Refresh;
  Messagedlg('Estoque atualizado com sucesso!', mtinformation, [mbok], 0);
  // Insere o contas a pagar
  Q_conta_pagar.Open;
  parcela := 1;

  if (Q_padraoID_FORMA_PGTO.Value = 1) or (Q_padraoID_FORMA_PGTO.Value = 3) then
  begin

    while parcela <= Q_padraoCOND_PGTO.AsInteger do
    begin

      // Abre para inser��o
      Q_conta_pagar.Insert;
      Q_conta_pagarSEQUENCIA_ID.AsInteger := 1;
      // Recebe a divis�o total por Cond_pgto
      Q_conta_pagar.FieldByName('VALOR_PARCELA').AsFloat :=
        Q_padraoVALOR.AsFloat;
      // Insere data de vencimento e Pgto
      Q_conta_pagar.FieldByName('DT_VENCIMENTO').Value := Date;
      Q_conta_pagar.FieldByName('DT_PAGAMENTO').Value := Date;
      // Zera juros e atraso
      Q_conta_pagar.FieldByName('ATRASO').AsFloat := 0;
      Q_conta_pagar.FieldByName('JUROS').AsFloat := 0;
      Q_conta_pagar.FieldByName('VL_JUROS').AsFloat := 0;
      // Total a pagar recebe o valor da parcela
      Q_conta_pagar.FieldByName('TOTAL_PAGAR').AsFloat :=
        Q_conta_pagar.FieldByName('VALOR_PARCELA').AsFloat;
      Q_conta_pagar.FieldByName('STATUS').AsString := 'RECEBIDO';
      // Grava na tabela
      Q_conta_pagar.Post;
      abort;

    end;

  end
  else
    Q_conta_pagar.First;
  while parcela <= Q_padraoCOND_PGTO.AsInteger do
  begin
    // Abre para inser��o
    Q_conta_pagar.Insert;
    Q_conta_pagarSEQUENCIA_ID.AsInteger := parcela;
    // Recebe a divis�o total por Cond_pgto
    Q_conta_pagar.FieldByName('VALOR_PARCELA').AsFloat := Q_padraoVALOR.AsFloat
      / Q_padraoCOND_PGTO.Value;
    // Insere data de vencimento
    Q_conta_pagar.FieldByName('DT_VENCIMENTO').Value := Date + (parcela * 30);
    // Zera juros e atraso
    Q_conta_pagar.FieldByName('ATRASO').AsFloat := 0;
    Q_conta_pagar.FieldByName('JUROS').AsFloat := 0;
    Q_conta_pagar.FieldByName('VL_JUROS').AsFloat := 0;
    // Total a pagar recebe o valor da parcela
    Q_conta_pagar.FieldByName('TOTAL_PAGAR').AsFloat :=
      Q_conta_pagar.FieldByName('VALOR_PARCELA').AsFloat;
    Q_conta_pagar.FieldByName('STATUS').AsString := 'EM ABERTO';
    // Grava na tabela
    Q_conta_pagar.Post;
    // Auto incrementa a parcela
    inc(parcela);
    Q_conta_pagar.Next;

  end;
  // CRIA O PROCEDIMENTO PARA TRATAR DIFEREN�A DE PARCELAS

  soma := soma + Q_padraoCOND_PGTO.Value * Q_conta_pagar.FieldByName
    ('VALOR_PARCELA').AsFloat;

  if soma > Q_padraoVALOR.AsFloat then
  begin
    diferenca := soma - Q_padraoVALOR.AsFloat;
    Q_conta_pagar.Last;
    Q_conta_pagar.Edit;
    Q_conta_pagar.FieldByName('VALOR_PARCELA').AsFloat :=
      Q_conta_pagar.FieldByName('VALOR_PARCELA').AsFloat - diferenca;
    Q_conta_pagar.Refresh;
  end;

  Messagedlg('Parcelas geradas com sucesso!', mtinformation, [mbok], 0);

end;

procedure TFrm_compra1.bt_pesquisarClick(Sender: TObject);
begin
  inherited;
  Frm_pesq_compra := TFrm_pesq_compra.Create(self);
  Frm_pesq_compra.ShowModal;
  try
    if Frm_pesq_compra.codico > 0 then
    begin
      Q_padrao.Open;
      Q_padrao.Locate('COMPRA_ID', Frm_pesq_compra.codico, []);
    end;
  finally

    Frm_pesq_compra.Free;
    Frm_pesq_compra := nil;

  end;

end;

procedure TFrm_compra1.db_descontoClick(Sender: TObject);
begin
  inherited;
  Q_padrao_item.Edit;
end;

procedure TFrm_compra1.db_descontoExit(Sender: TObject);
begin
  Q_padrao_itemTOTAL_ITEM.AsFloat :=
    (Q_padrao_itemQTDE.AsFloat * Q_padrao_itemVL_CUSTO.AsFloat) -
    (Q_padrao_itemDESCONTO.AsFloat);
  Q_padrao_item.Refresh;

end;

procedure TFrm_compra1.DB_id_forma_pgtoExit(Sender: TObject);
begin
  // Insere dados na condi��o de pgto

  // Se for a vista ou cart�o de credito
  {
    if (DB_id_forma_pgto.Text = Inttostr(1)) or
    (DB_id_forma_pgto.Text = Inttostr(2)) then
    begin
    DB_cond_pgto.Text := Inttostr(1);
    end
    else
    DB_cond_pgto.SetFocus;
  }
end;

procedure TFrm_compra1.db_produto_idExit(Sender: TObject);
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
      Q_padrao_itemVL_CUSTO.AsFloat :=
        Q_produto.FieldByName('VL_CUSTO').AsFloat;

      // soma os itens
      Q_padrao_itemTOTAL_ITEM.AsFloat :=
        (Q_padrao_itemQTDE.AsFloat * Q_padrao_itemVL_CUSTO.AsFloat) -
        (Q_padrao_itemDESCONTO.AsFloat);
      Q_padrao_item.Post;
      bt_item.SetFocus;

    end
    else
      Messagedlg('Produto n�o encontrado!', mtError, [mbok], 0);
  Q_padrao_item.Cancel;
  bt_item.SetFocus;

end;

procedure TFrm_compra1.db_qtdeClick(Sender: TObject);
begin
  inherited;
  Q_padrao_item.Edit;
end;

procedure TFrm_compra1.db_qtdeExit(Sender: TObject);
begin
  inherited;

  Q_padrao_itemTOTAL_ITEM.AsFloat :=
    (Q_padrao_itemQTDE.AsFloat * Q_padrao_itemVL_CUSTO.AsFloat) -
    (Q_padrao_itemDESCONTO.AsFloat);
  Q_padrao_item.Refresh;

end;

procedure TFrm_compra1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Q_fornecedor.Close;
  Q_forma_pgto.Close;
  Q_conta_pagar.Close;
  Q_padrao.Close;
  Q_padrao_item.Close;

end;

end.
