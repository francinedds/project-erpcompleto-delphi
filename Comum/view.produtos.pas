unit view.produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Buttons,
  view.modal.cadastro.produto, Vcl.Imaging.pngimage, Vcl.WinXCtrls, Vcl.WinXPanels,
  view.base.listas, Data.DB, Vcl.Grids, Vcl.DBGrids, service.estoque, view.fundo;

type
  TViewProdutos = class(TViewBaseListas)
    SearchBox: TSearchBox;
    DBGrid: TDBGrid;
    procedure btnNovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
  private
    procedure GetProdutos;
  public
    { Public declarations }
  end;

var
  ViewProdutos: TViewProdutos;

implementation

{$R *.dfm}

procedure TViewProdutos.btnEditarClick(Sender: TObject);
begin //editar
  inherited;
    //dsDadosLista.DataSet.Edit;
end;

procedure TViewProdutos.btnNovoClick(Sender: TObject);
begin //novo
  inherited;
  ViewModalCadastroProduto := TViewModalCadastroProduto.Create(Self);
  try
    //ViewModalCadastroProduto.IdPesquisa := ServiceEstoque.FDQueryProdutoPesquisaID.AsInteger;
    ViewModalCadastroProduto.ShowModal;
  finally
    FreeAndNil(ViewModalCadastroProduto);
  end;
end;

procedure TViewProdutos.FormCreate(Sender: TObject);
begin
  inherited;
  //viewProdutos.dsDadosLista.DataSet := ServiceEstoque.FDQueryProdutoPesquisa;
  //ViewProdutos.dsDados.OnDataChange := DataSourceDataChange;
end;

procedure TViewProdutos.GetProdutos;
begin
  //ServiceEstoque.GetProdutosBasico;
end;

end.
