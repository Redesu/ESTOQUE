unit U_padrao_backup_Restore;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  FireDAC.Stan.Def, FireDAC.VCLUI.Wait, FireDAC.Phys.IBWrapper,
  FireDAC.Phys.IBBase, FireDAC.Stan.Intf, FireDAC.Phys;

type
  TFrm_padrao_backup_restore = class(TForm)
    Panel1: TPanel;
    ed_origem: TEdit;
    ed_destino: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    bt_backup: TBitBtn;
    bt_sair: TBitBtn;
    Status: TMemo;
    OpenDialog1: TOpenDialog;
    backup: TFDIBBackup;
    restore: TFDIBRestore;
    bt_origem: TBitBtn;
    bt_destino: TBitBtn;
    procedure bt_origemClick(Sender: TObject);
    procedure bt_destinoClick(Sender: TObject);
    procedure bt_sairClick(Sender: TObject);
    procedure backupProgress(ASender: TFDPhysDriverService;
      const AMessage: string);
    procedure backupError(ASender, AInitiator: TObject;
      var AException: Exception);
    procedure restoreProgress(ASender: TFDPhysDriverService;
      const AMessage: string);
    procedure restoreError(ASender, AInitiator: TObject;
      var AException: Exception);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_padrao_backup_restore: TFrm_padrao_backup_restore;

implementation

{$R *.dfm}

procedure TFrm_padrao_backup_restore.backupError(ASender, AInitiator: TObject;
  var AException: Exception);
begin

  Status.Lines.add('Ocorreu um erro!');
  Status.Lines.add(AException.Message);

end;

procedure TFrm_padrao_backup_restore.backupProgress
  (ASender: TFDPhysDriverService; const AMessage: string);
begin

  // SE DER CERTO
  Status.Lines.add(AMessage);

end;

procedure TFrm_padrao_backup_restore.bt_destinoClick(Sender: TObject);
begin


  OpenDialog1.Filter := 'Backup banco de dados (*.GBK) |*.GBK';
  // Localiza o local de destino do banco de dados
  if OpenDialog1.Execute then
  begin

    ed_destino.Text := OpenDialog1.FileName;

  end
  else
    abort;
end;

procedure TFrm_padrao_backup_restore.bt_origemClick(Sender: TObject);
begin

  OpenDialog1.Filter := 'Formato banco de dados FIREBIRD (*.FDB) |*.FDB';
  // Localiza o local de origem do banco de dados

  if OpenDialog1.Execute then
  begin
    ed_origem.Text := OpenDialog1.FileName;

  end
  else
    abort;

end;

procedure TFrm_padrao_backup_restore.bt_sairClick(Sender: TObject);
begin
  close;
end;

procedure TFrm_padrao_backup_restore.restoreError(ASender, AInitiator: TObject;
  var AException: Exception);
begin
  Status.Lines.add('Ocorreu um erro!');
  Status.Lines.add(AException.Message);

end;

procedure TFrm_padrao_backup_restore.restoreProgress
  (ASender: TFDPhysDriverService; const AMessage: string);
begin
  // SE DER CERTO
  Status.Lines.add(AMessage);

end;

end.
