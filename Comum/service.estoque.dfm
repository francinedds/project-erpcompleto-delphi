inherited ServiceEstoque: TServiceEstoque
  Height = 748
  Width = 231
  inherited FDConnection: TFDConnection
    Connected = True
    Left = 104
    Top = 40
  end
  object FDQueryProdutoCabecalho: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select'
      '    pc.*'
      'from produto_cabecalho pc'
      'where pc.id = :id;')
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
    object FDQueryProdutoCabecalhoATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 10
    end
    object FDQueryProdutoCabecalhoNOME_GRUPO: TStringField
      FieldName = 'NOME_GRUPO'
      Origin = 'NOME_GRUPO'
      Size = 50
    end
    object FDQueryProdutoCabecalhoNOME_SUBGRUPO: TStringField
      FieldName = 'NOME_SUBGRUPO'
      Origin = 'NOME_SUBGRUPO'
      Size = 50
    end
    object FDQueryProdutoCabecalhoNOME_FABRICANTE: TStringField
      FieldName = 'NOME_FABRICANTE'
      Origin = 'NOME_FABRICANTE'
      Size = 50
    end
  end
  object FDQueryProdutoFilial: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from produto_filial where id_produto = :id_produto')
    Left = 104
    Top = 360
    ParamData = <
      item
        Name = 'ID_PRODUTO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQueryProdutoFilialID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQueryProdutoFilialID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
    end
    object FDQueryProdutoFilialID_FILIAL: TIntegerField
      FieldName = 'ID_FILIAL'
      Origin = 'ID_FILIAL'
    end
    object FDQueryProdutoFilialID_PISCOFINS: TIntegerField
      FieldName = 'ID_PISCOFINS'
      Origin = 'ID_PISCOFINS'
    end
    object FDQueryProdutoFilialID_IPI: TIntegerField
      FieldName = 'ID_IPI'
      Origin = 'ID_IPI'
    end
    object FDQueryProdutoFilialID_ICMS: TIntegerField
      FieldName = 'ID_ICMS'
      Origin = 'ID_ICMS'
    end
    object FDQueryProdutoFilialCUSTO_INICIAL: TBCDField
      FieldName = 'CUSTO_INICIAL'
      Origin = 'CUSTO_INICIAL'
      Precision = 18
    end
    object FDQueryProdutoFilialVLR_FRETE: TBCDField
      FieldName = 'VLR_FRETE'
      Origin = 'VLR_FRETE'
      Precision = 18
    end
    object FDQueryProdutoFilialVLR_OUTRASDESPESAS: TBCDField
      FieldName = 'VLR_OUTRASDESPESAS'
      Origin = 'VLR_OUTRASDESPESAS'
      Precision = 18
    end
    object FDQueryProdutoFilialCUSTO_ENTREGA: TBCDField
      FieldName = 'CUSTO_ENTREGA'
      Origin = 'CUSTO_ENTREGA'
      Precision = 18
    end
    object FDQueryProdutoFilialMARGEM_LUCRO: TBCDField
      FieldName = 'MARGEM_LUCRO'
      Origin = 'MARGEM_LUCRO'
      Precision = 18
    end
    object FDQueryProdutoFilialVLR_VENDA: TBCDField
      FieldName = 'VLR_VENDA'
      Origin = 'VLR_VENDA'
      Precision = 18
    end
    object FDQueryProdutoFilialATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
    end
  end
  object FDQueryProdutoPesquisa: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select'
      '    pc.id,'
      '    pc.nome_produto,'
      '    pc.codigo_barras,'
      '    pc.ncm,'
      '    pc.referencia,'
      '    pc.ativo,'
      '    pf.vlr_venda'
      'from produto_cabecalho pc'
      'inner join produto_filial pf on (pc.id = pf.id_produto)'
      'where pc.codigo_barras starting :nome')
    Left = 104
    Top = 296
    ParamData = <
      item
        Name = 'NOME'
        DataType = ftString
        ParamType = ptInput
        Size = 50
        Value = Null
      end>
    object FDQueryProdutoPesquisaID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQueryProdutoPesquisaNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Origin = 'NOME_PRODUTO'
      Size = 100
    end
    object FDQueryProdutoPesquisaCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Origin = 'CODIGO_BARRAS'
      Size = 50
    end
    object FDQueryProdutoPesquisaNCM: TIntegerField
      FieldName = 'NCM'
      Origin = 'NCM'
    end
    object FDQueryProdutoPesquisaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
      Size = 50
    end
    object FDQueryProdutoPesquisaATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 10
    end
    object FDQueryProdutoPesquisaVLR_VENDA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VLR_VENDA'
      Origin = 'VLR_VENDA'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '###,###,0.00'
      Precision = 18
    end
  end
end
