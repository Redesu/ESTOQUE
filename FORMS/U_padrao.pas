unit U_padrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrm_padrao = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    bt_novo: TBitBtn;
    bt_deletar: TBitBtn;
    bt_editar: TBitBtn;
    bt_gravar: TBitBtn;
    bt_cancelar: TBitBtn;
    bt_atualizar: TBitBtn;
    DBNavigator1: TDBNavigator;
    bt_pesquisar: TBitBtn;
    Q_padrao: TFDQuery;
    ds_padrao: TDataSource;
    bt_sair: TBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bt_deletarClick(Sender: TObject);
    procedure bt_editarClick(Sender: TObject);
    procedure bt_gravarClick(Sender: TObject);
    procedure bt_cancelarClick(Sender: TObject);
    procedure bt_atualizarClick(Sender: TObject);
    procedure Trabalhobotoes();
    procedure bt_sairClick(Sender: TObject);
    procedure bt_novoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_padrao: TFrm_padrao;

implementation

{$R *.dfm}

uses U_DM;

procedure TFrm_padrao.bt_sairClick(Sender: TObject);
begin
  close;
end;

procedure TFrm_padrao.bt_atualizarClick(Sender: TObject);
begin
  // atualiza o registro
  try
    Trabalhobotoes;
    Q_padrao.Post;
    messagedlg('Registro atualizado com sucesso!', mtInformation, [mbOk], 0);
  except
    ShowMessage('Preencha ou verifique todos os campos!');

  end;
end;

procedure TFrm_padrao.bt_cancelarClick(Sender: TObject);
begin

  // cancela a a?ao
  Trabalhobotoes;
  Q_padrao.cancel;
  messagedlg('A??o cancelada pelo usu?rio!', mtInformation, [mbOk], 0);
end;

procedure TFrm_padrao.bt_deletarClick(Sender: TObject);
begin
  // deleta um registro
  Trabalhobotoes;
  if messagedlg('Deseja deletar esse registro?', mtConfirmation, [mbOk, mbNo],
    0) = mrOk then
  begin
    Q_padrao.Delete;
    messagedlg('Registro deletado com sucesso!', mtInformation, [mbOk], 0);
    Trabalhobotoes;
  end
  else
    Trabalhobotoes;
  abort;
end;

procedure TFrm_padrao.bt_editarClick(Sender: TObject);
begin
  // abre para edi?ao
  Trabalhobotoes;
  if messagedlg('Deseja editar esse registro?', mtConfirmation, [mbOk, mbNo], 0)
    = mrOk then
  begin
    Q_padrao.edit;
  end
  else
    Trabalhobotoes;
  abort;
end;

procedure TFrm_padrao.bt_gravarClick(Sender: TObject);
begin
  try
    // salva o registro
    Trabalhobotoes;
    Q_padrao.Post;
    messagedlg('Registro salvo Com sucesso!', mtInformation, [mbOk], 0);
  except
    ShowMessage('Preencha ou verifique todos os campos!');

  end;
end;

procedure TFrm_padrao.bt_novoClick(Sender: TObject);
begin

  Q_padrao.open;
  Trabalhobotoes;
  Q_padrao.Append;
end;

procedure TFrm_padrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  // makes the enter key fuctions like tab
  if Key = #13 then
  begin
    Key := #0;
    Perform(wm_nextDlgCtl, 0, 0);
  end;
end;

procedure TFrm_padrao.Trabalhobotoes;
begin
  // habilita e desabilida os botoes
  bt_novo.Enabled := not bt_novo.Enabled;
  bt_deletar.Enabled := not bt_deletar.Enabled;
  bt_editar.Enabled := not bt_editar.Enabled;
  bt_gravar.Enabled := not bt_gravar.Enabled;
  bt_atualizar.Enabled := not bt_atualizar.Enabled;
end;

end.
