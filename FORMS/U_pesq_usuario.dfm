inherited Frm_pesq_usuario: TFrm_pesq_usuario
  Caption = 'PESQUISA USUARIOS'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    TabOrder = 1
    inherited mk_inicio: TMaskEdit
      Width = 116
      EditMask = '!99/99/0000;1;_'
      Text = '  /  /    '
      ExplicitWidth = 116
    end
    inherited mk_fim: TMaskEdit
      Width = 116
      EditMask = '!99/99/0000;1;_'
      TabOrder = 3
      Text = '  /  /    '
      ExplicitWidth = 116
    end
    inherited bt_Pesquisa: TBitBtn
      TabOrder = 2
      OnClick = bt_PesquisaClick
    end
    inherited bt_transferir: TBitBtn
      OnClick = bt_transferirClick
    end
    inherited bt_Imprimir: TBitBtn
      OnClick = bt_ImprimirClick
    end
  end
  inherited cb_chave_pesquisa: TComboBox
    TabOrder = 0
  end
  inherited DBGrid1: TDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'USER_ID'
        Title.Caption = 'C'#243'dico do usu'#225'rio'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAME'
        Title.Caption = 'Nome'
        Width = 290
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TYPE'
        Title.Caption = 'Tipo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SIGNIN'
        Title.Caption = 'Data de cadastro'
        Visible = True
      end>
  end
  inherited Q_pesq_padrao: TFDQuery
    Active = True
    SQL.Strings = (
      'SELECT '
      'USER_ID,'
      'NAME,'
      'TYPE,'
      'SIGNIN'
      ' FROM USUARIO'
      'ORDER BY USER_ID')
    object Q_pesq_padraoUSER_ID: TIntegerField
      FieldName = 'USER_ID'
      Origin = 'USER_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_pesq_padraoNAME: TStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 100
    end
    object Q_pesq_padraoTYPE: TStringField
      FieldName = 'TYPE'
      Origin = '"TYPE"'
      Required = True
      Size = 30
    end
    object Q_pesq_padraoSIGNIN: TDateField
      FieldName = 'SIGNIN'
      Origin = 'SIGNIN'
      Required = True
    end
  end
  inherited frxDB_padrao: TfrxDBDataset
    UserName = 'frxDB_padrao'
    DataSet = nil
    DataSource = ds_pesq_padrao
  end
  inherited frxReport1: TfrxReport
    ReportOptions.CreateDate = 44914.725783298600000000
    ReportOptions.LastChange = 44914.759146400500000000
    Left = 912
    Top = 312
    Datasets = <
      item
        DataSet = frxDB_padrao
        DataSetName = 'frxDB_padrao'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 20.000000000000000000
      RightMargin = 20.000000000000000000
      TopMargin = 20.000000000000000000
      BottomMargin = 20.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 120.944960000000000000
        Top = 18.897650000000000000
        Width = 642.520100000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 154.960730000000000000
          Top = 52.913420000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO USU'#193'RIOS DO SISTEMA')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 162.519790000000000000
        Width = 642.520100000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'NOME')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 336.378170000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'TIPO')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CADASTRO')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 257.008040000000000000
        Width = 642.520100000000000000
        DataSet = frxDB_padrao
        DataSetName = 'frxDB_padrao'
        RowCount = 0
        object frxDB_padraoUSER_ID: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'USER_ID'
          DataSet = frxDB_padrao
          DataSetName = 'frxDB_padrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB_padrao."USER_ID"]')
          ParentFont = False
        end
        object frxDB_padraoTYPE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 351.496290000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DataField = 'TYPE'
          DataSet = frxDB_padrao
          DataSetName = 'frxDB_padrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDB_padrao."TYPE"]')
          ParentFont = False
        end
        object frxDB_padraoNAME: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 83.149660000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          DataField = 'NAME'
          DataSet = frxDB_padrao
          DataSetName = 'frxDB_padrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDB_padrao."NAME"]')
          ParentFont = False
        end
        object frxDB_padraoSIGNIN: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 514.016080000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'SIGNIN'
          DataSet = frxDB_padrao
          DataSetName = 'frxDB_padrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDB_padrao."SIGNIN"]')
          ParentFont = False
        end
      end
      object Date: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 385.512060000000000000
        Top = 948.662030000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Date]')
        ParentFont = False
      end
      object Time: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 464.882190000000000000
        Top = 948.662030000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Time]')
        ParentFont = False
      end
      object Page: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 544.252320000000000000
        Top = 948.662030000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Page]')
        ParentFont = False
      end
    end
  end
end
