inherited Frm_produto: TFrm_produto
  Caption = 'CADASTRO DE PRODUTOS'
  ClientHeight = 402
  OnClose = FormClose
  ExplicitHeight = 431
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 96
    Top = 136
    Width = 125
    Height = 13
    Caption = 'PRODUTO_DESCRICAO'
    FocusControl = DB_descricao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel [1]
    Left = 147
    Top = 232
    Width = 92
    Height = 13
    Caption = 'FORNECEDOR_ID'
    FocusControl = db_id_fornecedor
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel [2]
    Left = 96
    Top = 184
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
  object Label5: TLabel [3]
    Left = 252
    Top = 184
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
  object Label6: TLabel [4]
    Left = 408
    Top = 184
    Width = 50
    Height = 13
    Caption = 'ESTOQUE'
    FocusControl = db_vl_estoque
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel [5]
    Left = 564
    Top = 184
    Width = 79
    Height = 13
    Caption = 'ESTOQUE_MIN'
    FocusControl = db_estoque_min
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel [6]
    Left = 96
    Top = 232
    Width = 50
    Height = 13
    Caption = 'UNIDADE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel [7]
    Left = 252
    Top = 93
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
  object Label10: TLabel [8]
    Left = 287
    Top = 232
    Width = 31
    Height = 13
    Caption = 'NOME'
    FocusControl = db_nome
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel [9]
    Left = 96
    Top = 93
    Width = 74
    Height = 13
    Caption = 'PRODUTO_ID'
    FocusControl = db_id_produto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited Panel1: TPanel
    TabOrder = 8
    inherited bt_pesquisar: TBitBtn
      OnClick = bt_pesquisarClick
    end
  end
  inherited Panel2: TPanel
    Top = 349
    TabOrder = 9
    ExplicitTop = 349
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object DB_descricao: TDBEdit [12]
    Left = 96
    Top = 152
    Width = 600
    Height = 21
    CharCase = ecUpperCase
    DataField = 'PRODUTO_DESCRICAO'
    DataSource = ds_padrao
    TabOrder = 0
  end
  object db_id_fornecedor: TDBEdit [13]
    Left = 147
    Top = 248
    Width = 134
    Height = 21
    DataField = 'FORNECEDOR_ID'
    DataSource = ds_padrao
    TabOrder = 6
  end
  object db_vl_custo: TDBEdit [14]
    Left = 96
    Top = 200
    Width = 150
    Height = 21
    DataField = 'VL_CUSTO'
    DataSource = ds_padrao
    TabOrder = 1
  end
  object db_vl_venda: TDBEdit [15]
    Left = 252
    Top = 200
    Width = 150
    Height = 21
    DataField = 'VL_VENDA'
    DataSource = ds_padrao
    TabOrder = 2
  end
  object db_vl_estoque: TDBEdit [16]
    Left = 408
    Top = 200
    Width = 150
    Height = 21
    DataField = 'ESTOQUE'
    DataSource = ds_padrao
    TabOrder = 3
  end
  object db_estoque_min: TDBEdit [17]
    Left = 564
    Top = 200
    Width = 132
    Height = 21
    DataField = 'ESTOQUE_MIN'
    DataSource = ds_padrao
    TabOrder = 4
  end
  object DB_cadastro: TDBEdit [18]
    Left = 252
    Top = 112
    Width = 134
    Height = 21
    DataField = 'CADASTRO'
    DataSource = ds_padrao
    Enabled = False
    TabOrder = 10
  end
  object db_nome: TDBEdit [19]
    Left = 287
    Top = 248
    Width = 409
    Height = 21
    DataField = 'NOME'
    DataSource = ds_padrao
    TabOrder = 7
  end
  object dbc_unidade: TDBComboBox [20]
    Left = 96
    Top = 248
    Width = 45
    Height = 21
    DataField = 'UNIDADE'
    DataSource = ds_padrao
    Items.Strings = (
      'UN'
      'KG'
      'ML'
      'PCT'
      'P'#199
      'TON'
      'LT'
      'M'
      'M'#179
      'G')
    TabOrder = 5
  end
  object db_id_produto: TDBEdit [21]
    Left = 96
    Top = 112
    Width = 134
    Height = 21
    DataField = 'PRODUTO_ID'
    DataSource = ds_padrao
    TabOrder = 11
  end
  inherited Q_padrao: TFDQuery
    SQL.Strings = (
      'SELECT '
      'A.PRODUTO_ID,'
      'A.PRODUTO_DESCRICAO,'
      'A.FORNECEDOR_ID,'
      'A.VL_CUSTO,'
      'A.VL_VENDA,'
      'A.ESTOQUE,'
      'A.ESTOQUE_MIN,'
      'A.UNIDADE,'
      'A.CADASTRO,'
      'B.NOME FROM PRODUTO A, FORNECEDOR B'
      'WHERE A.FORNECEDOR_ID=B.FORNECEDOR_ID')
    object Q_padraoPRODUTO_ID: TIntegerField
      FieldName = 'PRODUTO_ID'
      Origin = 'PRODUTO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_padraoPRODUTO_DESCRICAO: TStringField
      FieldName = 'PRODUTO_DESCRICAO'
      Origin = 'PRODUTO_DESCRICAO'
      Required = True
      Size = 100
    end
    object Q_padraoFORNECEDOR_ID: TIntegerField
      FieldName = 'FORNECEDOR_ID'
      Origin = 'FORNECEDOR_ID'
      Required = True
    end
    object Q_padraoVL_CUSTO: TFMTBCDField
      FieldName = 'VL_CUSTO'
      Origin = 'VL_CUSTO'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_padraoVL_VENDA: TFMTBCDField
      FieldName = 'VL_VENDA'
      Origin = 'VL_VENDA'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_padraoESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Required = True
      Precision = 18
      Size = 2
    end
    object Q_padraoESTOQUE_MIN: TFMTBCDField
      FieldName = 'ESTOQUE_MIN'
      Origin = 'ESTOQUE_MIN'
      Required = True
      Precision = 18
      Size = 2
    end
    object Q_padraoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 6
    end
    object Q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object Q_padraoNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
end
