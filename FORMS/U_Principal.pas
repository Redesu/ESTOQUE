unit U_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.Menus;

type
  TFrm_Principal = class(TForm)
    Panel1: TPanel;
    bt_usuario: TSpeedButton;
    bt_empresa: TSpeedButton;
    bt_clientes: TSpeedButton;
    bt_fornecedores: TSpeedButton;
    bt_produtos: TSpeedButton;
    bt_forma_pgto: TSpeedButton;
    bt_compras: TSpeedButton;
    bt_vendas: TSpeedButton;
    bt_troca_usuario: TSpeedButton;
    bt_fechar: TSpeedButton;
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
    ListaUsurios: TMenuItem;
    ListaFornecedores: TMenuItem;
    ListaClientes: TMenuItem;
    ListaProdutos: TMenuItem;
    ListaCompras: TMenuItem;
    ListaVendas: TMenuItem;
    Sobreosistema1: TMenuItem;
    Sobre: TMenuItem;
    Fechar1: TMenuItem;
    procedure Timer1Timer(Sender: TObject);
    procedure bt_fecharClick(Sender: TObject);
    procedure bt_UsuarioClick(Sender: TObject);
    procedure Abre_Tela_usuario();
    procedure Abre_Tela_empresa();
    procedure Abre_Tela_Cliente();
    procedure Abre_Tela_Fornecedor();
    procedure Abre_Tela_Produto();
    procedure Abre_Tela_Forma_pgto();
    procedure Abre_Tela_Compra();
    procedure Abre_Tela_Venda();
    procedure bt_empresaClick(Sender: TObject);
    procedure menu_EmpresaClick(Sender: TObject);
    procedure menu_UsuariosClick(Sender: TObject);
    procedure bt_clientesClick(Sender: TObject);
    procedure menu_ClientesClick(Sender: TObject);
    procedure bt_fornecedoresClick(Sender: TObject);
    procedure menu_FornecedoresClick(Sender: TObject);
    procedure bt_produtosClick(Sender: TObject);
    procedure menu_ProdutosClick(Sender: TObject);
    procedure bt_forma_pgtoClick(Sender: TObject);
    procedure menu_Formas_pgtoClick(Sender: TObject);
    procedure bt_comprasClick(Sender: TObject);
    procedure Compras1Click(Sender: TObject);
    procedure ListaUsuriosClick(Sender: TObject);
    procedure ListaFornecedoresClick(Sender: TObject);
    procedure ListaClientesClick(Sender: TObject);
    procedure ListaProdutosClick(Sender: TObject);
    procedure ListaComprasClick(Sender: TObject);
    procedure SobreClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_troca_usuarioClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bt_vendasClick(Sender: TObject);
    procedure Vendas1Click(Sender: TObject);
    procedure ListaVendasClick(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);

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
  U_compra1, U_pesq_usuario, U_pesq_fornecedor, U_pesq_cliente, U_pesq_produto,
  U_pesq_compra, U_ABOUT, U_DM, U_login, U_venda, U_pesq_venda;

procedure TFrm_Principal.SobreClick(Sender: TObject);
begin
  Frm_AboutBox:=TFrm_AboutBox.Create(self);
  Frm_AboutBox.ShowModal;
  try

  finally
  Frm_AboutBox.Free;
  Frm_AboutBox:=nil;

  end;
end;

procedure TFrm_Principal.bt_fecharClick(Sender: TObject);
begin

  if messagedlg('Deseja sair do sistema?', mtConfirmation, [mbOk, mbNo], 0) = mrOk
  then
  begin
    application.Terminate;
  end
  else
    abort;

  close;
end;

procedure TFrm_Principal.bt_empresaClick(Sender: TObject);
begin
  Abre_Tela_empresa;
end;

procedure TFrm_Principal.bt_clientesClick(Sender: TObject);
begin
  Abre_Tela_Cliente;
end;

procedure TFrm_Principal.bt_fornecedoresClick(Sender: TObject);
begin
  Abre_Tela_Fornecedor;
end;

procedure TFrm_Principal.bt_produtosClick(Sender: TObject);
begin
  Abre_Tela_Produto;
end;

procedure TFrm_Principal.bt_forma_pgtoClick(Sender: TObject);
begin
  Abre_Tela_Forma_pgto;
end;

procedure TFrm_Principal.bt_comprasClick(Sender: TObject);
begin
  Abre_Tela_Compra;
end;

procedure TFrm_Principal.bt_troca_usuarioClick(Sender: TObject);
begin
    Frm_principal.Hide;
    Frm_login.ed_usuario.Clear;
    Frm_login.ed_senha.Clear;
    Frm_login.Show;
end;

procedure TFrm_Principal.Abre_Tela_Cliente;
begin
  Frm_cliente := Tfrm_cliente.create(self);
  Frm_cliente.showmodal;
  try

  finally
    Frm_cliente.Free;
    Frm_cliente := nil;

  end;
end;

procedure TFrm_Principal.Abre_Tela_Compra;
begin
  Frm_compra1 := TFrm_compra1.create(self);
  Frm_compra1.showmodal;
  try

  finally
    Frm_compra1.Free;
    Frm_compra1 := nil;

  end;
end;

procedure TFrm_Principal.Abre_Tela_empresa;
begin
  Frm_empresa := TFrm_empresa.create(self);
  Frm_empresa.showmodal;
  try

  finally
    Frm_empresa.Free;
    Frm_empresa := nil;

  end;
