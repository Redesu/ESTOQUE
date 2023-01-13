inherited Frm_venda: TFrm_venda
  Caption = 'CADASTRO DE VENDAS'
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited bt_pesquisar: TBitBtn
      OnClick = bt_pesquisarClick
    end
  end
  inherited Panel2: TPanel
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
    inherited bt_item: TBitBtn
      OnClick = bt_itemClick
    end
    inherited bt_ok: TBitBtn
      OnClick = bt_okClick
    end
    inherited bt_excluir: TBitBtn
      OnClick = bt_excluirClick
    end
  end
  inherited Panel3: TPanel
    Height = 104
    ExplicitHeight = 104
    object Label1: TLabel
      Left = 24
      Top = 3
      Width = 56
      Height = 13
      Caption = 'VENDA_ID'
      FocusControl = db_venda_id
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 24
      Top = 48
      Width = 64
      Height = 13
      Caption = 'CLIENTE_ID'
      FocusControl = db_cliente_id
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 164
      Top = 3
      Width = 61
      Height = 13
      Caption = 'CADASTRO'
      FocusControl = db_cadastro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 304
      Top = 3
      Width = 52
      Height = 13
      Caption = 'USUARIO'
      FocusControl = db_usuario
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 520
      Top = 3
      Width = 37
      Height = 13
      Caption = 'VALOR'
      FocusControl = db_valor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 164
      Top = 48
      Width = 44
      Height = 13
      Caption = 'CLIENTE'
      FocusControl = db_cliente
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object db_venda_id: TDBEdit
      Left = 24
      Top = 19
      Width = 134
      Height = 21
      DataField = 'VENDA_ID'
      DataSource = ds_padrao
      TabOrder = 0
    end
    object db_cliente_id: TDBEdit
      Left = 24
      Top = 70
      Width = 134
      Height = 21
      DataField = 'CLIENTE_ID'
      DataSource = ds_padrao
      TabOrder = 3
      OnExit = db_cliente_idExit
    end
    object db_cadastro: TDBEdit
      Left = 164
      Top = 19
      Width = 134
      Height = 21
      DataField = 'CADASTRO'
      DataSource = ds_padrao
      Enabled = False
      TabOrder = 5
    end
    object db_usuario: TDBEdit
      Left = 304
      Top = 19
      Width = 200
      Height = 21
      DataField = 'USUARIO'
      DataSource = ds_padrao
      Enabled = False
      TabOrder = 1
    end
    object db_valor: TDBEdit
      Left = 520
      Top = 19
      Width = 150
      Height = 21
      DataField = 'VALOR'
      DataSource = ds_padrao
      TabOrder = 2
    end
    object db_cliente: TDBEdit
      Left = 164
      Top = 70
      Width = 506
      Height = 21
      DataField = 'CLIENTE'
      DataSource = ds_padrao
      TabOrder = 4
    end
    object DBEdit1: TDBEdit
      Left = 520
      Top = 46
      Width = 150
      Height = 21
      DataField = 'SUBTOTAL'
      DataSource = ds_padrao_item
      TabOrder = 6
    end
    object bt_busca_cliente: TBitBtn
      Left = 676
      Top = 62
      Width = 40
      Height = 25
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E0E0E0E0
        E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E0E02020202020
        20E0E0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E0E02020200000000000
        00202020E0E0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E0E02020200000000000000000
        00000000202020E0E0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E0E02020200000000000000000000000
        00000000000000202020E0E0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFE0E0E02020200000000000000000000000000000
        00000000000000000000202020E0E0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFE0E0E02020200000000000000000000000000000000000
        00000000000000000000000000202020E0E0E0FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE0E0E02020200000000000000000000000000000000000000000
        00000000000000000000000000000000202020E0E0E0FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFE0E0E02020200000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000202020E0E0E0FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        E0E0E02020200000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000202020E0E0E0FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E0E0
        2020200000000000000000000000000000000000000000000000002020202020
        20000000000000000000000000000000000000000000000000202020E0E0E0FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E0E0202020
        000000000000000000000000000000000000000000000000202020E0E0E0E0E0
        E0202020000000000000000000000000000000000000000000000000202020E0
        E0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF404040000000
        000000000000000000000000000000000000000000202020E0E0E0FFFFFFFFFF
        FFE0E0E020202000000000000000000000000000000000000000000000000020
        2020E0E0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E0E0202020
        000000000000000000000000000000000000202020E0E0E0FFFFFFFFFFFFFFFF
        FFFFFFFFE0E0E020202000000000000000000000000000000000000000000000
        0000202020E0E0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E0E0
        202020000000000000000000000000202020E0E0E0FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFE0E0E020202000000000000000000000000000000000000000
        0000000000202020E0E0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        E0E0E0202020000000000000202020E0E0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFE0E0E020202000000000000000000000000000000000
        0000000000000000202020E0E0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFE0E0E0202020202020E0E0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFE0E0E020202000000000000000000000000000
        0000000000000000000000202020E0E0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE0E0E0E0E0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E0E020202000000000000000000000
        0000000000000000000000000000202020E0E0E0FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E0E020202000000000000000
        0000000000000000000000000000000000202020E0E0E0FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E0E020202000000000
        0000000000000000000000000000000000000000202020E0E0E0FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E0E020202000
        0000000000000000000000000000000000000000000000404040FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E0E020
        2020000000000000000000000000000000000000202020E0E0E0FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0
        E0E0202020000000000000000000000000202020E0E0E0FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE0E0E0202020000000000000202020E0E0E0FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFE0E0E0202020202020E0E0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFE0E0E0E0E0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      TabOrder = 7
      OnClick = bt_busca_clienteClick
    end
  end
  inherited Panel4: TPanel
    object Label10: TLabel
      Left = 32
      Top = 24
      Width = 74
      Height = 13
      Caption = 'PRODUTO_ID'
      FocusControl = db_produto_id
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 181
      Top = 24
      Width = 29
      Height = 13
      Caption = 'QTDE'
      FocusControl = db_qtde
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 264
      Top = 24
      Width = 56
      Height = 13
      Caption = 'VL_VENDA'
      FocusControl = db_vl_venda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 524
      Top = 24
      Width = 58
      Height = 13
      Caption = 'DESCONTO'
      FocusControl = db_desconto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 632
      Top = 24
      Width = 71
      Height = 13
      Caption = 'TOTAL_ITEM'
      FocusControl = db_total_item
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object db_produto_id: TDBEdit
      Left = 32
      Top = 40
      Width = 134
      Height = 21
      DataField = 'PRODUTO_ID'
      DataSource = ds_padrao_item
      TabOrder = 0
      OnExit = db_produto_idExit
    end
    object db_qtde: TDBEdit
      Left = 181
      Top = 40
      Width = 73
      Height = 21
      DataField = 'QTDE'
      DataSource = ds_padrao_item
      TabOrder = 1
      OnClick = db_qtdeClick
      OnExit = db_qtdeExit
    end
    object db_vl_venda: TDBEdit
      Left = 264
      Top = 40
      Width = 251
      Height = 21
      DataField = 'VL_VENDA'
      DataSource = ds_padrao_item
      TabOrder = 2
    end
    object db_desconto: TDBEdit
      Left = 524
      Top = 40
      Width = 100
      Height = 21
      DataField = 'DESCONTO'
      DataSource = ds_padrao_item
      TabOrder = 3
      OnClick = db_descontoClick
      OnExit = db_descontoExit
    end
    object db_total_item: TDBEdit
      Left = 632
      Top = 40
      Width = 180
      Height = 21
      DataField = 'TOTAL_ITEM'
      DataSource = ds_padrao_item
      TabOrder = 4
    end
  end
  inherited PageControl1: TPageControl
    Top = 177
    Height = 221
    ExplicitTop = 177
    ExplicitHeight = 221
    inherited Item_compra: TTabSheet
      ExplicitHeight = 193
      inherited DBGrid1: TDBGrid
        Height = 193
      end
    end
    inherited Contas_Pagar: TTabSheet
      Caption = 'Contas_Receber'
      ExplicitHeight = 193
      inherited DBGrid2: TDBGrid
        Height = 193
        DataSource = ds_conta_receber
        Columns = <
          item
            Expanded = False
            FieldName = 'SEQUENCIA_ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VENDA_ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_PARCELA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_VENCIMENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_PAGAMENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'JUROS'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTAL_PAGAR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VL_JUROS'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STATUS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ATRASO'
            Visible = True
          end>
      end
    end
  end
  inherited Q_padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_VENDA'
    UpdateOptions.AutoIncFields = 'VENDA_ID'
    SQL.Strings = (
      'SELECT '
      'VENDA_ID,'
      'CLIENTE_ID,'
      'ID_FORMA_PGTO,'
      'USUARIO,'
      'VALOR,'
      'CADASTRO,'
      'PARCELA,'
      'DINHEIRO,'
      'TROCO FROM VENDAS'
      'ORDER BY VENDA_ID')
    object Q_padraoVENDA_ID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'VENDA_ID'
      Origin = 'VENDA_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Q_padraoCLIENTE_ID: TIntegerField
      FieldName = 'CLIENTE_ID'
      Origin = 'CLIENTE_ID'
      Required = True
    end
    object Q_padraoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Required = True
      Size = 100
    end
    object Q_padraoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object Q_padraoCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIENTE'
      LookupDataSet = Q_cliente
      LookupKeyFields = 'CLIENTE_ID'
      LookupResultField = 'NOME'
      KeyFields = 'CLIENTE_ID'
      Size = 100
      Lookup = True
    end
    object Q_padraoDESCRICAO: TStringField
      FieldKind = fkLookup
      FieldName = 'DESCRICAO'
      LookupDataSet = Q_forma_pgto
      LookupKeyFields = 'ID_FORMA_PGTO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_FORMA_PGTO'
      Size = 100
      Lookup = True
    end
    object Q_padraoPARCELA: TIntegerField
      FieldName = 'PARCELA'
      Origin = 'PARCELA'
    end
    object Q_padraoDINHEIRO: TFMTBCDField
      FieldName = 'DINHEIRO'
      Origin = 'DINHEIRO'
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_padraoTROCO: TFMTBCDField
      FieldName = 'TROCO'
      Origin = 'TROCO'
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_padraoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
    end
  end
  inherited Q_padrao_item: TFDQuery
    Active = True
    IndexFieldNames = 'VENDA_ID'
    AggregatesActive = True
    MasterFields = 'VENDA_ID'
    DetailFields = 'VENDA_ID'
    Connection = DM.conexao
    SQL.Strings = (
      'SELECT '
      'SEQUENCIA_ID,'
      'VENDA_ID,'
      'PRODUTO_ID,'
      'QTDE,'
      'VL_VENDA,'
      'DESCONTO,'
      'TOTAL_ITEM FROM ITEM_VENDA'
      'WHERE VENDA_ID=:VENDA_ID'
      'ORDER BY SEQUENCIA_ID')
    ParamData = <
      item
        Name = 'VENDA_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 2
      end>
    object Q_padrao_itemSEQUENCIA_ID: TIntegerField
      FieldName = 'SEQUENCIA_ID'
      Origin = 'SEQUENCIA_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_padrao_itemVENDA_ID: TIntegerField
      FieldName = 'VENDA_ID'
      Origin = 'VENDA_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_padrao_itemPRODUTO_ID: TIntegerField
      FieldName = 'PRODUTO_ID'
      Origin = 'PRODUTO_ID'
      Required = True
    end
    object Q_padrao_itemQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Required = True
      OnValidate = Q_padrao_itemQTDEValidate
      Precision = 18
      Size = 2
    end
    object Q_padrao_itemVL_VENDA: TFMTBCDField
      FieldName = 'VL_VENDA'
      Origin = 'VL_VENDA'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_padrao_itemDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_padrao_itemTOTAL_ITEM: TFMTBCDField
      FieldName = 'TOTAL_ITEM'
      Origin = 'TOTAL_ITEM'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_padrao_itemSUBTOTAL: TAggregateField
      FieldName = 'SUBTOTAL'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(TOTAL_ITEM)'
    end
  end
  object Q_cliente: TFDQuery
    Active = True
    Connection = DM.conexao
    SQL.Strings = (
      'SELECT CLIENTE_ID,'
      'NOME FROM CLIENTE'
      'ORDER BY CLIENTE_ID')
    Left = 700
    Top = 97
    object Q_clienteCLIENTE_ID: TIntegerField
      FieldName = 'CLIENTE_ID'
      Origin = 'CLIENTE_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_clienteNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
  end
  object Q_forma_pgto: TFDQuery
    Active = True
    Connection = DM.conexao
    SQL.Strings = (
      'SELECT '
      'ID_FORMA_PGTO,'
      'DESCRICAO FROM FORMA_PGTO'
      'ORDER BY ID_FORMA_PGTO')
    Left = 688
    Top = 208
  end
  object ds_Cliente: TDataSource
    DataSet = Q_cliente
    Left = 692
    Top = 153
  end
  object ds_forma_pgto: TDataSource
    DataSet = Q_forma_pgto
    Left = 684
    Top = 265
  end
  object Q_produto: TFDQuery
    Connection = DM.conexao
    SQL.Strings = (
      'SELECT PRODUTO_ID,'
      'PRODUTO_DESCRICAO,'
      'ESTOQUE,'
      'ESTOQUE_MIN,'
      'VL_VENDA FROM PRODUTO'
      'ORDER BY PRODUTO_ID')
    Left = 684
    Top = 321
    object Q_produtoPRODUTO_ID: TIntegerField
      FieldName = 'PRODUTO_ID'
      Origin = 'PRODUTO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_produtoPRODUTO_DESCRICAO: TStringField
      FieldName = 'PRODUTO_DESCRICAO'
      Origin = 'PRODUTO_DESCRICAO'
      Required = True
      Size = 100
    end
    object Q_produtoESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Required = True
      Precision = 18
      Size = 2
    end
    object Q_produtoESTOQUE_MIN: TFMTBCDField
      FieldName = 'ESTOQUE_MIN'
      Origin = 'ESTOQUE_MIN'
      Required = True
      Precision = 18
      Size = 2
    end
    object Q_produtoVL_VENDA: TFMTBCDField
      FieldName = 'VL_VENDA'
      Origin = 'VL_VENDA'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object ds_produto: TDataSource
    DataSet = Q_produto
    Left = 684
    Top = 377
  end
  object Q_conta_receber: TFDQuery
    IndexFieldNames = 'VENDA_ID'
    MasterSource = ds_padrao
    MasterFields = 'VENDA_ID'
    DetailFields = 'VENDA_ID'
    Connection = DM.conexao
    SQL.Strings = (
      'SELECT '
      'SEQUENCIA_ID,'
      'VENDA_ID,'
      'VALOR_PARCELA,'
      'ATRASO,'
      'DT_VENCIMENTO,'
      'DT_PAGAMENTO,'
      'JUROS,'
      'TOTAL_PAGAR,'
      'VL_JUROS,'
      'STATUS FROM CONTAS_RECEBER'
      'WHERE VENDA_ID =:VENDA_ID'
      'ORDER BY SEQUENCIA_ID')
    Left = 612
    Top = 273
    ParamData = <
      item
        Name = 'VENDA_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 2
      end>
    object Q_conta_receberSEQUENCIA_ID: TIntegerField
      FieldName = 'SEQUENCIA_ID'
      Origin = 'SEQUENCIA_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_conta_receberVENDA_ID: TIntegerField
      FieldName = 'VENDA_ID'
      Origin = 'VENDA_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_conta_receberVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      Origin = 'VALOR_PARCELA'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_conta_receberDT_VENCIMENTO: TDateField
      FieldName = 'DT_VENCIMENTO'
      Origin = 'DT_VENCIMENTO'
      Required = True
    end
    object Q_conta_receberDT_PAGAMENTO: TDateField
      FieldName = 'DT_PAGAMENTO'
      Origin = 'DT_PAGAMENTO'
    end
    object Q_conta_receberJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Origin = 'JUROS'
      Precision = 18
      Size = 2
    end
    object Q_conta_receberTOTAL_PAGAR: TFMTBCDField
      FieldName = 'TOTAL_PAGAR'
      Origin = 'TOTAL_PAGAR'
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_conta_receberVL_JUROS: TFMTBCDField
      FieldName = 'VL_JUROS'
      Origin = 'VL_JUROS'
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_conta_receberSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 30
    end
    object Q_conta_receberATRASO: TIntegerField
      FieldName = 'ATRASO'
      Origin = 'ATRASO'
    end
  end
  object ds_conta_receber: TDataSource
    DataSet = Q_conta_receber
    Left = 612
    Top = 329
  end
end
