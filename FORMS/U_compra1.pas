unit U_compra1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_movimento_padrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Mask;

type
  TFrm_compra1 = class(TFrm_padrao_movimento)
    Q_padraoCOMPRA_ID: TFDAutoIncField;
    Q_padraoFORNECEDOR_ID: TIntegerField;
    Q_padraoID_FORMA_PGTO: TIntegerField;
    Q_padraoUSUARIO: TStringField;
    Q_padraoVALOR: TFMTBCDField;
    Q_padraoCADASTRO: TDateField;
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
    Q_padraoNOME: TStringField;
    Q_padraoDESCRICAO: TStringField;
    Label7: TLabel;
    Label8: TLabel;
    DB_nome: TDBLookupComboBox;
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
    procedure bt_novoClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure db_produto_idExit(Sender: TObject);
    procedure bt_okClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_compra1: TFrm_compra1;

implementation

{$R *.dfm}

uses U_DM;

procedure TFrm_compra1.BitBtn1Click(Sender: TObject);

    var proximo:integer;

begin

   //INSERE ITENS NA TABELA DE ITENS COMPRAS

    Q_padrao_item.Open;
    Q_padrao_item.Last;
    proximo:= Q_padrao_itemSEQUENCIA_ID.AsInteger + 1; // recebe o valor do campo sequencia_id + 1
    Q_padrao_item.Append;     // nova linha
    Q_padrao_itemSEQUENCIA_ID.AsInteger:=proximo;    //campo sequencia_id recebe o conteudo de proximo
    db_produto_id.SetFocus;

end;

procedure TFrm_compra1.bt_novoClick(Sender: TObject);
begin
  inherited;

  Q_padraoCADASTRO.AsDateTime:=Date;
  Q_padraoUSUARIO.AsString:='EDIVALDO';
  Q_padraoVALOR.AsCurrency:=0;
  DB_fornecedor_id.setFocus;

end;

procedure TFrm_compra1.bt_okClick(Sender: TObject);
begin
Q_padrao.Edit;
Q_padraoVALOR.AsFloat:=
Q_padrao_item.AggFields.FieldByName('SUBTOTAL').Value;
Q_padrao.Post;


//Alimentar o estoque


Q_padrao_item.First;
while not Q_padrao_item.eof do
begin
    if Q_produto.Locate('PRODUTO_ID', Q_padrao_itemPRODUTO_ID.AsInteger,[]) then
     begin
     Q_produto.Edit;
     Q_produto.FieldByName('ESTOQUE').AsFloat:=
     Q_produto.FieldByName('ESTOQUE').AsFloat +
     Q_padrao_itemQTDE.AsFloat;
     Q_padrao_item.Next;
     end;
  end;
     Q_produto.Refresh;
     Messagedlg('Estoque atualizado com sucesso!', mtinformation, [mbOk], 0);
end;

procedure TFrm_compra1.db_produto_idExit(Sender: TObject);
begin
  if Q_padrao_itemPRODUTO_ID.AsInteger > 0 then
  if Q_produto.Locate('PRODUTO_ID', Q_padrao_item.FieldByName('PRODUTO_ID').AsInteger, []) then

  begin
    Q_padrao_itemQTDE.AsFloat:=1;
    Q_padrao_itemDESCONTO.AsFloat:=0;
    //pagar o valor do produto
    Q_padrao_itemVL_CUSTO.AsFloat:=Q_produto.FieldByName('VL_CUSTO').AsFloat;

     //soma os itens
    Q_padrao_itemTOTAL_ITEM.AsFloat:=
    (Q_padrao_itemQTDE.AsFloat * Q_padrao_itemVL_CUSTO.AsFloat) -
    (Q_padrao_itemDESCONTO.AsFloat);
    Q_padrao_item.Post;
    bt_item.SetFocus;

  end
  else
  Messagedlg('Produto n�o encontrado!', mterror, [mbok], 0);
  Q_padrao_item.Cancel;
  bt_item.SetFocus;


end;

end.