unit view.modal.cadastro.venda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.base.telas.modal, Data.DB,
  Vcl.StdCtrls, Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Buttons, Vcl.WinXCtrls,
  Vcl.Grids, Vcl.DBGrids, service.estoque;

type
  TViewModalCadastroVenda = class(TViewBaseTelasModal)
    pnlPesquisa: TPanel;
    PesquisaVendedor: TSearchBox;
    pnlBtnCancelar: TPanel;
    btnCancelar: TSpeedButton;
    pnlBtnFaturar: TPanel;
    btnFaturar: TSpeedButton;
    pnlDadosProduto: TPanel;
    lblProduto: TLabel;
    edtProduto: TEdit;
    lblPrecoUnit: TLabel;
    edtValorUnit: TEdit;
    lblPercDesconto: TLabel;
    lblPrecoFinal: TLabel;
    edtPrecoFinal: TEdit;
    lblQuantProduto: TLabel;
    edtQuantProduto: TEdit;
    edtPercDesconto: TEdit;
    pnlBtnAdicionar: TPanel;
    btnAdicionar: TSpeedButton;
    pnlSubtotalVenda: TPanel;
    lblTotBrutoVenda: TLabel;
    edtTotBrutoVenda: TEdit;
    lblTotalDesconto: TLabel;
    edtTotalDesconto: TEdit;
    lblTotalVenda: TLabel;
    edtTotalVenda: TEdit;
    DBGrid1: TDBGrid;
    pesquisaProduto: TSearchBox;
    lblPesquisarProduto: TLabel;
    lblVendedor: TLabel;
    lblCliente: TLabel;
    PesquisaCliente: TSearchBox;
    pnlBtnNovaVenda: TPanel;
    btnNovaVenda: TSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewModalCadastroVenda: TViewModalCadastroVenda;

implementation

{$R *.dfm}

end.
