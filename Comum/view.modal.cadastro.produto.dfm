inherited ViewModalCadastroProduto: TViewModalCadastroProduto
  Caption = 'ViewModalCadastroProduto'
  Position = poMainFormCenter
  OnShow = FormShow
  TextHeight = 15
  inherited pnlTopo: TPanel
    inherited pnlTitulo: TPanel
      inherited lblTitulo: TLabel
        Caption = 'Cadastro de Produto'
        ExplicitWidth = 152
      end
    end
  end
  inherited pnlBottom: TPanel
    inherited pnlBtnSalvar: TPanel
      Top = 0
      Height = 30
      Margins.Top = 0
      Margins.Bottom = 0
      inherited btnSalvar: TSpeedButton
        Height = 30
      end
    end
  end
  inherited pnlConteudo: TPanel
    Margins.Top = 0
    object Label1: TLabel
      Left = 6
      Top = 56
      Width = 13
      Height = 13
      Caption = 'ID'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 86
      Top = 56
      Width = 92
      Height = 13
      Caption = 'NOME_PRODUTO'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 6
      Top = 104
      Width = 97
      Height = 13
      Caption = 'CODIGO_BARRAS'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 6
      Top = 152
      Width = 24
      Height = 13
      Caption = 'NCM'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 166
      Top = 152
      Width = 35
      Height = 13
      Caption = 'ATIVO'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 6
      Top = 200
      Width = 74
      Height = 13
      Caption = 'OBSERVACAO'
      FocusControl = DBEdit6
    end
    object DBEdit1: TDBEdit
      Left = 6
      Top = 72
      Width = 74
      Height = 21
      DataField = 'ID'
      DataSource = dsDados
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 86
      Top = 72
      Width = 699
      Height = 21
      DataField = 'NOME_PRODUTO'
      DataSource = dsDados
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 6
      Top = 120
      Width = 779
      Height = 21
      DataField = 'CODIGO_BARRAS'
      DataSource = dsDados
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 6
      Top = 168
      Width = 154
      Height = 21
      DataField = 'NCM'
      DataSource = dsDados
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 166
      Top = 168
      Width = 154
      Height = 21
      DataField = 'ATIVO'
      DataSource = dsDados
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 6
      Top = 219
      Width = 779
      Height = 21
      DataField = 'OBSERVACAO'
      DataSource = dsDados
      TabOrder = 5
    end
  end
end
