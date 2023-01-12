inherited Frm_pesq_forma_pgto: TFrm_pesq_forma_pgto
  Caption = 'PESQUISA FORMA DE PAGAMENTO'
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
      Visible = False
    end
  end
  inherited cb_chave_pesquisa: TComboBox
    Items.Strings = (
      'C'#211'DIGO'
      'DESCRI'#199#195'O'
      'TODOS')
  end
  inherited DBGrid1: TDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_FORMA_PGTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CADASTRO'
        Visible = True
      end>
  end
  inherited Q_pesq_padrao: TFDQuery
    SQL.Strings = (
      'SELECT '
      'ID_FORMA_PGTO,'
      'DESCRICAO,'
      'CADASTRO FROM FORMA_PGTO'
      'ORDER BY ID_FORMA_PGTO')
    object Q_pesq_padraoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_pesq_padraoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object Q_pesq_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  inherited frxReport1: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
