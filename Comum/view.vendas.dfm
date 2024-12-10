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
  inherited pnlConteudo: TPanel
    inherited card_dados: TCardPanel
      inherited card_vazio: TCard
        inherited lblVazio: TLabel
          Width = 1104
          Height = 23
        end
      end
      inherited card_conteudo: TCard
        ExplicitLeft = 0
        ExplicitTop = 0
      end
    end
  end
end
