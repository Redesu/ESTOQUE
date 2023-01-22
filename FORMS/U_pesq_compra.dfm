inherited Frm_pesq_compra: TFrm_pesq_compra
  Caption = 'PESQUISA COMPRAS'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited bt_Pesquisa: TBitBtn
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
    Items.Strings = (
      'C'#211'DIGO DA COMPRA'
      'USU'#193'RIO'
      'C'#211'DIGO DO FORNECEDOR'
      'C'#211'DIGO DA FORMA PGTO'
      'CADASTRO'
      'PERIODO'
      'TODOS')
  end
  inherited DBGrid1: TDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'COMPRA_ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FORNECEDOR_ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 400
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_FORMA_PGTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USUARIO'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CADASTRO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Visible = True
      end>
  end
  inherited Panel2: TPanel
    object lb_valor_compra: TLabel
      Left = 367
      Top = 32
      Width = 49
      Height = 19
      Caption = 'Total:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
  end
  inherited DBNavigator1: TDBNavigator
    Hints.Strings = ()
  end
  inherited Q_pesq_padrao: TFDQuery
    SQL.Strings = (
      'SELECT '
      'A.COMPRA_ID,'
      'A.FORNECEDOR_ID,'
      'B.NOME,'
      'A.ID_FORMA_PGTO,'
      'C.DESCRICAO,'
      'A.USUARIO,'
      'A.CADASTRO,'
      'A.VALOR'
      'FROM COMPRA A, FORNECEDOR B, FORMA_PGTO C '
      'WHERE A.FORNECEDOR_ID=B.FORNECEDOR_ID '
      'AND A.ID_FORMA_PGTO=C.ID_FORMA_PGTO'
      'ORDER BY A.COMPRA_ID')
    object Q_pesq_padraoCOMPRA_ID: TIntegerField
      FieldName = 'COMPRA_ID'
      Origin = 'COMPRA_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_pesq_padraoFORNECEDOR_ID: TIntegerField
      FieldName = 'FORNECEDOR_ID'
      Origin = 'FORNECEDOR_ID'
      Required = True
    end
    object Q_pesq_padraoNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object Q_pesq_padraoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      Required = True
    end
    object Q_pesq_padraoDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object Q_pesq_padraoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Required = True
      Size = 100
    end
    object Q_pesq_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object Q_pesq_padraoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  inherited frxReport1: TfrxReport
    ReportOptions.CreateDate = 44914.724794120400000000
    ReportOptions.LastChange = 44929.717290115700000000
    Datasets = <
      item
        DataSet = frxDB_padrao
        DataSetName = 'frxDBDataset1'
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
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 83.149660000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 56.692950000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO DE COMPRAS')
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
        Top = 207.874150000000000000
        Width = 718.110700000000000000
        DataSet = frxDB_padrao
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1COMPRA_ID: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'COMPRA_ID'
          DataSet = frxDB_padrao
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."COMPRA_ID"]')
          ParentFont = False
        end
        object frxDBDataset1NOME: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 79.370130000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = frxDB_padrao
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."NOME"]')
          ParentFont = False
        end
        object frxDBDataset1VALOR: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 162.519790000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR'
          DataSet = frxDB_padrao
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."VALOR"]')
          ParentFont = False
        end
        object frxDBDataset1CADASTRO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 631.181510000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'CADASTRO'
          DataSet = frxDB_padrao
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."CADASTRO"]')
          ParentFont = False
        end
        object frxDBDataset1USUARIO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 313.700990000000000000
          Width = 317.480520000000000000
          Height = 18.897650000000000000
          DataField = 'USUARIO'
          DataSet = frxDB_padrao
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."USUARIO"]')
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
        Height = 22.677180000000000000
        Top = 124.724490000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = -37.795300000000000000
          Top = 3.779530000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CODIGO')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 68.031540000000000000
          Top = 3.779530000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'FORNECEDOR')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 188.976500000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 424.291590000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'USUARIO')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 631.181510000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DATA')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 18.897650000000000000
        ParentFont = False
        Top = 287.244280000000000000
        Width = 718.110700000000000000
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'TOTAL DE COMPRAS:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 162.519790000000000000
          Width = 555.590910000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."VALOR">,MasterData1,2)]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 328.819110000000000000
        Width = 718.110700000000000000
        object Date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 476.220780000000000000
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
          Left = 559.370440000000000000
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
          Left = 638.740570000000000000
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
end
