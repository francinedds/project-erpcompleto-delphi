unit view.vendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.base.listas, Data.DB,
  Vcl.WinXPanels, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ComCtrls, view.modal.cadastro.venda, Vcl.Grids, Vcl.DBGrids, Vcl.WinXCtrls;

type
  TViewVendas = class(TViewBaseListas)
    pnlGridVenda: TPanel;
    pnlUtils: TPanel;
    pnlImprimir: TPanel;
    btnImprimir: TSpeedButton;
    pnlNFCE: TPanel;
    btnNFCE: TSpeedButton;
    pnlNFE: TPanel;
    btnNFE: TSpeedButton;
    pnlGridBottom: TPanel;
    pnlTituloProdutos: TPanel;
    lblTituloProdutos: TLabel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    pnlTituloPagamentos: TPanel;
    lblTituloPagamentos: TLabel;
    PesquisarVenda: TSearchBox;
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewVendas: TViewVendas;

implementation

{$R *.dfm}

procedure TViewVendas.btnNovoClick(Sender: TObject);
begin
  inherited;
  ViewModalCadastroVenda:= TViewModalCadastroVenda.Create(Self);
  try
    //ViewModalCadastroVenda.IdPesquisa := ServiceEstoque.FDQueryProdutoPesquisaID.AsInteger;
    ViewModalCadastroVenda.ShowModal;
  finally
    FreeAndNil(ViewModalCadastroVenda);
  end;
end;

end.
