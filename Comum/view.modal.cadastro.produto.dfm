inherited ViewModalCadastroProduto: TViewModalCadastroProduto
  Caption = 'ViewModalCadastroProduto'
  TextHeight = 15
  inherited pnlTopo: TPanel
    inherited pnlUsuarios: TPanel
      inherited pnlBotoes: TPanel
        inherited pnlBtnFechar: TPanel
          AlignWithMargins = True
          Left = 166
          Top = 2
          Height = 33
          Margins.Left = 0
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 0
          ExplicitLeft = 166
          ExplicitTop = 2
          ExplicitHeight = 33
          inherited btnFechar: TSpeedButton
            Height = 33
            ExplicitHeight = 33
          end
        end
      end
    end
    inherited pnlLogo: TPanel
      AlignWithMargins = True
      Left = 2
      Top = 2
      Height = 33
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 0
      Margins.Bottom = 0
      ExplicitLeft = 2
      ExplicitTop = 2
      ExplicitHeight = 33
      inherited logo: TImage
        Height = 33
        ExplicitHeight = 33
      end
    end
    inherited pnlTitulo: TPanel
      Left = 91
      ExplicitLeft = 91
      inherited lblTitulo: TLabel
        Caption = 'Cadastro de Produto'
        ExplicitWidth = 152
      end
    end
  end
  inherited pnlBottom: TPanel
    inherited pnlBtnSalvar: TPanel
      Left = 704
      Margins.Right = 2
      ExplicitLeft = 704
      inherited btnSalvar: TSpeedButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 83
        Height = 18
        OnClick = btnSalvarClick
        ExplicitWidth = 121
        ExplicitHeight = 30
      end
    end
    inherited pnlBtnExcluir: TPanel
      Left = 610
      ExplicitLeft = 578
      inherited btnExcluir: TSpeedButton
        OnClick = btnExcluirClick
      end
    end
  end
  inherited pnlConteudo: TPanel
    Margins.Left = 2
    Margins.Right = 2
    Color = clWhite
    ParentBackground = False
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 13
      Height = 13
      Caption = 'ID'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 96
      Top = 32
      Width = 92
      Height = 13
      Caption = 'NOME_PRODUTO'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 16
      Top = 80
      Width = 97
      Height = 13
      Caption = 'CODIGO_BARRAS'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 16
      Top = 128
      Width = 24
      Height = 13
      Caption = 'NCM'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 176
      Top = 128
      Width = 35
      Height = 13
      Caption = 'ATIVO'
    end
    object Label6: TLabel
      Left = 16
      Top = 208
      Width = 74
      Height = 13
      Caption = 'OBSERVACAO'
      FocusControl = DBEdit6
    end
    object Label15: TLabel
      Left = 303
      Top = 125
      Width = 59
      Height = 13
      Caption = 'ID_GRUPO'
      FocusControl = DBEdit15
    end
    object Label16: TLabel
      Left = 463
      Top = 125
      Width = 81
      Height = 13
      Caption = 'ID_SUBGRUPO'
      FocusControl = DBEdit16
    end
    object Label17: TLabel
      Left = 623
      Top = 128
      Width = 89
      Height = 13
      Caption = 'ID_FABRICANTE'
      FocusControl = DBEdit17
    end
    object Label18: TLabel
      Left = 390
      Top = 187
      Width = 67
      Height = 13
      Caption = 'REFERENCIA'
      FocusControl = DBEdit18
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 48
      Width = 74
      Height = 21
      DataField = 'ID'
      DataSource = dsDados
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 96
      Top = 48
      Width = 681
      Height = 21
      DataField = 'NOME_PRODUTO'
      DataSource = dsDados
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 16
      Top = 96
      Width = 761
      Height = 21
      DataField = 'CODIGO_BARRAS'
      DataSource = dsDados
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 16
      Top = 144
      Width = 154
      Height = 21
      DataField = 'NCM'
      DataSource = dsDados
      TabOrder = 3
    end
    object DBEdit6: TDBEdit
      Left = 16
      Top = 227
      Width = 761
      Height = 21
      DataField = 'OBSERVACAO'
      DataSource = dsDados
      TabOrder = 4
    end
    object GroupBox1: TGroupBox
      Left = 13
      Top = 265
      Width = 289
      Height = 224
      Caption = 'CUSTO/VENDA'
      TabOrder = 5
      object Label7: TLabel
        Left = 16
        Top = 40
        Width = 87
        Height = 13
        Caption = 'CUSTO_INICIAL'
        FocusControl = DBEdit7
      end
      object Label8: TLabel
        Left = 16
        Top = 83
        Width = 61
        Height = 13
        Caption = 'VLR_FRETE'
        FocusControl = DBEdit8
      end
      object Label9: TLabel
        Left = 17
        Top = 136
        Width = 130
        Height = 13
        Caption = 'VLR_OUTRASDESPESAS'
        FocusControl = DBEdit9
      end
      object DBEdit7: TDBEdit
        Left = 16
        Top = 56
        Width = 257
        Height = 21
        DataField = 'CUSTO_INICIAL'
        DataSource = dsProdutoFilial
        TabOrder = 0
      end
      object DBEdit8: TDBEdit
        Left = 17
        Top = 102
        Width = 256
        Height = 21
        DataField = 'VLR_FRETE'
        DataSource = dsProdutoFilial
        TabOrder = 1
      end
      object DBEdit9: TDBEdit
        Left = 17
        Top = 155
        Width = 256
        Height = 21
        DataField = 'VLR_OUTRASDESPESAS'
        DataSource = dsProdutoFilial
        TabOrder = 2
      end
    end
    object GroupBox2: TGroupBox
      Left = 317
      Top = 265
      Width = 140
      Height = 224
      Caption = 'FISCAL'
      TabOrder = 6
      object Label10: TLabel
        Left = 16
        Top = 32
        Width = 79
        Height = 13
        Caption = 'ID_PISCOFINS'
        FocusControl = DBEdit10
      end
      object Label11: TLabel
        Left = 16
        Top = 85
        Width = 37
        Height = 13
        Caption = 'ID_IPI'
        FocusControl = DBEdit11
      end
      object Label12: TLabel
        Left = 16
        Top = 141
        Width = 49
        Height = 13
        Caption = 'ID_ICMS'
        FocusControl = DBEdit12
      end
      object DBEdit10: TDBEdit
        Left = 16
        Top = 51
        Width = 81
        Height = 21
        DataField = 'ID_PISCOFINS'
        DataSource = dsProdutoFilial
        TabOrder = 0
      end
      object DBEdit11: TDBEdit
        Left = 16
        Top = 104
        Width = 81
        Height = 21
        DataField = 'ID_IPI'
        DataSource = dsProdutoFilial
        TabOrder = 1
      end
      object DBEdit12: TDBEdit
        Left = 16
        Top = 160
        Width = 81
        Height = 21
        DataField = 'ID_ICMS'
        DataSource = dsProdutoFilial
        TabOrder = 2
      end
      object pnlBtnBuscaPISCOFINS: TPanel
        Left = 103
        Top = 51
        Width = 25
        Height = 22
        BevelOuter = bvNone
        Color = 5263440
        ParentBackground = False
        TabOrder = 3
        object btnBuscaPISCOFINS: TSpeedButton
          Left = 0
          Top = 0
          Width = 25
          Height = 22
          Cursor = crHandPoint
          Align = alClient
          Caption = '+'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitTop = 8
          ExplicitWidth = 23
        end
      end
      object pnlBtnBuscaIPI: TPanel
        Left = 103
        Top = 104
        Width = 25
        Height = 22
        BevelOuter = bvNone
        Color = 5263440
        ParentBackground = False
        TabOrder = 4
        object btnBuscaIPI: TSpeedButton
          Left = 0
          Top = 0
          Width = 25
          Height = 22
          Cursor = crHandPoint
          Align = alClient
          Caption = '+'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitTop = 20
        end
      end
      object pnlBtnBuscaICMS: TPanel
        Left = 103
        Top = 160
        Width = 25
        Height = 22
        BevelOuter = bvNone
        Color = 5263440
        ParentBackground = False
        TabOrder = 5
        object btnBuscaICMS: TSpeedButton
          Left = 0
          Top = 0
          Width = 25
          Height = 22
          Cursor = crHandPoint
          Align = alClient
          Caption = '+'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitTop = 20
        end
      end
    end
    object GroupBox3: TGroupBox
      Left = 469
      Top = 265
      Width = 308
      Height = 224
      Caption = 'OUTROS'
      TabOrder = 7
      object Label13: TLabel
        Left = 16
        Top = 53
        Width = 94
        Height = 13
        Caption = 'MARGEM_LUCRO'
        FocusControl = DBEdit13
      end
      object Label14: TLabel
        Left = 16
        Top = 112
        Width = 64
        Height = 13
        Caption = 'VLR_VENDA'
        FocusControl = DBEdit14
      end
      object DBEdit13: TDBEdit
        Left = 16
        Top = 72
        Width = 281
        Height = 21
        DataField = 'MARGEM_LUCRO'
        DataSource = dsProdutoFilial
        TabOrder = 0
      end
      object DBEdit14: TDBEdit
        Left = 16
        Top = 131
        Width = 281
        Height = 21
        DataField = 'VLR_VENDA'
        DataSource = dsProdutoFilial
        TabOrder = 1
      end
    end
    object DBEdit5: TComboBox
      Left = 176
      Top = 144
      Width = 121
      Height = 21
      TabOrder = 8
      Items.Strings = (
        'ATIVO'
        'INATIVO')
    end
    object DBEdit15: TDBEdit
      Left = 303
      Top = 144
      Width = 154
      Height = 21
      DataField = 'ID_GRUPO'
      DataSource = dsDados
      TabOrder = 9
    end
    object DBEdit16: TDBEdit
      Left = 463
      Top = 144
      Width = 154
      Height = 21
      DataField = 'ID_SUBGRUPO'
      DataSource = dsDados
      TabOrder = 10
    end
    object DBEdit17: TDBEdit
      Left = 623
      Top = 144
      Width = 154
      Height = 21
      DataField = 'ID_FABRICANTE'
      DataSource = dsDados
      TabOrder = 11
    end
    object DBEdit18: TDBEdit
      Left = 463
      Top = 184
      Width = 314
      Height = 21
      DataField = 'REFERENCIA'
      DataSource = dsDados
      TabOrder = 12
    end
  end
  inherited dsDados: TDataSource
    Left = 666
    Top = 11
  end
  object dsProdutoFilial: TDataSource
    DataSet = ServiceEstoque.FDQueryProdutoFilial
    Left = 584
    Top = 8
  end
end
