inherited Frm_pesq_Venda_Forma_Pgto: TFrm_pesq_Venda_Forma_Pgto
  Caption = 'PESQUISA DE VENDAS AGRUPADAS POR FORMA DE PAGAMENTO'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Label1: TLabel
      Left = 617
      Visible = False
      ExplicitLeft = 617
    end
    inherited lb_nome: TLabel
      Left = 313
      Visible = False
      ExplicitLeft = 313
    end
    inherited lb_inicio: TLabel
      Left = 16
      ExplicitLeft = 16
    end
    inherited lb_fim: TLabel
      Left = 182
      ExplicitLeft = 182
    end
    inherited ed_nome: TEdit
      Left = 313
      Visible = False
      ExplicitLeft = 313
    end
    inherited mk_inicio: TMaskEdit
      Left = 16
      ExplicitLeft = 16
    end
    inherited mk_fim: TMaskEdit
      Left = 182
      ExplicitLeft = 182
    end
    inherited bt_Pesquisa: TBitBtn
      Left = 304
      OnClick = bt_PesquisaClick
      ExplicitLeft = 304
    end
    inherited bt_transferir: TBitBtn
      Visible = False
    end
    inherited bt_Imprimir: TBitBtn
      Left = 500
      OnClick = bt_ImprimirClick
      ExplicitLeft = 500
    end
  end
  inherited cb_chave_pesquisa: TComboBox
    Left = 619
    Top = 27
    Visible = False
    ExplicitLeft = 619
    ExplicitTop = 27
  end
  inherited DBGrid1: TDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'QTDE_VENDA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_VENDA'
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
        Visible = True
      end>
  end
  inherited Panel2: TPanel
    object lb_valor_venda: TLabel
      Left = 423
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
      'SELECT COUNT(A.VENDA_ID) AS QTDE_VENDA,'
      'SUM (A.VALOR) AS VALOR_VENDA, '
      'A.ID_FORMA_PGTO, B.DESCRICAO'
      'FROM VENDAS A'
      'INNER JOIN FORMA_PGTO B ON B.ID_FORMA_PGTO = A.ID_FORMA_PGTO'
      'GROUP BY A.ID_FORMA_PGTO, B.DESCRICAO')
    object Q_pesq_padraoQTDE_VENDA: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'QTDE_VENDA'
      Origin = 'QTDE_VENDA'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q_pesq_padraoVALOR_VENDA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_VENDA'
      Origin = 'VALOR_VENDA'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object Q_pesq_padraoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      ProviderFlags = []
    end
    object Q_pesq_padraoDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  inherited frxReport1: TfrxReport
    ReportOptions.LastChange = 44943.784716851850000000
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
        Name = 'Data_ini'
        Value = ''
      end
      item
        Name = 'Data_fim'
        Value = ''
      end
      item
        Name = 'Qtde'
        Value = ''
      end
      item
        Name = 'Valor_compra'
        Value = ''
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
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 128.504020000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 26.456710000000000000
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
            'RELAT'#211'RIO DE VENDAS AGRUPADAS POR FORMA DE PAGAMENTO')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 219.212740000000000000
          Top = 49.133890000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'No periodo de:')
          ParentFont = False
        end
        object Data_ini: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 196.535560000000000000
          Top = 94.488250000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[Data_ini]')
        end
        object Data_fim: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 408.189240000000000000
          Top = 94.488250000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[Data_fim]')
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
        Top = 253.228510000000000000
        Width = 718.110700000000000000
        DataSet = frxDB_padrao
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1QTDE_VENDA: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'QTDE_VENDA'
          DataSet = frxDB_padrao
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."QTDE_VENDA"]')
          ParentFont = False
        end
        object frxDBDataset1VALOR_VENDA: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 120.944960000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR_VENDA'
          DataSet = frxDB_padrao
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."VALOR_VENDA"]')
          ParentFont = False
        end
        object frxDBDataset1ID_FORMA_PGTO: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 272.126160000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ID_FORMA_PGTO'
          DataSet = frxDB_padrao
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."ID_FORMA_PGTO"]')
          ParentFont = False
        end
        object frxDBDataset1DESCRICAO: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 351.496290000000000000
          Width = 366.614410000000000000
          Height = 18.897650000000000000
          DataField = 'DESCRICAO'
          DataSet = frxDB_padrao
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."DESCRICAO"]')
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
        Top = 170.078850000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Left = 120.944960000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Valor da venda')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Left = 272.126160000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Cod. Pgto')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Left = 351.496290000000000000
          Width = 366.614410000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Descri'#231#227'o')
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
        Height = 60.472480000000000000
        Top = 332.598640000000000000
        Width = 718.110700000000000000
        object Qtde: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Qtde]')
          ParentFont = False
        end
        object Valor_compra: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 120.944960000000000000
          Width = 597.165740000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Valor_compra]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 30.236240000000000000
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
          Left = 98.267780000000000000
          Top = 30.236240000000000000
          Width = 245.669450000000000000
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
          Left = 347.716760000000000000
          Top = 30.236240000000000000
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
          Left = 430.866420000000000000
          Top = 30.236240000000000000
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
      object Date1: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 468.661720000000000000
        Top = 1028.032160000000000000
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
      object Time1: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 548.031850000000000000
        Top = 1028.032160000000000000
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
      object Page: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 627.401980000000000000
        Top = 1028.032160000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[Page]')
        ParentFont = False
      end
    end
  end
end
