unit U_recebimento_venda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Buttons, dateUtils;

type
  TFrm_recebimento_venda = class(TForm)
    Panel1: TPanel;
    RG_forma_pgto: TRadioGroup;
    Label3: TLabel;
    db_forma_pgto: TDBEdit;
    db_descricao: TDBEdit;
    Label9: TLabel;
    db_parcela: TDBEdit;
    db_valor: TDBEdit;
    Label6: TLabel;
    db_valor_pago: TDBEdit;
    db_troco: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    bt_ok: TBitBtn;
    procedure RG_forma_pgtoClick(Sender: TObject);
    procedure db_valor_pagoExit(Sender: TObject);
    procedure bt_okClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_recebimento_venda: TFrm_recebimento_venda;

implementation

{$R *.dfm}

uses U_venda;

procedure TFrm_recebimento_venda.bt_okClick(Sender: TObject);
var
  parcela: integer;
  diferenca, soma: Real;

begin

  // Insere o contas a receber
  Frm_venda.Q_padrao.Refresh;
  Frm_venda.Q_conta_receber.Open;
  parcela := 1;

  // a vista ou cartao de debito
  if (Frm_venda.Q_padraoID_FORMA_PGTO.Value = 1) or
    (Frm_venda.Q_padraoID_FORMA_PGTO.Value = 3) then
  begin

    while parcela <= Frm_venda.Q_padraoPARCELA.AsInteger do
    begin

      // Abre para inser??o
      Frm_venda.Q_conta_receber.Insert;
      Frm_venda.Q_conta_receberSEQUENCIA_ID.AsInteger := 1;

      // Recebe a divis?o total por Cond_pgto
      Frm_venda.Q_conta_receber.FieldByName('VALOR_PARCELA').AsFloat :=
        Frm_venda.Q_padraoVALOR.AsFloat;

      // Insere data de vencimento e Pgto
      Frm_venda.Q_conta_receberDT_VENCIMENTO.AsDateTime :=
        incMonth(Frm_venda.Q_padraoCADASTRO.AsDateTime, parcela);
      Frm_venda.Q_conta_receber.FieldByName('DT_PAGAMENTO').Value := Date;

      // Zera juros e atraso
      Frm_venda.Q_conta_receber.FieldByName('ATRASO').AsFloat := 0;
      Frm_venda.Q_conta_receber.FieldByName('JUROS').AsFloat := 0;
      Frm_venda.Q_conta_receber.FieldByName('VL_JUROS').AsFloat := 0;

      // Total a pagar recebe o valor da parcela
      Frm_venda.Q_conta_receber.FieldByName('TOTAL_PAGAR').AsFloat :=
        Frm_venda.Q_conta_receber.FieldByName('VALOR_PARCELA').AsFloat;
      Frm_venda.Q_conta_receber.FieldByName('STATUS').AsString := 'RECEBIDO';

      // Grava na tabela
      Frm_venda.Q_conta_receber.Post;
      Messagedlg('Parcelas geradas com sucesso!', mtinformation, [mbok], 0);
      Frm_venda.bt_imprimir.Click;
      Frm_recebimento_venda.Close;
      abort;

    end;

  end // cartao de credito
  else if (Frm_venda.Q_padraoID_FORMA_PGTO.Value = 2) then
  begin
    Frm_venda.Q_conta_receber.First;
    while parcela <= Frm_venda.Q_padraoPARCELA.AsInteger do
    begin

      // Abre para inser??o
      Frm_venda.Q_conta_receber.Insert;
      Frm_venda.Q_conta_receberSEQUENCIA_ID.AsInteger := parcela;

      // Recebe a divis?o total por Cond_pgto
      Frm_venda.Q_conta_receber.FieldByName('VALOR_PARCELA').AsFloat :=
        Frm_venda.Q_padraoVALOR.AsFloat / Frm_venda.Q_padraoPARCELA.Value;

      // Insere data de vencimento
      Frm_venda.Q_conta_receberDT_VENCIMENTO.AsDateTime :=
        incMonth(Frm_venda.Q_padraoCADASTRO.AsDateTime, parcela);
      Frm_venda.Q_conta_receber.FieldByName('DT_PAGAMENTO').Value := Date + 1;

      // Zera juros e atraso
      Frm_venda.Q_conta_receber.FieldByName('ATRASO').AsFloat := 0;
      Frm_venda.Q_conta_receber.FieldByName('JUROS').AsFloat := 0;
      Frm_venda.Q_conta_receber.FieldByName('VL_JUROS').AsFloat := 0;

      // Total a pagar recebe o valor da parcela
      Frm_venda.Q_conta_receber.FieldByName('TOTAL_PAGAR').AsFloat :=
        Frm_venda.Q_conta_receber.FieldByName('VALOR_PARCELA').AsFloat;
      Frm_venda.Q_conta_receber.FieldByName('STATUS').AsString := 'RECEBIDO';

      // Grava na tabela
      Frm_venda.Q_conta_receber.Post;

      // Auto incrementa a parcela
      inc(parcela);
      Frm_venda.Q_conta_receber.Next;

    end;
    Messagedlg('Parcelas geradas com sucesso!', mtinformation, [mbok], 0);
    Frm_venda.bt_imprimir.Click;
    Frm_recebimento_venda.Close;
    abort;
  end
  else
    // cheque
    Frm_venda.Q_conta_receber.First;
  while parcela <= Frm_venda.Q_padraoPARCELA.AsInteger do
  begin
    // Abre para inser??o
    Frm_venda.Q_conta_receber.Insert;
    Frm_venda.Q_conta_receberSEQUENCIA_ID.AsInteger := parcela;
    // Recebe a divis?o total por Cond_pgto
    Frm_venda.Q_conta_receber.FieldByName('VALOR_PARCELA').AsFloat :=
      Frm_venda.Q_padraoVALOR.AsFloat / Frm_venda.Q_padraoPARCELA.Value;
    // Insere data de vencimento

    Frm_venda.Q_conta_receberDT_VENCIMENTO.AsDateTime :=
      incMonth(Frm_venda.Q_padraoCADASTRO.AsDateTime, parcela);

    // Zera juros e atraso
    Frm_venda.Q_conta_receber.FieldByName('ATRASO').AsFloat := 0;
    Frm_venda.Q_conta_receber.FieldByName('JUROS').AsFloat := 0;
    Frm_venda.Q_conta_receber.FieldByName('VL_JUROS').AsFloat := 0;
    // Total a pagar recebe o valor da parcela
    Frm_venda.Q_conta_receber.FieldByName('TOTAL_PAGAR').AsFloat :=
      Frm_venda.Q_conta_receber.FieldByName('VALOR_PARCELA').AsFloat;
    Frm_venda.Q_conta_receber.FieldByName('STATUS').AsString := 'EM ABERTO';
    // Grava na tabela
    Frm_venda.Q_conta_receber.Post;
    // Auto incrementa a parcela
    inc(parcela);
    Frm_venda.Q_conta_receber.Next;

  end;
  // CRIA O PROCEDIMENTO PARA TRATAR DIFEREN?A DE PARCELAS

  soma := soma + Frm_venda.Q_padraoPARCELA.Value *
    Frm_venda.Q_conta_receber.FieldByName('VALOR_PARCELA').AsFloat;

  if soma > Frm_venda.Q_padraoVALOR.AsFloat then
  begin
    diferenca := soma - Frm_venda.Q_padraoVALOR.AsFloat;
    Frm_venda.Q_conta_receber.Last;
    Frm_venda.Q_conta_receber.Edit;
    Frm_venda.Q_conta_receber.FieldByName('VALOR_PARCELA').AsFloat :=
      Frm_venda.Q_conta_receber.FieldByName('VALOR_PARCELA').AsFloat -
      diferenca;
    Frm_venda.Q_conta_receber.Refresh;
  end;

  Messagedlg('Parcelas geradas com sucesso!', mtinformation, [mbok], 0);
  Frm_venda.bt_imprimir.Click;
  Frm_recebimento_venda.Close;
  abort;
