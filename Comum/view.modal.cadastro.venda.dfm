inherited ViewModalCadastroVenda: TViewModalCadastroVenda
  Caption = 'ViewModalCadastroVenda'
  ClientHeight = 721
  ClientWidth = 958
  ExplicitWidth = 958
  ExplicitHeight = 721
  TextHeight = 15
  inherited pnlTopo: TPanel
    Width = 958
    ExplicitWidth = 958
    inherited pnlUsuarios: TPanel
      Left = 701
      ExplicitLeft = 701
    end
    inherited pnlTitulo: TPanel
      inherited lblTitulo: TLabel
        Width = 172
        Height = 29
        Caption = 'Vendas'
        ExplicitWidth = 54
      end
    end
  end
  inherited pnlBottom: TPanel
    Top = 691
    Width = 958
    ExplicitTop = 691
    ExplicitWidth = 958
    inherited pnlBtnSalvar: TPanel
      Left = 866
      ExplicitLeft = 866
      inherited btnSalvar: TSpeedButton
        Cursor = crHandPoint
      end
    end
    inherited pnlBtnExcluir: TPanel
      Left = 772
      ExplicitLeft = 772
      inherited btnExcluir: TSpeedButton
        Cursor = crHandPoint
      end
    end
  end
  inherited pnlLinhaLeft: TPanel
    Height = 656
    ExplicitHeight = 656
  end
  inherited pnlLinhaRight: TPanel
    Left = 956
    Height = 656
    ExplicitLeft = 956
    ExplicitHeight = 656
  end
  inherited pnlConteudo: TPanel
    Width = 954
    Height = 656
    ExplicitWidth = 954
    ExplicitHeight = 656
    object pnlPesquisa: TPanel
      Left = 0
      Top = 0
      Width = 954
      Height = 81
      Align = alTop
      BevelOuter = bvNone
      Color = 15724527
      ParentBackground = False
      TabOrder = 0
      object lblVendedor: TLabel
        Left = 6
        Top = 19
        Width = 87
        Height = 14
        Caption = 'Vendedor [F5]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
      object lblCliente: TLabel
        Left = 23
        Top = 45
        Width = 70
        Height = 14
        Caption = 'Cliente [F6]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
      object PesquisaVendedor: TSearchBox
        Left = 99
        Top = 18
        Width = 310
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object pnlBtnCancelar: TPanel
        Left = 704
        Top = 6
        Width = 114
        Height = 26
        BevelOuter = bvNone
        Color = 5263440
        ParentBackground = False
        TabOrder = 1
        object btnCancelar: TSpeedButton
          Left = 0
          Top = 0
          Width = 114
          Height = 26
          Cursor = crHandPoint
          Align = alClient
          Caption = 'Cancelar'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitLeft = 48
          ExplicitWidth = 91
        end
      end
      object pnlBtnFaturar: TPanel
        Left = 824
        Top = 6
        Width = 114
        Height = 26
        BevelOuter = bvNone
        Color = 1557836
        ParentBackground = False
        TabOrder = 2
        object btnFaturar: TSpeedButton
          Left = 0
          Top = 0
          Width = 114
          Height = 26
          Cursor = crHandPoint
          Align = alClient
          Caption = 'Faturar Venda'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitLeft = 53
        end
      end
      object PesquisaCliente: TSearchBox
        Left = 99
        Top = 45
        Width = 310
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object pnlBtnNovaVenda: TPanel
        Left = 584
        Top = 6
        Width = 114
        Height = 26
        BevelOuter = bvNone
        Color = 13602864
        ParentBackground = False
        TabOrder = 4
        object btnNovaVenda: TSpeedButton
          Left = 0
          Top = 0
          Width = 114
          Height = 26
          Cursor = crHandPoint
          Align = alClient
          Caption = 'Nova Venda [F2]'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitLeft = 16
        end
      end
    end
    object pnlDadosProduto: TPanel
      Left = 0
      Top = 81
      Width = 954
      Height = 112
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object lblProduto: TLabel
        Left = 6
        Top = 56
        Width = 51
        Height = 14
        Caption = 'Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblPrecoUnit: TLabel
        Left = 496
        Top = 56
        Width = 83
        Height = 14
        Caption = 'Valor Unit'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblPercDesconto: TLabel
        Left = 585
        Top = 56
        Width = 76
        Height = 14
        Caption = '% Desconto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblPrecoFinal: TLabel
        Left = 675
        Top = 56
        Width = 86
        Height = 14
        Caption = 'Valor Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblQuantProduto: TLabel
        Left = 767
        Top = 55
        Width = 74
        Height = 14
        Caption = 'Qt. Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblPesquisarProduto: TLabel
        Left = 6
        Top = 6
        Width = 113
        Height = 14
        Caption = 'Pesquisar produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtProduto: TEdit
        Left = 6
        Top = 76
        Width = 483
        Height = 21
        TabOrder = 0
      end
      object edtValorUnit: TEdit
        Left = 495
        Top = 76
        Width = 84
        Height = 21
        TabOrder = 1
      end
      object edtPrecoFinal: TEdit
        Left = 675
        Top = 76
        Width = 84
        Height = 21
        TabOrder = 2
      end
      object edtQuantProduto: TEdit
        Left = 765
        Top = 75
        Width = 84
        Height = 21
        TabOrder = 3
      end
      object edtPercDesconto: TEdit
        Left = 585
        Top = 76
        Width = 84
        Height = 21
        TabOrder = 4
      end
      object pnlBtnAdicionar: TPanel
        Left = 855
        Top = 56
        Width = 91
        Height = 41
        BevelOuter = bvNone
        Color = 1557580
        ParentBackground = False
        TabOrder = 5
        object btnAdicionar: TSpeedButton
          Left = 0
          Top = 0
          Width = 91
          Height = 41
          Cursor = crHandPoint
          Align = alClient
          Caption = '+ Adicionar'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitLeft = 32
          ExplicitTop = 16
          ExplicitWidth = 23
          ExplicitHeight = 22
        end
      end
      object pesquisaProduto: TSearchBox
        Left = 6
        Top = 26
        Width = 942
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
    end
    object pnlSubtotalVenda: TPanel
      Left = 0
      Top = 591
      Width = 954
      Height = 65
      Align = alBottom
      BevelOuter = bvNone
      Color = 15724527
      ParentBackground = False
      TabOrder = 2
      object lblTotBrutoVenda: TLabel
        Left = 529
        Top = 11
        Width = 118
        Height = 13
        Caption = 'Total Bruto da Venda'
      end
      object lblTotalDesconto: TLabel
        Left = 675
        Top = 11
        Width = 102
        Height = 13
        Caption = 'Total do Desconto'
      end
      object lblTotalVenda: TLabel
        Left = 817
        Top = 11
        Width = 84
        Height = 13
        Caption = 'Total da Venda'
      end
      object edtTotBrutoVenda: TEdit
        Left = 529
        Top = 30
        Width = 121
        Height = 21
        Alignment = taRightJustify
        TabOrder = 0
        Text = '0,00'
      end
      object edtTotalDesconto: TEdit
        Left = 675
        Top = 30
        Width = 121
        Height = 21
        Alignment = taRightJustify
        TabOrder = 1
        Text = '0,00'
      end
      object edtTotalVenda: TEdit
        Left = 817
        Top = 30
        Width = 121
        Height = 21
        Alignment = taRightJustify
        TabOrder = 2
        Text = '0,00'
      end
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 193
      Width = 954
      Height = 398
      Align = alClient
      BorderStyle = bsNone
      DataSource = dsDados
      Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_PRODUTO'
          Width = 127
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGO_BARRAS'
          Width = 130
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NCM'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REFERENCIA'
          Width = 101
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ATIVO'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLR_VENDA'
          Width = 91
          Visible = True
        end>
    end
  end
  inherited dsDados: TDataSource
    DataSet = ServiceEstoque.FDQueryProdutoPesquisa
    Left = 466
    Top = 11
  end
end
