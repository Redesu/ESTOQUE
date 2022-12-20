unit U_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.Menus;

type
  TFrm_Principal = class(TForm)
    Panel1: TPanel;
    bt_usuario: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    menu_Usuarios: TMenuItem;
    menu_Empresa: TMenuItem;
    menu_Clientes: TMenuItem;
    menu_Fornecedores: TMenuItem;
    menu_Produtos: TMenuItem;
    menu_Formas_pgto: TMenuItem;
    Movimento1: TMenuItem;
    Compras1: TMenuItem;
    Vendas1: TMenuItem;
    Vendas2: TMenuItem;
    ListaUsurios1: TMenuItem;
    ListaFornecedores1: TMenuItem;
    ListaClientes1: TMenuItem;
    ListaProdutos1: TMenuItem;
    ListaCompras1: TMenuItem;
    ListaCompras2: TMenuItem;
    Sobreosistema1: TMenuItem;
    procedure Timer1Timer(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure bt_UsuarioClick(Sender: TObject);
    procedure Abre_Tela_usuario();
    procedure Abre_Tela_empresa();
    procedure Abre_Tela_Cliente();
    procedure Abre_Tela_Fornecedor();
    procedure Abre_Tela_Produto();
    procedure Abre_Tela_Forma_pgto();
    procedure Abre_Tela_Compra();
    procedure SpeedButton2Click(Sender: TObject);
    procedure menu_EmpresaClick(Sender: TObject);
    procedure menu_UsuariosClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure menu_ClientesClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure menu_FornecedoresClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure menu_ProdutosClick(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure menu_Formas_pgtoClick(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure Compras1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Principal: TFrm_Principal;

implementation

{$R *.dfm}

uses U_usuario, U_EMPRESA, U_cliente, U_fornecedor, U_produto, U_Forma_pgto,
  U_compra1;

procedure TFrm_Principal.SpeedButton10Click(Sender: TObject);
begin

 if messagedlg('Deseja sair do sistema?',mtConfirmation,[mbOk,mbNo], 0)=mrOk then
 begin
   application.Terminate;
 end
      else
 abort;


close;
end;

procedure TFrm_Principal.SpeedButton2Click(Sender: TObject);
begin
Abre_Tela_empresa;
end;

procedure TFrm_Principal.SpeedButton3Click(Sender: TObject);
begin
    Abre_Tela_Cliente;
end;

procedure TFrm_Principal.SpeedButton4Click(Sender: TObject);
begin
Abre_Tela_Fornecedor;
end;

procedure TFrm_Principal.SpeedButton5Click(Sender: TObject);
begin
Abre_Tela_produto;
end;

procedure TFrm_Principal.SpeedButton6Click(Sender: TObject);
begin
 Abre_Tela_Forma_pgto;
end;

procedure TFrm_Principal.SpeedButton7Click(Sender: TObject);
begin
Abre_Tela_Compra;
end;

procedure TFrm_Principal.Abre_Tela_Cliente;
begin
Frm_cliente:=Tfrm_cliente.create(self);
Frm_cliente.showmodal;
try

finally
Frm_cliente.Free;
Frm_cliente:=nil;

end;
end;

procedure TFrm_Principal.Abre_Tela_Compra;
begin
 Frm_compra1:=TFrm_compra1.create(self);
 Frm_compra1.showmodal;
 try

 finally
 Frm_compra1.Free;
 Frm_compra1:=nil;

 end;
end;

procedure TFrm_Principal.Abre_Tela_empresa;
begin
Frm_empresa:=TFrm_empresa.create(self);
Frm_empresa.showmodal;
try

finally
Frm_empresa.Free;
Frm_empresa:=nil;

end;
end;

procedure TFrm_Principal.Abre_Tela_Forma_pgto;
begin
Frm_Forma_pgto:=TFrm_Forma_pgto.create(self);
Frm_Forma_pgto.showmodal;
try

finally
Frm_Forma_pgto.Free;
Frm_Forma_pgto:=nil;

end;
end;

procedure TFrm_Principal.Abre_Tela_Fornecedor;
begin
Frm_fornecedor:=TFrm_fornecedor.create(self);
Frm_fornecedor.showmodal;
try

finally
Frm_fornecedor.Free;
Frm_fornecedor:=nil;

end;
end;

procedure TFrm_Principal.Abre_Tela_Produto;
begin
Frm_produto:=TFrm_produto.create(self);
Frm_produto.showmodal;
try

finally
Frm_produto.Free;
Frm_produto:=nil;

end;
end;

procedure TFrm_Principal. Abre_Tela_usuario;
begin
frm_usuarios:=TFrm_usuarios.create(self);

Frm_usuarios.showmodal;

Try
finally

Frm_usuarios.Free;

Frm_usuarios:=nil;

end;
end;

procedure TFrm_Principal.bt_usuarioClick(Sender: TObject);
begin
Abre_Tela_Usuario;
end;

procedure TFrm_Principal.Compras1Click(Sender: TObject);
begin
Abre_Tela_Compra;
end;

procedure TFrm_Principal.menu_ClientesClick(Sender: TObject);
begin
Abre_Tela_cliente;
end;

procedure TFrm_Principal.menu_EmpresaClick(Sender: TObject);
begin
Abre_Tela_Empresa;
end;

procedure TFrm_Principal.menu_Formas_pgtoClick(Sender: TObject);
begin
Abre_Tela_Forma_pgto;
end;

procedure TFrm_Principal.menu_FornecedoresClick(Sender: TObject);
begin
Abre_Tela_Fornecedor;
end;

procedure TFrm_Principal.menu_ProdutosClick(Sender: TObject);
begin
Abre_Tela_produto;
end;

procedure TFrm_Principal.Timer1Timer(Sender: TObject);
begin
// insere dados na statusbar


StatusBar1.Panels[0].Text:=DateTostr(now);
StatusBar1.Panels[1].Text:=TimeTostr(now);
StatusBar1.Panels[2].Text:='SEJA BEM VINDO AO SISTEMA';
end;

procedure TFrm_Principal.menu_UsuariosClick(Sender: TObject);
begin
Abre_Tela_Usuario;
end;

end.