end;

procedure TFrm_recebimento_venda.db_valor_pagoExit(Sender: TObject);
begin
  // volta troco
  Frm_venda.Q_padraoTROCO.AsFloat := Frm_venda.Q_padraoDINHEIRO.AsFloat -
    Frm_venda.Q_padraoVALOR.AsFloat;

end;

procedure TFrm_recebimento_venda.FormKeyPress(Sender: TObject; var Key: Char);
begin
  // Faz a fun??o do tab

  if Key = #13 then
  begin
    Key := #0;
    Perform(wm_nextDlgCtl, 0, 0);
  end;

end;

procedure TFrm_recebimento_venda.RG_forma_pgtoClick(Sender: TObject);
begin
  Frm_venda.Q_padrao.Edit;
  case RG_forma_pgto.ItemIndex of
    0: // a vista
      begin
        Frm_venda.Q_padraoID_FORMA_PGTO.AsInteger := 1;
        Frm_venda.Q_padraoPARCELA.AsInteger := 1;
        db_valor_pago.SetFocus;
      end;

    1:
      begin
        Frm_venda.Q_padraoID_FORMA_PGTO.AsInteger := 2;
        db_parcela.SetFocus;
        Frm_venda.Q_padraoDINHEIRO.AsFloat := Frm_venda.Q_padraoVALOR.AsFloat;
        Frm_venda.Q_padraoTROCO.AsFloat := 0;

      end;

    2: // cartao de debito
      begin
        Frm_venda.Q_padraoID_FORMA_PGTO.AsInteger := 3;
        Frm_venda.Q_padraoPARCELA.AsInteger := 1;
        Frm_venda.Q_padraoDINHEIRO.AsFloat := Frm_venda.Q_padraoVALOR.AsFloat;
        Frm_venda.Q_padraoTROCO.AsFloat := 0;
      end;

    3: // nota promissoria
      begin
        Frm_venda.Q_padraoID_FORMA_PGTO.AsInteger := 4;
        db_parcela.SetFocus;
        Frm_venda.Q_padraoDINHEIRO.AsFloat := 0;
        Frm_venda.Q_padraoTROCO.AsFloat := 0;
      end;

  end;
end;

end.
