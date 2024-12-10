inherited ViewModalCadastroCliente: TViewModalCadastroCliente
  Caption = 'ViewModalCadastroCliente'
  TextHeight = 15
  inherited pnlTopo: TPanel
    inherited pnlTitulo: TPanel
      inherited lblTitulo: TLabel
        Caption = 'Cadastro Clientes'
        ExplicitWidth = 132
      end
    end
  end
  inherited pnlBottom: TPanel
    inherited pnlBtnSalvar: TPanel
      inherited btnSalvar: TSpeedButton
        OnClick = btnSalvarClick
      end
    end
    inherited pnlBtnExcluir: TPanel
      inherited btnExcluir: TSpeedButton
        OnClick = btnExcluirClick
      end
    end
  end
  inherited pnlConteudo: TPanel
    Color = clWhite
    ParentBackground = False
    object Label1: TLabel
      Left = 6
      Top = 32
      Width = 13
      Height = 13
      Caption = 'ID'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 71
      Top = 32
      Width = 39
      Height = 13
      Caption = 'RAZAO'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 479
      Top = 32
      Width = 56
      Height = 13
      Caption = 'FANTASIA'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 6
      Top = 78
      Width = 47
      Height = 13
      Caption = 'CNPJCPF'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 263
      Top = 78
      Width = 27
      Height = 13
      Caption = 'IERG'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 573
      Top = 78
      Width = 70
      Height = 13
      Caption = 'TIPOPESSOA'
    end
    object Label7: TLabel
      Left = 6
      Top = 125
      Width = 74
      Height = 13
      Caption = 'OBSERVACAO'
      FocusControl = DBEdit7
    end
    object DBEdit1: TDBEdit
      Left = 6
      Top = 51
      Width = 59
      Height = 21
      DataField = 'ID'
      DataSource = dsDados
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 71
      Top = 51
      Width = 402
      Height = 21
      DataField = 'RAZAO'
      DataSource = dsDados
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 479
      Top = 51
      Width = 306
      Height = 21
      DataField = 'FANTASIA'
      DataSource = dsDados
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 6
      Top = 97
      Width = 251
      Height = 21
      DataField = 'CNPJCPF'
      DataSource = dsDados
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 263
      Top = 97
      Width = 304
      Height = 21
      DataField = 'IERG'
      DataSource = dsDados
      TabOrder = 4
    end
    object DBEdit7: TDBEdit
      Left = 6
      Top = 144
      Width = 779
      Height = 21
      DataField = 'OBSERVACAO'
      DataSource = dsDados
      TabOrder = 5
    end
    object DBEdit6: TComboBox
      Left = 573
      Top = 97
      Width = 148
      Height = 21
      TabOrder = 6
      Items.Strings = (
        'FISICA'
        'JURIDICA')
    end
  end
  inherited dsDados: TDataSource
    DataSet = ServicePessoas.FDQueryClientes
    Left = 650
    Top = 11
  end
end