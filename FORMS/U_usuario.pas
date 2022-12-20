unit U_usuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TFrm_usuarios = class(TFrm_padrao)
    Q_padraoUSER_ID: TIntegerField;
    Q_padraoNAME: TStringField;
    Q_padraoPASSWORD: TStringField;
    Q_padraoTYPE: TStringField;
    Q_padraoSIGNIN: TDateField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DB_nome: TDBEdit;
    Label3: TLabel;
    DB_senha: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DB_cadastro: TDBEdit;
    DB_tipo: TDBComboBox;
    procedure bt_novoClick(Sender: TObject);
    procedure bt_pesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_usuarios: TFrm_usuarios;

implementation

{$R *.dfm}

uses U_pesq_usuario;

procedure TFrm_usuarios.bt_novoClick(Sender: TObject);
begin
  inherited;
       DB_cadastro.Text:=DateTostr(now);
     DB_nome.SetFocus;
end;

procedure TFrm_usuarios.bt_pesquisarClick(Sender: TObject);
begin


Frm_pesq_usuario:=TFrm_pesq_usuario.Create(self);
Frm_pesq_usuario.showmodal;
try
    if Frm_pesq_usuario.codico > 0 then
     begin
       Q_padrao.open;
       Q_padrao.Locate('USER_ID', Frm_pesq_usuario.codico, []);
     end;
finally

Frm_pesq_usuario.free;
Frm_pesq_usuario:=nil;

end;

end;

end.
