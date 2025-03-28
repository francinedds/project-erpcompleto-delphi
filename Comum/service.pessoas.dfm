inherited ServicePessoas: TServicePessoas
  OnCreate = nil
  Height = 692
  inherited FDConnection: TFDConnection
    Connected = True
    Top = 56
  end
  object FDQueryClientes: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from pessoas where id = :id')
    Left = 88
    Top = 224
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQueryClientesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQueryClientesRAZAO: TStringField
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      Size = 200
    end
    object FDQueryClientesFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 200
    end
    object FDQueryClientesCNPJCPF: TStringField
      FieldName = 'CNPJCPF'
      Origin = 'CNPJCPF'
    end
    object FDQueryClientesIERG: TStringField
      FieldName = 'IERG'
      Origin = 'IERG'
    end
    object FDQueryClientesOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 200
    end
    object FDQueryClientesTIPOPESSOA: TIntegerField
      FieldName = 'TIPOPESSOA'
      Origin = 'TIPOPESSOA'
    end
  end
  object FDQueryEmpresa: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from empresa where id = :id')
    Left = 88
    Top = 304
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQueryEmpresaID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQueryEmpresaRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Size = 100
    end
    object FDQueryEmpresaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 100
    end
    object FDQueryEmpresaCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 50
    end
    object FDQueryEmpresaIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
      Size = 50
    end
    object FDQueryEmpresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 100
    end
    object FDQueryEmpresaNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object FDQueryEmpresaCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 100
    end
    object FDQueryEmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 100
    end
    object FDQueryEmpresaUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object FDQueryEmpresaCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
    end
    object FDQueryEmpresaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 50
    end
    object FDQueryEmpresaIM: TStringField
      FieldName = 'IM'
      Origin = 'IM'
      Size = 50
    end
    object FDQueryEmpresaCRT: TIntegerField
      FieldName = 'CRT'
      Origin = 'CRT'
    end
    object FDQueryEmpresaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 100
    end
    object FDQueryEmpresaID_PAIS: TIntegerField
      FieldName = 'ID_PAIS'
      Origin = 'ID_PAIS'
    end
    object FDQueryEmpresaCODIGO_IBGE: TStringField
      FieldName = 'CODIGO_IBGE'
      Origin = 'CODIGO_IBGE'
    end
    object FDQueryEmpresaLOGOMARCA: TBlobField
      FieldName = 'LOGOMARCA'
      Origin = 'LOGOMARCA'
    end
  end
end
