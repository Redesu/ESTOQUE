unit U_pesq_geral_mes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, frxClass, frxExportBaseDialog, frxExportPDF,
  frxDBSet, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrm_pesq_geral_mes = class(TForm)
    Panel1: TPanel;
    lb_inicio: TLabel;
    lb_fim: TLabel;
    mk_inicio: TMaskEdit;
    mk_fim: TMaskEdit;
    bt_Pesquisa: TBitBtn;
    bt_Imprimir: TBitBtn;
    RG_opcao: TRadioGroup;
    Q_compra: TFDQuery;
    Q_venda: TFDQuery;
    Q_conta_pagar: TFDQuery;
    Q_conta_receber: TFDQuery;
    Q_conta_pagar_a_pagar: TFDQuery;
    Q_conta_a_receber: TFDQuery;
    ds_compra: TDataSource;
    ds_venda: TDataSource;
    ds_conta_pagar: TDataSource;
    ds_conta_receber: TDataSource;
    ds_conta_pagar_a_pagar: TDataSource;
    ds_conta_a_receber: TDataSource;
    frxRelatorio_geral: TfrxReport;
    frxcompra: TfrxDBDataset;
    frxvenda: TfrxDBDataset;
    frxconta_pagar: TfrxDBDataset;
    frxconta_receber: TfrxDBDataset;
    frxconta_pagar_a_pagar: TfrxDBDataset;
    frxconta_a_receber: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    bt_sair: TBitBtn;
    Q_compraMES: TSmallintField;
    Q_compraANO: TSmallintField;
    Q_compraVALOR_COMPRA: TStringField;
    Q_vendaMES: TSmallintField;
    Q_vendaANO: TSmallintField;
    Q_vendaVALOR_VENDA: TStringField;
    Q_conta_pagarMES: TSmallintField;
    Q_conta_pagarANO: TSmallintField;
    Q_conta_pagarTOTAL_PAGO: TStringField;
    Q_conta_receberMES: TSmallintField;
    Q_conta_receberANO: TSmallintField;
    Q_conta_receberTOTAL_RECEBIDO: TStringField;
    Q_conta_pagar_a_pagarMES: TSmallintField;
    Q_conta_pagar_a_pagarANO: TSmallintField;
    Q_conta_pagar_a_pagarVALOR_A_PAGAR: TStringField;
    Q_conta_a_receberMES: TSmallintField;
    Q_conta_a_receberANO: TSmallintField;
    Q_conta_a_receberVALOR_A_RECEBER: TStringField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bt_sairClick(Sender: TObject);
    procedure bt_PesquisaClick(Sender: TObject);
    procedure bt_ImprimirClick(Sender: TObject);
    procedure RG_opcaoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_pesq_geral_mes: TFrm_pesq_geral_mes;

implementation

{$R *.dfm}

uses U_DM;

procedure TFrm_pesq_geral_mes.bt_ImprimirClick(Sender: TObject);
var
  caminho: string;

begin
  case RG_opcao.ItemIndex of
    0:
      begin

        caminho := ExtractFilePath(Application.ExeName);
        if Frm_pesq_geral_mes.frxRelatorio_geral.LoadFromFile
          (caminho + 'REL_COMPRA_VENDA_MES.fr3') then
        begin

          frxRelatorio_geral.Clear; // limpa relatorio
          frxRelatorio_geral.LoadFromFile(ExtractFilePath(Application.ExeName) +
            'REL_COMPRA_VENDA_MES.r3');
          frxRelatorio_geral.Variables['data_ini'] := QuotedStr(mk_inicio.Text);
          frxRelatorio_geral.Variables['data_fim'] := QuotedStr(mk_fim.Text);
          frxRelatorio_geral.Variables['usuario'] := dm.usuario;
          frxRelatorio_geral.PrepareReport(true);
          frxRelatorio_geral.ShowPreparedReport;

        end
        else
          Messagedlg('Relatorio n�o encontrado', mtError, [mbOk], 0);
      end;

    1:
      begin
        caminho := ExtractFilePath(Application.ExeName);
        if Frm_pesq_geral_mes.frxRelatorio_geral.LoadFromFile
          (caminho + 'REL_CONTAS_PAGA_RECEBIDAS_MES.fr3') then
        begin

          frxRelatorio_geral.Clear; // limpa relatorio
          frxRelatorio_geral.LoadFromFile(ExtractFilePath(Application.ExeName) +
            'REL_CONTAS_PAGA_RECEBIDAS_MES.fr3');
          frxRelatorio_geral.Variables['data_ini'] := QuotedStr(mk_inicio.Text);
          frxRelatorio_geral.Variables['data_fim'] := QuotedStr(mk_fim.Text);
          frxRelatorio_geral.Variables['usuario'] := dm.usuario;
          frxRelatorio_geral.PrepareReport(true);
          frxRelatorio_geral.ShowPreparedReport;

        end
        else
          Messagedlg('Relatorio n�o encontrado', mtError, [mbOk], 0);
      end;

    2:
      begin
        caminho := ExtractFilePath(Application.ExeName);
        if Frm_pesq_geral_mes.frxRelatorio_geral.LoadFromFile
          (caminho + 'REL_FALTA_PAGAR_FALTA_RECEBER.fr3') then
        begin

          frxRelatorio_geral.Clear; // limpa relatorio
          frxRelatorio_geral.LoadFromFile(ExtractFilePath(Application.ExeName) +
            'REL_FALTA_PAGAR_FALTA_RECEBER.fr3');
          frxRelatorio_geral.Variables['data_ini'] := QuotedStr(mk_inicio.Text);
          frxRelatorio_geral.Variables['data_fim'] := QuotedStr(mk_fim.Text);
          frxRelatorio_geral.Variables['usuario'] := dm.usuario;
          frxRelatorio_geral.PrepareReport(true);
          frxRelatorio_geral.ShowPreparedReport;

        end
        else
          Messagedlg('Relatorio n�o encontrado', mtError, [mbOk], 0);
      end;
  end;
