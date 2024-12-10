inherited ViewClientes: TViewClientes
  Caption = 'Clientes'
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
      Font.Color = clWhite
      ParentFont = False
      inherited lblTitulo: TLabel
        Caption = 'PESSOAS'
        ParentColor = False
        ExplicitWidth = 71
      end
    end
    inherited pblTitulo2: TPanel
      inherited lblTitulo2: TLabel
        Caption = 'Clientes'
        ExplicitWidth = 61
      end
    end
  end
  inherited pnlConteudo: TPanel
    inherited card_dados: TCardPanel
      inherited card_conteudo: TCard
        ExplicitLeft = 0
        ExplicitTop = 0
        inherited pnlPeriodo: TPanel
          Top = 41
          Height = 65
          TabOrder = 2
          ExplicitTop = 41
          ExplicitHeight = 65
          inherited lblPerido: TLabel
            Height = 14
            ExplicitHeight = 14
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
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = 'Pesquisa...'
        end
        object DBGrid1: TDBGrid
          Left = 0
          Top = 106
          Width = 1110
          Height = 617
          Align = alClient
          BorderStyle = bsNone
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'ID'
              Width = 47
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RAZAO'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FANTASIA'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CNPJCPF'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IERG'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OBSERVACAO'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIPOPESSOA'
              Width = 100
              Visible = True
            end>
        end
      end
    end
  end
end
