inherited ViewProdutos: TViewProdutos
  Margins.Top = 0
  Caption = 'Produtos'
  Position = poMainFormCenter
  TextHeight = 15
  inherited pnlTopo: TPanel
    inherited pnlUsuarios: TPanel
      inherited pnlBotoes: TPanel
        inherited pnlBtnEditar: TPanel
          inherited btnEditar: TSpeedButton
            OnClick = btnEditarClick
          end
        end
        inherited pnlBtnNovo: TPanel
          inherited btnNovo: TSpeedButton
            OnClick = btnNovoClick
          end
        end
      end
    end
    inherited pnlTitulo: TPanel
      inherited lblTitulo: TLabel
        Caption = 'ESTOQUE'
        ExplicitWidth = 72
      end
    end
    inherited pblTitulo2: TPanel
      inherited lblTitulo2: TLabel
        Caption = 'Produtos'
        ExplicitWidth = 67
      end
    end
  end
  inherited pnlBottom: TPanel
    inherited pnlBtnSalvar: TPanel
      inherited btnSalvar: TSpeedButton
        ExplicitLeft = -9
        ExplicitTop = 0
        ExplicitWidth = 89
        ExplicitHeight = 39
      end
    end
  end
  inherited pnlDetalhe: TPanel
    inherited Detalhe: TPanel
      Color = 1557580
    end
  end
  inherited pnlConteudo: TPanel
    Margins.Top = 15
    Margins.Right = 0
    inherited card_dados: TCardPanel
      Top = 41
      Height = 682
      TabOrder = 1
      ExplicitTop = 41
      ExplicitHeight = 682
      inherited card_vazio: TCard
        Height = 682
        ExplicitHeight = 682
        inherited lblVazio: TLabel
          Height = -18
        end
      end
      inherited card_conteudo: TCard
        Height = 682
        ExplicitHeight = 682
        object DBGrid: TDBGrid
          Left = 0
          Top = 0
          Width = 1110
          Height = 682
          Align = alClient
          BorderStyle = bsNone
          DataSource = dsDadosLista
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = 5263440
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
              Title.Caption = 'NOME DO PRODUTO'
              Width = 131
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODIGO_BARRAS'
              Title.Caption = 'C'#211'DIGO DE BARRAS'
              Width = 134
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
              Title.Caption = 'REFER'#202'NCIA'
              Width = 84
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
              Title.Caption = 'VALOR DA VENDA'
              Width = 138
              Visible = True
            end>
        end
      end
    end
    object SearchBox: TSearchBox
      AlignWithMargins = True
      Left = 0
      Top = 15
      Width = 1110
      Height = 23
      Margins.Left = 0
      Margins.Top = 15
      Margins.Right = 0
      Align = alTop
      TabOrder = 0
      Text = 'Pesquisar...'
    end
  end
  inherited dsDadosLista: TDataSource
    DataSet = ServiceEstoque.FDQueryProdutoPesquisa
  end
end