end;

procedure TFrm_pesq_geral_mes.bt_PesquisaClick(Sender: TObject);

begin

  case RG_opcao.ItemIndex of
    0: // COMPRAS E VENDAS POR MES
      begin

        Q_compra.Close;
        Q_compra.SQL.add('');
        Q_compra.Params.Clear;
        Q_compra.SQL.Clear;
        Q_compra.SQL.add('SELECT EXTRACT(MONTH FROM A.CADASTRO) AS MES, ' +
          'EXTRACT(YEAR FROM A.CADASTRO) AS ANO, ' +
          'SUM(VALOR) AS VALOR_COMPRA ' + 'FROM COMPRA A ');

        Q_compra.SQL.add('WHERE A.CADASTRO BETWEEN :pdata_ini AND :pdata_fim');
        Q_compra.ParamByName('pdata_ini').AsDate := StrToDate(mk_inicio.Text);
        Q_compra.ParamByName('pdata_fim').AsDate := StrToDate(mk_fim.Text);
        Q_compra.SQL.add
          ('GROUP BY EXTRACT(MONTH FROM A.CADASTRO), EXTRACT(YEAR FROM A.CADASTRO)');
        Q_compra.SQL.add('ORDER BY EXTRACT(MONTH FROM A.CADASTRO)');
        Q_compra.Open;

        Q_venda.Close;
        Q_venda.SQL.add('');
        Q_venda.Params.Clear;
        Q_venda.SQL.Clear;
        Q_venda.SQL.add('SELECT EXTRACT(MONTH FROM A.CADASTRO) AS MES, ' +
          'EXTRACT(YEAR FROM A.CADASTRO) AS ANO, ' +
          'SUM(A.VALOR) AS VALOR_VENDA ' + 'FROM VENDAS A ');

        Q_venda.SQL.add('WHERE A.CADASTRO BETWEEN :pdata_ini AND :pdata_fim');
        Q_venda.ParamByName('pdata_ini').AsDate := StrToDate(mk_inicio.Text);
        Q_venda.ParamByName('pdata_fim').AsDate := StrToDate(mk_fim.Text);
        Q_venda.SQL.add
          ('GROUP BY EXTRACT(MONTH FROM A.CADASTRO), EXTRACT(YEAR FROM A.CADASTRO)');
        Q_venda.SQL.add('ORDER BY EXTRACT(MONTH FROM A.CADASTRO)');
        Q_venda.Open;
        bt_Imprimir.Click;

      end;

    1: // TOTAL PAGO E RECEBIDO POR MES
      BEGIN
        Q_conta_pagar.Close;
        Q_conta_pagar.SQL.add('');
        Q_conta_pagar.Params.Clear;
        Q_conta_pagar.SQL.Clear;
        Q_conta_pagar.SQL.add
          ('SELECT EXTRACT(MONTH FROM A.DT_PAGAMENTO) AS MES, ' +
          'EXTRACT(YEAR FROM A.DT_PAGAMENTO) AS ANO, ' +
          'SUM(TOTAL_PAGAR) AS VALOR_PAGO ' + 'FROM CONTAS_PAGAR A ');

        Q_conta_pagar.SQL.add
          ('WHERE A.DT_PAGAMENTO BETWEEN :pdata_ini AND :pdata_fim');
        Q_conta_pagar.ParamByName('pdata_ini').AsDate :=
          StrToDate(mk_inicio.Text);
        Q_conta_pagar.ParamByName('pdata_fim').AsDate := StrToDate(mk_fim.Text);
        Q_conta_pagar.SQL.add
          ('GROUP BY EXTRACT(MONTH FROM A.DT_PAGAMENTO), EXTRACT(YEAR FROM A.DT_PAGAMENTO)');
        Q_conta_pagar.SQL.add('ORDER BY EXTRACT(MONTH FROM A.DT_PAGAMENTO)');
        Q_conta_pagar.Open;

        Q_conta_receber.Close;
        Q_conta_receber.SQL.add('');
        Q_conta_receber.Params.Clear;
        Q_conta_receber.SQL.Clear;
        Q_conta_receber.SQL.add
          ('SELECT EXTRACT(MONTH FROM A.DT_PAGAMENTO) AS MES, ' +
          'EXTRACT(YEAR FROM A.DT_PAGAMENTO) AS ANO, ' +
          'SUM(A.TOTAL_PAGAR) AS VALOR_RECEBIDO' + 'FROM CONTAS_RECEBER A ');

        Q_conta_receber.SQL.add
          ('WHERE A.DT_PAGAMENTO BETWEEN :pdata_ini AND :pdata_fim');
        Q_conta_receber.ParamByName('pdata_ini').AsDate :=
          StrToDate(mk_inicio.Text);
        Q_conta_receber.ParamByName('pdata_fim').AsDate :=
          StrToDate(mk_fim.Text);
        Q_conta_receber.SQL.add
          ('GROUP BY EXTRACT(MONTH FROM A.DT_PAGAMENTO), EXTRACT(YEAR FROM A.DT_PAGAMENTO)');
        Q_conta_receber.SQL.add('ORDER BY EXTRACT(MONTH FROM A.DT_PAGAMENTO)');
        Q_conta_receber.Open;
        bt_Imprimir.Click;
      END;

    2: // TOTAL A PAGAR E A RECEBER POR MES
      BEGIN
        Q_conta_pagar_a_pagar.Close;
        Q_conta_pagar_a_pagar.SQL.add('');
        Q_conta_pagar_a_pagar.Params.Clear;
        Q_conta_pagar_a_pagar.SQL.Clear;
        Q_conta_pagar_a_pagar.SQL.add
          ('SELECT EXTRACT(MONTH FROM A.DT_VENCIMENTO) AS MES, ' +
          'EXTRACT(YEAR FROM A.CADASTRO) AS DT_VENCIMENTO, ' +
          'SUM(VALOR_PARCELA) AS VALOR_A_PAGAR' + 'FROM CONTAS_PAGAR A ');

        Q_conta_pagar_a_pagar.SQL.add
          ('WHERE A.DT_VENCIMENTO BETWEEN :pdata_ini AND :pdata_fim');
        Q_conta_a_receber.SQL.add('AND A.STATUS=''EM ABERTO''');
        Q_conta_pagar_a_pagar.ParamByName('pdata_ini').AsDate :=
          StrToDate(mk_inicio.Text);
        Q_conta_pagar_a_pagar.ParamByName('pdata_fim').AsDate :=
          StrToDate(mk_fim.Text);
        Q_conta_pagar_a_pagar.SQL.add
          ('GROUP BY EXTRACT(MONTH FROM A.DT_VENCIMENTO), EXTRACT(YEAR FROM A.DT_VENCIMENTO)');
        Q_conta_pagar_a_pagar.SQL.add
          ('ORDER BY EXTRACT(MONTH FROM A.DT_VENCIMENTO)');
        Q_conta_pagar_a_pagar.Open;

        Q_conta_a_receber.Close;
        Q_conta_a_receber.SQL.add('');
        Q_conta_a_receber.Params.Clear;
        Q_conta_a_receber.SQL.Clear;
        Q_conta_a_receber.SQL.add
          ('SELECT EXTRACT(MONTH FROM A.DT_VENCIMENTO) AS MES, ' +
          'EXTRACT(YEAR FROM A.DT_VENCIMENTO) AS ANO, ' +
          'SUM(VALOR_PARCELA) AS VALOR_A_RECEBER ' + 'FROM CONTAS_RECEBER A ');

        Q_conta_a_receber.SQL.add
          ('WHERE A.DT_VENCIMENTO BETWEEN :pdata_ini AND :pdata_fim');
        Q_conta_a_receber.SQL.add('AND A.STATUS=''EM ABERTO''');
        Q_conta_a_receber.ParamByName('pdata_ini').AsDate :=
          StrToDate(mk_inicio.Text);
        Q_conta_a_receber.ParamByName('pdata_fim').AsDate :=
          StrToDate(mk_fim.Text);
        Q_conta_a_receber.SQL.add
          ('GROUP BY EXTRACT(MONTH FROM A.DT_VENCIMENTO), EXTRACT(YEAR FROM A.DT_VENCIMENTO)');
        Q_conta_a_receber.SQL.add
          ('ORDER BY EXTRACT(MONTH FROM A.DT_VENCIMENTO)');
        Q_conta_a_receber.Open;
        bt_Imprimir.Click;
      END;

  end;

end;

procedure TFrm_pesq_geral_mes.bt_sairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_pesq_geral_mes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Q_compra.Close;
   Q_venda.Close;
   Q_conta_pagar.Close;
   Q_conta_receber.Close;
   Q_conta_pagar_a_pagar.Close;
   Q_conta_a_receber.close;
end;

procedure TFrm_pesq_geral_mes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(wm_nextDlgCtl, 0, 0);
  end;
end;

procedure TFrm_pesq_geral_mes.RG_opcaoClick(Sender: TObject);
begin
mk_inicio.SetFocus;
end;

end.
