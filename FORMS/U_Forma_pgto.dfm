inherited Frm_Forma_pgto: TFrm_Forma_pgto
  Caption = 'CADASTRO DE FORMA DE PGTO'
  ClientHeight = 369
  ExplicitHeight = 398
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 120
    Top = 144
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
  object Label2: TLabel [1]
    Left = 120
    Top = 184
    Width = 64
    Height = 13
    Caption = 'DESCRICAO'
    FocusControl = DB_descricao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel [2]
    Left = 260
    Top = 144
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
  inherited Panel1: TPanel
    TabOrder = 3
    inherited bt_pesquisar: TBitBtn
      OnClick = bt_pesquisarClick
    end
  end
  inherited Panel2: TPanel
    Top = 316
    TabOrder = 4
    ExplicitTop = 316
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object DB_id_forma_pgto: TDBEdit [5]
    Left = 120
    Top = 160
    Width = 134
    Height = 21
    DataField = 'ID_FORMA_PGTO'
    DataSource = ds_padrao
    TabOrder = 0
  end
  object DB_descricao: TDBEdit [6]
    Left = 120
    Top = 200
    Width = 497
    Height = 21
    DataField = 'DESCRICAO'
    DataSource = ds_padrao
    TabOrder = 1
  end
  object DB_cadastro: TDBEdit [7]
    Left = 260
    Top = 160
    Width = 134
    Height = 21
    DataField = 'CADASTRO'
    DataSource = ds_padrao
    Enabled = False
    TabOrder = 2
  end
  inherited Q_padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_FORMA_PGTO'
    UpdateOptions.AutoIncFields = 'ID_FORMA_PGTO'
    SQL.Strings = (
      'SELECT '
      'ID_FORMA_PGTO,'
      'DESCRICAO,'
      'CADASTRO FROM FORMA_PGTO'
      'ORDER BY ID_FORMA_PGTO')
    object Q_padraoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object Q_padraoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object Q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
end
