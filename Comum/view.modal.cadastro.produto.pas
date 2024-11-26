unit view.modal.cadastro.produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.base.telas.modal, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Buttons, Data.DB, Vcl.Mask, Vcl.DBCtrls,
  service.estoque, view.fundo;

type
  TViewModalCadastroProduto = class(TViewBaseTelasModal)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    dsProdutoFilial: TDataSource;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    pnlBtnBuscaPISCOFINS: TPanel;
    btnBuscaPISCOFINS: TSpeedButton;
    pnlBtnBuscaIPI: TPanel;
    btnBuscaIPI: TSpeedButton;
    pnlBtnBuscaICMS: TPanel;
    btnBuscaICMS: TSpeedButton;
    DBEdit5: TComboBox;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    Label17: TLabel;
    DBEdit17: TDBEdit;
    Label18: TLabel;
    DBEdit18: TDBEdit;
    pnlCancelar: TPanel;
    btnCancelar: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewModalCadastroProduto: TViewModalCadastroProduto;

implementation

{$R *.dfm}

procedure TViewModalCadastroProduto.FormCreate(Sender: TObject);
begin //create
  inherited;
  //dsDados.DataSet := ServiceEstoque.FDQueryProdutoCabecalho;

end;

procedure TViewModalCadastroProduto.FormShow(Sender: TObject);
begin //formshow
  inherited;
    TViewFundo.GetInstance(Self).Show;
  //ServiceEstoque.GetProdutosCompleto(IdPesquisa);
end;

end.
