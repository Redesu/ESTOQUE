program Controle_estoque;

uses
  Vcl.Forms,
  U_Principal in '..\FORMS\U_Principal.pas' {Frm_Principal},
  U_DM in '..\FORMS\U_DM.pas' {DM: TDataModule},
  U_padrao in '..\FORMS\U_padrao.pas' {Frm_padrao},
  U_usuario in '..\FORMS\U_usuario.pas' {Frm_usuarios},
  U_EMPRESA in '..\FORMS\U_EMPRESA.pas' {Frm_empresa},
  U_cliente in '..\FORMS\U_cliente.pas' {Frm_Cliente},
  U_fornecedor in '..\FORMS\U_fornecedor.pas' {Frm_fornecedor},
  U_produto in '..\FORMS\U_produto.pas' {Frm_produto},
  U_Forma_pgto in '..\FORMS\U_Forma_pgto.pas' {Frm_Forma_pgto},
  U_Form_pesquisa_padrao in '..\FORMS\U_Form_pesquisa_padrao.pas' {Frm_pesquisa_padrao},
  U_pesq_usuario in '..\FORMS\U_pesq_usuario.pas' {Frm_pesq_usuario},
  U_pesq_cliente in '..\FORMS\U_pesq_cliente.pas' {Frm_pesq_Cliente},
  U_pesq_fornecedor in '..\FORMS\U_pesq_fornecedor.pas' {Frm_pesq_fornecedor},
  U_pesq_produto in '..\FORMS\U_pesq_produto.pas' {Frm_pesq_produto},
  U_movimento_padrao in '..\FORMS\U_movimento_padrao.pas' {Frm_padrao_movimento},
  U_compra1 in '..\FORMS\U_compra1.pas' {Frm_compra1},
  U_pesq_compra in '..\FORMS\U_pesq_compra.pas' {Frm_pesq_compra},
  U_ABOUT in '..\FORMS\U_ABOUT.pas' {Frm_AboutBox},
  U_login in '..\FORMS\U_login.pas' {Frm_login},
  U_troca_senha in '..\FORMS\U_troca_senha.pas' {Frm_troca_senha},
  U_venda in '..\FORMS\U_venda.pas' {Frm_venda},
  U_pesq_venda in '..\FORMS\U_pesq_venda.pas' {Frm_pesq_venda};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrm_login, Frm_login);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
