unit U_backup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_padrao_backup_Restore,
  FireDAC.Stan.Def, FireDAC.VCLUI.Wait, FireDAC.Phys.IBWrapper,
  FireDAC.Phys.IBBase, FireDAC.Stan.Intf, FireDAC.Phys, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls;

type
  TFrm_backup = class(TFrm_padrao_backup_restore)
    procedure bt_backupClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_backup: TFrm_backup;

implementation

{$R *.dfm}

uses U_DM;

procedure TFrm_backup.bt_backupClick(Sender: TObject);
begin
  try
    // Realiza o backup!
    backup.Username:='SYSDBA';
    BACKUP.Password:='masterkey';
    backup.Host:='localhost';
    backup.Protocol:=iplocal;
    backup.Database:=ed_origem.Text;
    backup.BackupFiles.Clear;
    backup.backupFiles.Add(ed_destino.Text);
    backup.Backup;
    Messagedlg('Backup realizado com sucesso!', mtinformation, [mbOk],0) ;
  except
    Messagedlg('Falha ao realizar o backup!', mterror, [mbOk],0) ;
  end;
end;

end.
