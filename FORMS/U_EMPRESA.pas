unit U_EMPRESA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TFrm_empresa = class(TFrm_padrao)
    Q_padraoEMPRESA_ID: TIntegerField;
    Q_padraoRAZAO_SOCIAL: TStringField;
    Q_padraoN_FANTASIA: TStringField;
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
    Q_padraoLOGO: TBlobField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DB_razao_social: TDBEdit;
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
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DB_cadastro: TDBEdit;
    Label14: TLabel;
    DBImage1: TDBImage;
    bt_foto: TBitBtn;
    bt_clear: TBitBtn;
    OpenDialog1: TOpenDialog;
    procedure bt_novoClick(Sender: TObject);
    procedure bt_fotoClick(Sender: TObject);
    procedure bt_clearClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_empresa: TFrm_empresa;

implementation

{$R *.dfm}

procedure TFrm_empresa.bt_clearClick(Sender: TObject);
begin
  //Limpa a imagem
  Q_padrao.Edit;
  Q_padraoLOGO.AsVariant:=null;
  Q_padrao.Refresh;
  Messagedlg('Imagem deletada com sucesso!', mtInformation,[mbOk],0);

end;

procedure TFrm_empresa.bt_fotoClick(Sender: TObject);
begin
  //insere foto
  Q_padrao.Edit;
  opendialog1.Execute; // executa o opendialog
  dbimage1.Picture.LoadFromFile(opendialog1.filename);           //recebe a imagem
  Q_padrao.Refresh();                //atualiza a imagem
  Messagedlg('Imagem atualizada com sucesso!', mtInformation,[mbOk],0);

end;

procedure TFrm_empresa.bt_novoClick(Sender: TObject);
begin
  inherited;
  DB_cadastro.Text:=datetostr(now);
  DB_razao_social.SetFocus;

end;

end.
