inherited ServiceEstoque: TServiceEstoque
  Height = 644
  Width = 231
  inherited FDConnection: TFDConnection
    Connected = True
    Left = 104
    Top = 40
  end
  object FDQueryProdutoCabecalho: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from produto_cabecalho where id = :id')
    Left = 104
    Top = 232
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQueryProdutoCabecalhoID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQueryProdutoCabecalhoNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Origin = 'NOME_PRODUTO'
      Size = 100
    end
    object FDQueryProdutoCabecalhoCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Origin = 'CODIGO_BARRAS'
      Size = 50
    end
    object FDQueryProdutoCabecalhoNCM: TIntegerField
      FieldName = 'NCM'
      Origin = 'NCM'
    end
    object FDQueryProdutoCabecalhoDTA_CADASTRO: TDateField
      FieldName = 'DTA_CADASTRO'
      Origin = 'DTA_CADASTRO'
    end
    object FDQueryProdutoCabecalhoHRA_CADASTRO: TTimeField
      FieldName = 'HRA_CADASTRO'
      Origin = 'HRA_CADASTRO'
    end
    object FDQueryProdutoCabecalhoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object FDQueryProdutoCabecalhoID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
      Origin = 'ID_GRUPO'
    end
    object FDQueryProdutoCabecalhoID_SUBGRUPO: TIntegerField
      FieldName = 'ID_SUBGRUPO'
      Origin = 'ID_SUBGRUPO'
    end
    object FDQueryProdutoCabecalhoID_FABRICANTE: TIntegerField
      FieldName = 'ID_FABRICANTE'
      Origin = 'ID_FABRICANTE'
    end
    object FDQueryProdutoCabecalhoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
      Size = 50
    end
    object FDQueryProdutoCabecalhoVENDE_FRACIONADO: TStringField
      FieldName = 'VENDE_FRACIONADO'
      Origin = 'VENDE_FRACIONADO'
      Size = 10
    end
  end
end
