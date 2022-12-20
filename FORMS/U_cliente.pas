unit U_cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TFrm_Cliente = class(TFrm_padrao)
    Q_padraoCLIENTE_ID: TFDAutoIncField;
    Q_padraoNOME: TStringField;
    Q_padraoENDERECO: TStringField;
    Q_padraoNUMERO: TIntegerField;
    Q_padraoBAIRRO: TStringField;
    Q_padraoCIDADE: TStringField;
    Q_padraoUF: TStringField;
    Q_padraoCEP: TStringField;
    Q_padraoTELEFONE: TStringField;
    Q_padraoCADASTRO: TDateField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DB_nome: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DB_cadastro: TDBEdit;
    Q_padraoCPF: TStringField;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    procedure bt_novoClick(Sender: TObject);
    procedure bt_pesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Cliente: TFrm_Cliente;

implementation

{$R *.dfm}

uses U_pesq_cliente;

procedure TFrm_Cliente.bt_novoClick(Sender: TObject);
begin
  inherited;
DB_cadastro.Text:=datetostr(now);
DB_nome.SetFocus;
end;

procedure TFrm_Cliente.bt_pesquisarClick(Sender: TObject);
begin
  Frm_pesq_Cliente:=TFrm_pesq_Cliente.Create(self);
  Frm_pesq_Cliente.ShowModal;

  try

     if Frm_pesq_cliente.codico > 0 then
     begin
       Q_padrao.open;
       Q_padrao.Locate('CLIENTE_ID', Frm_pesq_cliente.codico, []);
     end;

  finally
    Frm_pesq_Cliente.free;
    Frm_pesq_Cliente:=nil;
  end;

end;

end.