end;

procedure TFrm_Principal.Abre_Tela_Forma_pgto;
begin
  Frm_Forma_pgto := TFrm_Forma_pgto.create(self);
  Frm_Forma_pgto.showmodal;
  try

  finally
    Frm_Forma_pgto.Free;
    Frm_Forma_pgto := nil;

  end;
end;

procedure TFrm_Principal.Abre_Tela_Fornecedor;
begin
  Frm_fornecedor := TFrm_fornecedor.create(self);
  Frm_fornecedor.showmodal;
  try

  finally
    Frm_fornecedor.Free;
    Frm_fornecedor := nil;

  end;
end;

procedure TFrm_Principal.Abre_Tela_Produto;
begin
  Frm_produto := TFrm_produto.create(self);
  Frm_produto.showmodal;
  try

  finally
    Frm_produto.Free;
    Frm_produto := nil;

  end;
end;

procedure TFrm_Principal.Abre_Tela_usuario;
begin
  frm_usuarios := TFrm_usuarios.create(self);

  frm_usuarios.showmodal;

  Try
  finally

    frm_usuarios.Free;

    frm_usuarios := nil;

  end;
end;

procedure TFrm_Principal.Abre_Tela_Venda;
begin
 Frm_venda:=TFrm_venda.Create(self);
 Frm_venda.ShowModal;
 try

 finally
 Frm_venda.Free;
 Frm_venda:=nil;

 end;
end;

procedure TFrm_Principal.bt_UsuarioClick(Sender: TObject);
begin
  Abre_Tela_usuario;
end;

procedure TFrm_Principal.bt_vendasClick(Sender: TObject);
begin
Abre_Tela_Venda;
end;

procedure TFrm_Principal.Compras1Click(Sender: TObject);
begin
  Abre_Tela_Compra;
end;

procedure TFrm_Principal.Fechar1Click(Sender: TObject);
begin
bt_fechar.Click;
end;

procedure TFrm_Principal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Application.Terminate;
end;

procedure TFrm_Principal.FormShow(Sender: TObject);
begin
     if dm.tipo_usuario='APOIO' then
     begin
       bt_empresa.Enabled:=false;
       bt_usuario.Enabled:=false;
       menu_usuarios.enabled:=false;
       menu_empresa.Enabled:=false;
       ListaUsurios.Enabled:=false;
     end;
end;

procedure TFrm_Principal.ListaClientesClick(Sender: TObject);
begin
  Frm_pesq_Cliente := TFrm_pesq_Cliente.create(self);
  Frm_pesq_Cliente.showmodal;
  try

  finally
    Frm_pesq_Cliente.Free;
    Frm_pesq_Cliente := nil;

  end;
end;

procedure TFrm_Principal.ListaComprasClick(Sender: TObject);
begin
  Frm_pesq_compra := TFrm_pesq_compra.create(self);
  Frm_pesq_compra.showmodal;
  try

  finally
    Frm_pesq_compra.Free;
    Frm_pesq_compra := nil;

  end;
end;

procedure TFrm_Principal.ListaFornecedoresClick(Sender: TObject);
begin
  Frm_pesq_fornecedor := TFrm_pesq_fornecedor.create(self);
  Frm_pesq_fornecedor.showmodal;
  try

  finally
    Frm_pesq_fornecedor.Free;
    Frm_pesq_fornecedor := nil;

  end;
end;

procedure TFrm_Principal.ListaProdutosClick(Sender: TObject);
begin
  Frm_pesq_produto := TFrm_pesq_produto.create(self);
  Frm_pesq_produto.showmodal;
  try

  finally
    Frm_pesq_produto.Free;
    Frm_pesq_produto := nil;

  end;
end;

procedure TFrm_Principal.ListaUsuriosClick(Sender: TObject);
begin
  Frm_pesq_usuario := TFrm_pesq_usuario.create(self);
  Frm_pesq_usuario.showmodal;
  try

  finally
    Frm_pesq_usuario.Free;
    Frm_pesq_usuario := nil;

  end;
end;

procedure TFrm_Principal.ListaVendasClick(Sender: TObject);
begin
Frm_pesq_venda:=TFrm_pesq_venda.Create(self);
Frm_pesq_venda.ShowModal;
try

finally
Frm_pesq_venda.Free;
Frm_pesq_usuario :=nil;

end;
end;

procedure TFrm_Principal.menu_ClientesClick(Sender: TObject);
begin
  Abre_Tela_Cliente;
end;

procedure TFrm_Principal.menu_EmpresaClick(Sender: TObject);
begin
  Abre_Tela_empresa;
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
  Abre_Tela_Produto;
end;

procedure TFrm_Principal.Timer1Timer(Sender: TObject);
begin
  // insere dados na statusbar

  StatusBar1.Panels[0].Text := DateTostr(now);
  StatusBar1.Panels[1].Text := TimeTostr(now);
  StatusBar1.Panels[2].Text := 'SEJA BEM VINDO AO SISTEMA ' + dm.usuario + '!';
  StatusBar1.Panels[3].Text := 'Tipo de usu�rio: ' + dm.tipo_usuario;
end;

procedure TFrm_Principal.Vendas1Click(Sender: TObject);
begin
       Abre_Tela_Venda;
end;

procedure TFrm_Principal.menu_UsuariosClick(Sender: TObject);
begin
  Abre_Tela_usuario;
end;

end.
