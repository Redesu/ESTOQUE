unit U_fornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TFrm_fornecedor = class(TFrm_padrao)
    Q_padraoFORNECEDOR_ID: TFDAutoIncField;
    Q_padraoNOME: TStringField;
    Q_padraoENDERECO: TStringField;
    Q_padraoNUMERO: TIntegerField;
    Q_padraoBAIRRO: TStringField;
    Q_padraoCIDADE: TStringField;
    Q_padraoUF: TStringField;
    Q_padraoCEP: TStringField;
    Q_padraoTELEFONE: TStringField;
    Q_padraoCNPJ: TStringField;
    Q_padraoEMAIL: TStringField;
    Q_padraoCADASTRO: TDateField;
    Label1: TLabel;
    DB_ID_FORNECEDOR: TDBEdit;
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
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DB_cadastro: TDBEdit;
    procedure bt_novoClick(Sender: TObject);
    procedure bt_pesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_fornecedor: TFrm_fornecedor;

implementation

{$R *.dfm}

uses U_pesq_fornecedor;

procedure TFrm_fornecedor.bt_novoClick(Sender: TObject);
begin
  inherited;
  DB_cadastro.Text := DateTostr(now);
  DB_nome.SetFocus;

end;

procedure TFrm_fornecedor.bt_pesquisarClick(Sender: TObject);
begin
  Frm_pesq_fornecedor := TFrm_pesq_fornecedor.Create(self);
  Frm_pesq_fornecedor.ShowModal;
  try
    if Frm_pesq_fornecedor.codico > 0 then
    begin
      Q_padrao.Open;
      Q_padrao.Locate('FORNECEDOR_ID', Frm_pesq_fornecedor.codico, []);
    end;
  finally

    Frm_pesq_fornecedor.free;
    Frm_pesq_fornecedor := nil;

  end;

end;

end.
