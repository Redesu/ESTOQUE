unit U_Form_pesquisa_padrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, Vcl.StdCtrls, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass, frxDBSet,
  frxExportBaseDialog, frxExportPDF;

type
  TFrm_pesquisa_padrao = class(TForm)
    Panel1: TPanel;
    cb_chave_pesquisa: TComboBox;
    Label1: TLabel;
    ed_nome: TEdit;
    mk_inicio: TMaskEdit;
    mk_fim: TMaskEdit;
    lb_nome: TLabel;
    lb_inicio: TLabel;
    lb_fim: TLabel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    bt_Pesquisa: TBitBtn;
    bt_transferir: TBitBtn;
    bt_Imprimir: TBitBtn;
    Q_pesq_padrao: TFDQuery;
    ds_pesq_padrao: TDataSource;
    frxDB_padrao: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    procedure cb_chave_pesquisaChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     codico:Integer;
  end;

var
  Frm_pesquisa_padrao: TFrm_pesquisa_padrao;

implementation

{$R *.dfm}

uses U_DM;

procedure TFrm_pesquisa_padrao.cb_chave_pesquisaChange(Sender: TObject);
begin
  case cb_chave_pesquisa.itemIndex of
        0:begin  //pesquisa pelo código
    ed_nome.Visible:=true;
    ed_nome.SetFocus;
    mk_inicio.Visible:=false;
    mk_fim.Visible:=false;
    lb_nome.Visible:=true;
    lb_inicio.Visible:=false;
    lb_fim.Visible:=false;
    lb_nome.Caption:='Digite o código';
    ed_nome.Clear;
    mk_inicio.Clear;
    mk_fim.Clear;
  end;

        1:begin  //pesquisa pelo nome
    ed_nome.Visible:=true;
    ed_nome.SetFocus;
    mk_inicio.Visible:=false;
    mk_fim.Visible:=false;
    lb_nome.Visible:=true;
    lb_inicio.Visible:=false;
    lb_fim.Visible:=false;
    lb_nome.Caption:='Digite o nome';
    ed_nome.Clear;
    mk_inicio.Clear;
    mk_fim.Clear;
  end;

        2:begin  //pesquisa por data
    ed_nome.Visible:=false;
    mk_inicio.Visible:=true;
    mk_inicio.SetFocus;
    mk_fim.Visible:=false;
    lb_nome.Visible:=false;
    lb_inicio.Visible:=true;
    lb_fim.Visible:=false;
    lb_inicio.Caption:='Digite a data';
    ed_nome.Clear;
    mk_inicio.Clear;
    mk_fim.Clear;
  end;

        3:begin  //pesquisa por periodo
    ed_nome.Visible:=false;
    mk_inicio.Visible:=true;
    mk_fim.Visible:=true;
    mk_inicio.SetFocus;
    lb_nome.Visible:=false;
    lb_inicio.Visible:=true;
    lb_fim.Visible:=false;
    lb_inicio.Caption:='Digite o periodo';
    ed_nome.Clear;
    mk_inicio.Clear;
    mk_fim.Clear;
      end;
      4:begin  //pesquisa por todos
    ed_nome.Visible:=false;
    lb_nome.Visible:=false;
    mk_inicio.Visible:=false;
    lb_inicio.Visible:=false;
    mk_fim.Visible:=false;
    lb_fim.Visible:=false;
  end;

  5: begin
    ed_nome.Visible:=true;
    ed_nome.SetFocus;
    mk_inicio.Visible:=false;
    mk_fim.Visible:=false;
    lb_nome.Visible:=true;
    lb_inicio.Visible:=false;
    lb_fim.Visible:=false;
    lb_nome.Caption:='Digite o código do fornecedor';
    ed_nome.Clear;
    mk_inicio.Clear;
    mk_fim.Clear;
  end;
    end;
  end;
procedure TFrm_pesquisa_padrao.DBGrid1DblClick(Sender: TObject);
begin
 bt_transferir.Click;
end;

procedure TFrm_pesquisa_padrao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Q_pesq_padrao.Close;
end;

procedure TFrm_pesquisa_padrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
        if key=#13 then
        begin
          Key:=#0;
          Perform(wm_nextDlgCtl,0,0);
        end;
end;

procedure TFrm_pesquisa_padrao.FormShow(Sender: TObject);
begin
  Q_pesq_padrao.Close;
end;

end.
