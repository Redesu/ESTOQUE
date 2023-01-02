inherited Frm_compra1: TFrm_compra1
  Caption = 'CADASTRO DE COMPRAS'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Height = 67
    ExplicitHeight = 67
    inherited bt_pesquisar: TBitBtn
      OnClick = bt_pesquisarClick
    end
  end
  inherited Panel2: TPanel
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
    inherited bt_item: TBitBtn
      OnClick = BitBtn1Click
    end
    inherited bt_ok: TBitBtn
      OnClick = bt_okClick
    end
    inherited bt_excluir: TBitBtn
      OnClick = bt_excluirClick
    end
  end
  inherited Panel3: TPanel
    Top = 67
    Height = 120
    ExplicitTop = 67
    ExplicitHeight = 120
    object Label1: TLabel
      Left = 8
      Top = 6
      Width = 68
      Height = 13
      Caption = 'COMPRA_ID'
      FocusControl = DB_id_compra
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 46
      Width = 92
      Height = 13
      Caption = 'FORNECEDOR_ID'
      FocusControl = DB_fornecedor_id
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 83
      Width = 97
      Height = 13
      Caption = 'ID_FORMA_PGTO'
      FocusControl = DB_id_forma_pgto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 162
      Top = 6
      Width = 61
      Height = 13
      Caption = 'CADASTRO'
      FocusControl = DB_cadastro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 302
      Top = 6
      Width = 52
      Height = 13
      Caption = 'USUARIO'
      FocusControl = DB_usuario
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 558
      Top = 6
      Width = 37
      Height = 13
      Caption = 'VALOR'
      FocusControl = DB_valor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 162
      Top = 46
      Width = 31
      Height = 13
      Caption = 'NOME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 162
      Top = 83
      Width = 64
      Height = 13
      Caption = 'DESCRICAO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DB_id_compra: TDBEdit
      Left = 8
      Top = 22
      Width = 134
      Height = 21
      DataField = 'COMPRA_ID'
      DataSource = ds_padrao
      TabOrder = 0
    end
    object DB_fornecedor_id: TDBEdit
      Left = 8
      Top = 61
      Width = 134
      Height = 21
      DataField = 'FORNECEDOR_ID'
      DataSource = ds_padrao
      TabOrder = 4
    end
    object DB_id_forma_pgto: TDBEdit
      Left = 8
      Top = 97
      Width = 134
      Height = 21
      DataField = 'ID_FORMA_PGTO'
      DataSource = ds_padrao
      TabOrder = 5
    end
    object DB_cadastro: TDBEdit
      Left = 162
      Top = 22
      Width = 134
      Height = 21
      DataField = 'CADASTRO'
      DataSource = ds_padrao
      Enabled = False
      TabOrder = 1
    end
    object DB_usuario: TDBEdit
      Left = 302
      Top = 22
      Width = 250
      Height = 21
      CharCase = ecUpperCase
      DataField = 'USUARIO'
      DataSource = ds_padrao
      TabOrder = 2
    end
    object DB_valor: TDBEdit
      Left = 558
      Top = 22
      Width = 200
      Height = 21
      DataField = 'VALOR'
      DataSource = ds_padrao
      TabOrder = 3
    end
    object DB_nome: TDBLookupComboBox
      Left = 162
      Top = 61
      Width = 213
      Height = 21
      DataField = 'NOME'
      DataSource = ds_padrao
      TabOrder = 6
    end
    object DB_descricao: TDBLookupComboBox
      Left = 162
      Top = 97
      Width = 213
      Height = 21
      DataField = 'DESCRICAO'
      DataSource = ds_padrao
      TabOrder = 7
    end
    object DBEdit2: TDBEdit
      Left = 558
      Top = 46
      Width = 200
      Height = 21
      DataField = 'SUBTOTAL'
      DataSource = ds_padrao_item
      TabOrder = 8
    end
  end
  inherited Panel4: TPanel
    object Label9: TLabel
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
    object Label10: TLabel
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
    object Label11: TLabel
      Left = 264
      Top = 24
      Width = 57
      Height = 13
      Caption = 'VL_CUSTO'
      FocusControl = db_vl_custo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
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
    object Label13: TLabel
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
    end
    object db_vl_custo: TDBEdit
      Left = 264
      Top = 40
      Width = 251
      Height = 21
      DataField = 'VL_CUSTO'
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
  inherited DBGrid1: TDBGrid
    Top = 187
    Height = 211
    DataSource = ds_padrao_item
    Columns = <
      item
        Expanded = False
        FieldName = 'SEQUENCIA_ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMPRA_ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODUTO_ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Width = 319
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCONTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_CUSTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL_ITEM'
        Visible = True
      end>
  end
  inherited Q_padrao: TFDQuery
    Active = True
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_COMPRA'
    UpdateOptions.AutoIncFields = 'COMPRA_ID'
    SQL.Strings = (
      'SELECT '
      'COMPRA_ID,'
      'FORNECEDOR_ID,'
      'ID_FORMA_PGTO,'
      'USUARIO,'
      'VALOR,'
      'CADASTRO'
      'FROM COMPRA'
      'ORDER BY COMPRA_ID')
    object Q_padraoCOMPRA_ID: TFDAutoIncField
      FieldName = 'COMPRA_ID'
      Origin = 'COMPRA_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Q_padraoFORNECEDOR_ID: TIntegerField
      FieldName = 'FORNECEDOR_ID'
      Origin = 'FORNECEDOR_ID'
      Required = True
    end
    object Q_padraoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
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
    object Q_padraoNOME: TStringField
      FieldKind = fkLookup
      FieldName = 'NOME'
      LookupDataSet = Q_fornecedor
      LookupKeyFields = 'FORNECEDOR_ID'
      LookupResultField = 'NOME'
      KeyFields = 'FORNECEDOR_ID'
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
      Size = 60
      Lookup = True
    end
  end
  inherited Q_padrao_item: TFDQuery
    Active = True
    IndexFieldNames = 'COMPRA_ID'
    AggregatesActive = True
    MasterFields = 'COMPRA_ID'
    DetailFields = 'COMPRA_ID'
    Connection = DM.conexao
    SQL.Strings = (
      'SELECT '
      'SEQUENCIA_ID,'
      'COMPRA_ID,'
      'PRODUTO_ID,'
      'QTDE,'
      'DESCONTO, '
      'VL_CUSTO,'
      'TOTAL_ITEM FROM ITEM_COMPRA'
      'WHERE COMPRA_ID=:COMPRA_ID')
    ParamData = <
      item
        Name = 'COMPRA_ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Value = 1
      end>
    object Q_padrao_itemSEQUENCIA_ID: TIntegerField
      FieldName = 'SEQUENCIA_ID'
      Origin = 'SEQUENCIA_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_padrao_itemCOMPRA_ID: TIntegerField
      FieldName = 'COMPRA_ID'
      Origin = 'COMPRA_ID'
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
    object Q_padrao_itemVL_CUSTO: TFMTBCDField
      FieldName = 'VL_CUSTO'
      Origin = 'VL_CUSTO'
      Required = True
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
    object Q_padrao_itemDESCRICAO: TStringField
      FieldKind = fkLookup
      FieldName = 'DESCRICAO'
      LookupDataSet = Q_produto
      LookupKeyFields = 'PRODUTO_ID'
      LookupResultField = 'PRODUTO_DESCRICAO'
      KeyFields = 'PRODUTO_ID'
      Size = 100
      Lookup = True
    end
    object Q_padrao_itemSUBTOTAL: TAggregateField
      FieldName = 'SUBTOTAL'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(TOTAL_ITEM)'
    end
  end
  object Q_fornecedor: TFDQuery
    Active = True
    Connection = DM.conexao
    SQL.Strings = (
      
        'SELECT FORNECEDOR_ID, NOME FROM FORNECEDOR ORDER BY FORNECEDOR_I' +
        'D')
    Left = 568
    Top = 144
    object Q_fornecedorFORNECEDOR_ID: TIntegerField
      FieldName = 'FORNECEDOR_ID'
      Origin = 'FORNECEDOR_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_fornecedorNOME: TStringField
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
      
        'SELECT ID_FORMA_PGTO, DESCRICAO FROM FORMA_PGTO ORDER BY ID_FORM' +
        'A_PGTO')
    Left = 640
    Top = 147
    object Q_forma_pgtoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_forma_pgtoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
  end
  object ds_fornecedor: TDataSource
    DataSet = Q_fornecedor
    Left = 568
    Top = 224
  end
  object ds_forma_pgto: TDataSource
    DataSet = Q_forma_pgto
    Left = 648
    Top = 224
  end
  object Q_produto: TFDQuery
    Active = True
    Connection = DM.conexao
    SQL.Strings = (
      'SELECT PRODUTO_ID,'
      'PRODUTO_DESCRICAO,'
      'ESTOQUE,'
      'ESTOQUE_MIN,'
      'VL_CUSTO FROM PRODUTO'
      'ORDER BY PRODUTO_ID')
    Left = 640
    Top = 296
  end
end
