inherited Frm_pesq_parcela_receber: TFrm_pesq_parcela_receber
  Caption = 'FORMUL'#193'RIO PARA RECEBIMENTO DE CONTAS / PARCELAS'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited lb_inicio: TLabel
      Visible = False
    end
    inherited lb_fim: TLabel
      Visible = False
    end
    inherited mk_inicio: TMaskEdit
      Visible = False
    end
    inherited mk_fim: TMaskEdit
      Visible = False
    end
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
    OnClick = cb_chave_pesquisaClick
    Items.Strings = (
      'C'#211'DIGO DO CLIENTE'
      'NOME'
      'CPF'
      'TODOS')
  end
  inherited DBGrid1: TDBGrid
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'VENDA_ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIENTE_ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SEQUENCIA_ID'
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
        FieldName = 'ATRASO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JUROS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_JUROS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL_PAGAR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUS'
        Visible = True
      end>
  end
  inherited DBNavigator1: TDBNavigator
    Hints.Strings = ()
  end
  inherited Q_pesq_padrao: TFDQuery
    SQL.Strings = (
      'SELECT '
      'A.VENDA_ID,'
      'A.CLIENTE_ID,'
      'B.NOME,'
      'B.CPF,'
      'C.SEQUENCIA_ID,'
      'C.VALOR_PARCELA,'
      'C.DT_VENCIMENTO,'
      'C.DT_PAGAMENTO,'
      'C.ATRASO,'
      'C.JUROS,'
      'C.VL_JUROS,'
      'C.TOTAL_PAGAR,'
      'C.STATUS '
      'FROM VENDAS A'
      'INNER JOIN CLIENTE B ON B.CLIENTE_ID = A.CLIENTE_ID'
      'INNER JOIN CONTAS_RECEBER C ON C.VENDA_ID = A.VENDA_ID'
      'ORDER BY A.VENDA_ID')
    object Q_pesq_padraoVENDA_ID: TIntegerField
      FieldName = 'VENDA_ID'
      Origin = 'VENDA_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_pesq_padraoCLIENTE_ID: TIntegerField
      FieldName = 'CLIENTE_ID'
      Origin = 'CLIENTE_ID'
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
    object Q_pesq_padraoCPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPF'
      Origin = 'CPF'
      ProviderFlags = []
      ReadOnly = True
      Size = 16
    end
    object Q_pesq_padraoSEQUENCIA_ID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'SEQUENCIA_ID'
      Origin = 'SEQUENCIA_ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q_pesq_padraoVALOR_PARCELA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_PARCELA'
      Origin = 'VALOR_PARCELA'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_pesq_padraoDT_VENCIMENTO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DT_VENCIMENTO'
      Origin = 'DT_VENCIMENTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q_pesq_padraoDT_PAGAMENTO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DT_PAGAMENTO'
      Origin = 'DT_PAGAMENTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q_pesq_padraoATRASO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ATRASO'
      Origin = 'ATRASO'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q_pesq_padraoJUROS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'JUROS'
      Origin = 'JUROS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object Q_pesq_padraoVL_JUROS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VL_JUROS'
      Origin = 'VL_JUROS'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_pesq_padraoTOTAL_PAGAR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_PAGAR'
      Origin = 'TOTAL_PAGAR'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_pesq_padraoSTATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS'
      Origin = 'STATUS'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
  end
  inherited frxReport1: TfrxReport
    ReportOptions.LastChange = 44946.929009490740000000
    Datasets = <
      item
        DataSet = frxDB_padrao
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <
      item
        Name = ' Variaveis'
        Value = Null
      end
      item
        Name = 'nome'
        Value = ''
      end>
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
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 113.385900000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 45.354360000000000000
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
            'RELAT'#211'RIO DE PARCELAS A RECEBER')
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
        Height = 18.897650000000000000
        Top = 325.039580000000000000
        Width = 718.110700000000000000
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Emitido por:')
          ParentFont = False
        end
        object nome: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 94.488250000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[nome]')
          ParentFont = False
        end
        object Date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 257.008040000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Time: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 340.157700000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Time]')
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
        Height = 30.236240000000000000
        Top = 154.960730000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'COD.')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Left = 52.913420000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'SEQ.')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Left = 102.047310000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Left = 181.417440000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'NOME')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Left = 351.496290000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'PARCELA')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Left = 464.882190000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'VENCIMENTO')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Left = 563.149970000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'SITUA'#199#195'O')
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
        Top = 245.669450000000000000
        Width = 718.110700000000000000
        DataSet = frxDB_padrao
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1VENDA_ID: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataField = 'VENDA_ID'
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
            '[frxDBDataset1."VENDA_ID"]')
          ParentFont = False
        end
        object frxDBDataset1SEQUENCIA_ID: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 52.913420000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataField = 'SEQUENCIA_ID'
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
            '[frxDBDataset1."SEQUENCIA_ID"]')
          ParentFont = False
        end
        object frxDBDataset1CLIENTE_ID: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 102.047310000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'CLIENTE_ID'
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
            '[frxDBDataset1."CLIENTE_ID"]')
          ParentFont = False
        end
        object frxDBDataset1NOME: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 181.417440000000000000
          Width = 170.078850000000000000
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
        object frxDBDataset1VALOR_PARCELA: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 351.496290000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR_PARCELA'
          DataSet = frxDB_padrao
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."VALOR_PARCELA"]')
          ParentFont = False
        end
        object frxDBDataset1DT_VENCIMENTO: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 464.882190000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'DT_VENCIMENTO'
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
            '[frxDBDataset1."DT_VENCIMENTO"]')
          ParentFont = False
        end
        object frxDBDataset1STATUS: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 563.149970000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          DataField = 'STATUS'
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
            '[frxDBDataset1."STATUS"]')
          ParentFont = False
        end
      end
      object Date1: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 487.559370000000000000
        Top = 1028.032160000000000000
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
      object Time1: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 570.709030000000000000
        Top = 1028.032160000000000000
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
        Left = 653.858690000000000000
        Top = 1028.032160000000000000
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
