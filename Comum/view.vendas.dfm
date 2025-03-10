inherited ViewVendas: TViewVendas
  Caption = 'Vendas'
  TextHeight = 15
  inherited pnlTopo: TPanel
    inherited pnlUsuarios: TPanel
      inherited pnlBotoes: TPanel
        inherited pnlBtnNovo: TPanel
          inherited btnNovo: TSpeedButton
            OnClick = btnNovoClick
          end
        end
      end
    end
    inherited pnlTitulo: TPanel
      inherited lblTitulo: TLabel
        Width = 100
        Height = 35
        Caption = 'Estoque'
        ExplicitWidth = 59
      end
    end
    inherited pblTitulo2: TPanel
      inherited lblTitulo2: TLabel
        Width = 331
        Height = 35
        Caption = 'Vendas'
        ExplicitWidth = 54
      end
    end
  end
  inherited pnlBottom: TPanel
    inherited pnlBtnSalvar: TPanel
      Visible = False
      inherited btnSalvar: TSpeedButton
        Visible = False
      end
    end
  end
  inherited pnlConteudo: TPanel
    inherited card_dados: TCardPanel
      inherited card_vazio: TCard
        inherited lblVazio: TLabel
          Width = 1104
          Height = 23
        end
      end
      inherited card_conteudo: TCard
        Cursor = crHandPoint
        ExplicitTop = -1
        inherited pnlPeriodo: TPanel
          Height = 97
          ExplicitHeight = 97
          object PesquisarVenda: TSearchBox
            Left = 0
            Top = 76
            Width = 1110
            Height = 21
            Align = alBottom
            TabOrder = 3
            Text = 'Pesquisar venda...'
            ExplicitLeft = 3
            ExplicitTop = 70
            ExplicitWidth = 1101
          end
        end
        object pnlGridVenda: TPanel
          Left = 0
          Top = 97
          Width = 1110
          Height = 328
          Align = alTop
          BevelOuter = bvNone
          Caption = 'Vazio'
          Color = 15724527
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 1
        end
        object pnlUtils: TPanel
          Left = 0
          Top = 656
          Width = 1110
          Height = 67
          Align = alBottom
          BevelOuter = bvNone
          Color = 15724527
          ParentBackground = False
          TabOrder = 2
          ExplicitLeft = -6
          ExplicitTop = 662
          object pnlImprimir: TPanel
            AlignWithMargins = True
            Left = 997
            Top = 15
            Width = 110
            Height = 37
            Margins.Top = 15
            Margins.Bottom = 15
            Align = alRight
            BevelOuter = bvNone
            Color = 13734191
            ParentBackground = False
            TabOrder = 0
            object btnImprimir: TSpeedButton
              Left = 0
              Top = 0
              Width = 110
              Height = 37
              Cursor = crHandPoint
              Align = alClient
              Caption = 'Imprimir'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
                0003377777777777777308888888888888807F33333333333337088888888888
                88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
                8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
                8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
                03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
                03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
                33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
                33333337FFFF7733333333300000033333333337777773333333}
              NumGlyphs = 2
              ParentFont = False
              ExplicitTop = -8
              ExplicitWidth = 152
            end
          end
          object pnlNFCE: TPanel
            AlignWithMargins = True
            Left = 881
            Top = 15
            Width = 110
            Height = 37
            Margins.Top = 15
            Margins.Bottom = 15
            Align = alRight
            BevelOuter = bvNone
            Color = 13734191
            ParentBackground = False
            TabOrder = 1
            object btnNFCE: TSpeedButton
              Left = 0
              Top = 0
              Width = 110
              Height = 37
              Cursor = crHandPoint
              Align = alClient
              Caption = '+ Emitir NFC-e'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitLeft = 64
              ExplicitWidth = 23
              ExplicitHeight = 22
            end
          end
          object pnlNFE: TPanel
            AlignWithMargins = True
            Left = 765
            Top = 15
            Width = 110
            Height = 37
            Margins.Top = 15
            Margins.Bottom = 15
            Align = alRight
            BevelOuter = bvNone
            Color = 13734191
            ParentBackground = False
            TabOrder = 2
            object btnNFE: TSpeedButton
              Left = 0
              Top = 0
              Width = 110
              Height = 37
              Cursor = crHandPoint
              Align = alClient
              Caption = '+ Emitir NF-e'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitLeft = 48
              ExplicitTop = 16
              ExplicitWidth = 23
              ExplicitHeight = 22
            end
          end
        end
        object pnlGridBottom: TPanel
          Left = 0
          Top = 425
          Width = 1110
          Height = 231
          Align = alClient
          BevelOuter = bvNone
          Color = 15724527
          ParentBackground = False
          TabOrder = 3
          ExplicitTop = 449
          ExplicitWidth = 1104
          ExplicitHeight = 207
          object pnlTituloProdutos: TPanel
            Left = 0
            Top = 0
            Width = 1110
            Height = 33
            Align = alTop
            BevelOuter = bvNone
            Color = 15724527
            ParentBackground = False
            TabOrder = 0
            object lblTituloProdutos: TLabel
              Left = 10
              Top = 6
              Width = 59
              Height = 16
              Caption = 'Produtos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 5263440
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object pnlTituloPagamentos: TPanel
              Left = 765
              Top = 0
              Width = 345
              Height = 33
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 0
              object lblTituloPagamentos: TLabel
                Left = 0
                Top = 6
                Width = 80
                Height = 16
                Caption = 'Pagamentos'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 5263440
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
          end
          object DBGrid1: TDBGrid
            AlignWithMargins = True
            Left = 3
            Top = 36
            Width = 756
            Height = 192
            Align = alClient
            BorderStyle = bsNone
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
          end
          object DBGrid2: TDBGrid
            AlignWithMargins = True
            Left = 765
            Top = 36
            Width = 342
            Height = 192
            Align = alRight
            BorderStyle = bsNone
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
          end
        end
      end
    end
  end
  inherited dsDados: TDataSource
    Left = 867
    Top = 21
  end
end
