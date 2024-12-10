inherited ViewModalCadastroVenda: TViewModalCadastroVenda
  Caption = 'ViewModalCadastroVenda'
  TextHeight = 15
  inherited pnlTopo: TPanel
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
    inherited pnlBtnSalvar: TPanel
      inherited btnSalvar: TSpeedButton
        Cursor = crHandPoint
      end
    end
    inherited pnlBtnExcluir: TPanel
      inherited btnExcluir: TSpeedButton
        Cursor = crHandPoint
      end
    end
  end
  inherited pnlConteudo: TPanel
    ExplicitLeft = -270
    ExplicitTop = 38
    object pnlPesquisa: TPanel
      Left = 0
      Top = 0
      Width = 791
      Height = 81
      Align = alTop
      BevelOuter = bvNone
      Color = 15724527
      ParentBackground = False
      TabOrder = 0
      object SearchBox: TSearchBox
        Left = 6
        Top = 14
        Width = 491
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = 'Pesquisar...'
      end
      object pnlBtnCancelar: TPanel
        Left = 6
        Top = 41
        Width = 91
        Height = 26
        BevelOuter = bvNone
        Color = 5263440
        ParentBackground = False
        TabOrder = 1
        object btnCancelar: TSpeedButton
          Left = 0
          Top = 0
          Width = 91
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
          ExplicitTop = 8
          ExplicitWidth = 23
          ExplicitHeight = 22
        end
      end
      object pnlBtnFaturar: TPanel
        Left = 103
        Top = 41
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
          ExplicitLeft = 16
          ExplicitTop = 8
          ExplicitWidth = 23
          ExplicitHeight = 22
        end
      end
    end
    object pnlDadosProduto: TPanel
      Left = 0
      Top = 81
      Width = 791
      Height = 72
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitLeft = -6
      ExplicitTop = 87
      object lblProduto: TLabel
        Left = 6
        Top = 16
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
        Left = 328
        Top = 16
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
        Left = 417
        Top = 16
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
        Left = 507
        Top = 16
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
        Left = 599
        Top = 15
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
      object edtProduto: TEdit
        Left = 6
        Top = 36
        Width = 315
        Height = 21
        TabOrder = 0
      end
      object edtValorUnit: TEdit
        Left = 327
        Top = 36
        Width = 84
        Height = 21
        TabOrder = 1
      end
      object edtPrecoFinal: TEdit
        Left = 507
        Top = 36
        Width = 84
        Height = 21
        TabOrder = 2
      end
      object edtQuantProduto: TEdit
        Left = 597
        Top = 35
        Width = 84
        Height = 21
        TabOrder = 3
      end
      object edtPercDesconto: TEdit
        Left = 417
        Top = 36
        Width = 84
        Height = 21
        TabOrder = 4
      end
      object pnlBtnAdicionar: TPanel
        Left = 687
        Top = 16
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
          Caption = 'Adicionar'
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
    end
    object pnlSubtotalVenda: TPanel
      Left = 0
      Top = 440
      Width = 791
      Height = 65
      Align = alBottom
      BevelOuter = bvNone
      Color = 15724527
      ParentBackground = False
      TabOrder = 2
      object lblTotBrutoVenda: TLabel
        Left = 369
        Top = 11
        Width = 118
        Height = 13
        Caption = 'Total Bruto da Venda'
      end
      object lblTotalDesconto: TLabel
        Left = 515
        Top = 11
        Width = 102
        Height = 13
        Caption = 'Total do Desconto'
      end
      object lblTotalVenda: TLabel
        Left = 657
        Top = 11
        Width = 84
        Height = 13
        Caption = 'Total da Venda'
      end
      object edtTotBrutoVenda: TEdit
        Left = 369
        Top = 30
        Width = 121
        Height = 21
        Alignment = taRightJustify
        TabOrder = 0
        Text = '0,00'
      end
      object edtTotalDesconto: TEdit
        Left = 515
        Top = 30
        Width = 121
        Height = 21
        Alignment = taRightJustify
        TabOrder = 1
        Text = '0,00'
      end
      object edtTotalVenda: TEdit
        Left = 657
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
      Top = 153
      Width = 791
      Height = 287
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
    Left = 650
    Top = 19
  end
end