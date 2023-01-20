inherited Frm_Contas_pagar: TFrm_Contas_pagar
  Caption = 'PAGAMENTO DE CONTAS'
  ClientHeight = 461
  ClientWidth = 795
  OnClose = FormClose
  ExplicitWidth = 801
  ExplicitHeight = 490
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 32
    Top = 96
    Width = 68
    Height = 13
    Caption = 'COMPRA_ID'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel [1]
    Left = 32
    Top = 160
    Width = 92
    Height = 13
    Caption = 'FORNECEDOR_ID'
    FocusControl = DBEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel [2]
    Left = 172
    Top = 160
    Width = 31
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel [3]
    Left = 538
    Top = 160
    Width = 27
    Height = 13
    Caption = 'CNPJ'
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel [4]
    Left = 32
    Top = 216
    Width = 82
    Height = 13
    Caption = 'SEQUENCIA_ID'
    FocusControl = DBEdit5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel [5]
    Left = 172
    Top = 216
    Width = 94
    Height = 13
    Caption = 'VALOR_PARCELA'
    FocusControl = DBEdit6
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel [6]
    Left = 278
    Top = 216
    Width = 92
    Height = 13
    Caption = 'DT_VENCIMENTO'
    FocusControl = DBEdit7
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel [7]
    Left = 418
    Top = 216
    Width = 91
    Height = 13
    Caption = 'DT_PAGAMENTO'
    FocusControl = DBEdit8
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel [8]
    Left = 538
    Top = 216
    Width = 46
    Height = 13
    Caption = 'ATRASO'
    FocusControl = DBEdit9
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel [9]
    Left = 32
    Top = 264
    Width = 37
    Height = 13
    Caption = 'JUROS'
    FocusControl = DBEdit10
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel [10]
    Left = 172
    Top = 264
    Width = 57
    Height = 13
    Caption = 'VL_JUROS'
    FocusControl = DBEdit11
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel [11]
    Left = 278
    Top = 264
    Width = 82
    Height = 13
    Caption = 'TOTAL_PAGAR'
    FocusControl = DBEdit12
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label13: TLabel [12]
    Left = 538
    Top = 264
    Width = 44
    Height = 13
    Caption = 'STATUS'
    FocusControl = DBEdit13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited Panel1: TPanel
    Width = 795
    ExplicitWidth = 795
    inherited bt_novo: TBitBtn
      Visible = False
    end
    inherited bt_pesquisar: TBitBtn
      OnClick = bt_pesquisarClick
    end
  end
  inherited Panel2: TPanel
    Top = 408
    Width = 795
    ExplicitTop = 408
    ExplicitWidth = 795
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object DBEdit1: TDBEdit [15]
    Left = 32
    Top = 112
    Width = 134
    Height = 21
    DataField = 'COMPRA_ID'
    DataSource = ds_padrao
    TabOrder = 2
  end
  object DBEdit2: TDBEdit [16]
    Left = 32
    Top = 176
    Width = 134
    Height = 21
    DataField = 'FORNECEDOR_ID'
    DataSource = ds_padrao
    TabOrder = 3
  end
  object DBEdit3: TDBEdit [17]
    Left = 172
    Top = 176
    Width = 357
    Height = 21
    DataField = 'NOME'
    DataSource = ds_padrao
    TabOrder = 4
  end
  object DBEdit4: TDBEdit [18]
    Left = 538
    Top = 176
    Width = 150
    Height = 21
    DataField = 'CNPJ'
    DataSource = ds_padrao
    TabOrder = 5
  end
  object DBEdit5: TDBEdit [19]
    Left = 32
    Top = 232
    Width = 134
    Height = 21
    DataField = 'SEQUENCIA_ID'
    DataSource = ds_pagar
    TabOrder = 6
  end
  object DBEdit6: TDBEdit [20]
    Left = 172
    Top = 232
    Width = 100
    Height = 21
    DataField = 'VALOR_PARCELA'
    DataSource = ds_pagar
    TabOrder = 7
  end
  object DBEdit7: TDBEdit [21]
    Left = 278
    Top = 232
    Width = 134
    Height = 21
    DataField = 'DT_VENCIMENTO'
    DataSource = ds_pagar
    TabOrder = 8
  end
  object DBEdit8: TDBEdit [22]
    Left = 418
    Top = 232
    Width = 111
    Height = 21
    DataField = 'DT_PAGAMENTO'
    DataSource = ds_pagar
    TabOrder = 9
    OnExit = DBEdit8Exit
  end
  object DBEdit9: TDBEdit [23]
    Left = 538
    Top = 232
    Width = 150
    Height = 21
    DataField = 'ATRASO'
    DataSource = ds_pagar
    TabOrder = 10
  end
  object DBEdit10: TDBEdit [24]
    Left = 32
    Top = 283
    Width = 134
    Height = 21
    DataField = 'JUROS'
    DataSource = ds_pagar
    TabOrder = 11
    OnExit = DBEdit10Exit
  end
  object DBEdit11: TDBEdit [25]
    Left = 172
    Top = 280
    Width = 100
    Height = 21
    DataField = 'VL_JUROS'
    DataSource = ds_pagar
    TabOrder = 12
  end
  object DBEdit12: TDBEdit [26]
    Left = 278
    Top = 280
    Width = 251
    Height = 21
    DataField = 'TOTAL_PAGAR'
    DataSource = ds_pagar
    TabOrder = 13
  end
  object DBEdit13: TDBEdit [27]
    Left = 538
    Top = 280
    Width = 150
    Height = 21
    DataField = 'STATUS'
    DataSource = ds_pagar
    TabOrder = 14
  end
  inherited Q_padrao: TFDQuery
    SQL.Strings = (
      'SELECT '
      'A.COMPRA_ID,'
      'A.FORNECEDOR_ID,'
      'B.NOME,'
      'B.CNPJ'
      'FROM COMPRA A'
      'INNER JOIN FORNECEDOR B ON B.FORNECEDOR_ID = A.FORNECEDOR_ID'
      'ORDER BY A.COMPRA_ID')
    object Q_padraoCOMPRA_ID: TIntegerField
      FieldName = 'COMPRA_ID'
      Origin = 'COMPRA_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_padraoFORNECEDOR_ID: TIntegerField
      FieldName = 'FORNECEDOR_ID'
      Origin = 'FORNECEDOR_ID'
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
    object Q_padraoCNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object Q_pagar: TFDQuery
    IndexFieldNames = 'COMPRA_ID'
    MasterSource = ds_padrao
    MasterFields = 'COMPRA_ID'
    DetailFields = 'COMPRA_ID'
    Connection = DM.conexao
    SQL.Strings = (
      'SELECT SEQUENCIA_ID,'
      'COMPRA_ID,'
      'VALOR_PARCELA,'
      'DT_VENCIMENTO,'
      'DT_PAGAMENTO,'
      'ATRASO,'
      'JUROS,'
      'VL_JUROS,'
      'TOTAL_PAGAR,'
      'STATUS FROM CONTAS_PAGAR'
      'WHERE COMPRA_ID=:COMPRA_ID'
      'ORDER BY COMPRA_ID')
    Left = 744
    Top = 200
    ParamData = <
      item
        Name = 'COMPRA_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object Q_pagarSEQUENCIA_ID: TIntegerField
      FieldName = 'SEQUENCIA_ID'
      Origin = 'SEQUENCIA_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_pagarCOMPRA_ID: TIntegerField
      FieldName = 'COMPRA_ID'
      Origin = 'COMPRA_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_pagarVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      Origin = 'VALOR_PARCELA'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_pagarDT_VENCIMENTO: TDateField
      FieldName = 'DT_VENCIMENTO'
      Origin = 'DT_VENCIMENTO'
      Required = True
    end
    object Q_pagarDT_PAGAMENTO: TDateField
      FieldName = 'DT_PAGAMENTO'
      Origin = 'DT_PAGAMENTO'
    end
    object Q_pagarATRASO: TIntegerField
      FieldName = 'ATRASO'
      Origin = 'ATRASO'
    end
    object Q_pagarJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Origin = 'JUROS'
      Precision = 18
      Size = 2
    end
    object Q_pagarVL_JUROS: TFMTBCDField
      FieldName = 'VL_JUROS'
      Origin = 'VL_JUROS'
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_pagarTOTAL_PAGAR: TFMTBCDField
      FieldName = 'TOTAL_PAGAR'
      Origin = 'TOTAL_PAGAR'
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_pagarSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 30
    end
  end
  object ds_pagar: TDataSource
    DataSet = Q_pagar
    Left = 744
    Top = 256
  end
end
