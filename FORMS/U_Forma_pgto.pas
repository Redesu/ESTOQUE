unit U_Forma_pgto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TFrm_Forma_pgto = class(TFrm_padrao)
    Q_padraoID_FORMA_PGTO: TIntegerField;
    Q_padraoDESCRICAO: TStringField;
    Q_padraoCADASTRO: TDateField;
    Label1: TLabel;
    DB_id_forma_pgto: TDBEdit;
    Label2: TLabel;
    DB_descricao: TDBEdit;
    Label3: TLabel;
    DB_cadastro: TDBEdit;
    procedure bt_novoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Forma_pgto: TFrm_Forma_pgto;

implementation

{$R *.dfm}

procedure TFrm_Forma_pgto.bt_novoClick(Sender: TObject);
begin
  inherited;
   DB_cadastro.Text:=datetostr(now);
   DB_descricao.SetFocus;
end;

end.
