unit U_movimento_padrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

type
  TFrm_padrao_movimento = class(TFrm_padrao)
    Panel3: TPanel;
    Panel4: TPanel;
    bt_item: TBitBtn;
    bt_ok: TBitBtn;
    bt_excluir: TBitBtn;
    bt_imprimir: TBitBtn;
    Q_padrao_item: TFDQuery;
    ds_padrao_item: TDataSource;
    PageControl1: TPageControl;
    Item_compra: TTabSheet;
    Contas_Pagar: TTabSheet;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_padrao_movimento: TFrm_padrao_movimento;

implementation

{$R *.dfm}

end.
