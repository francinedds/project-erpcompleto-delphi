unit view.produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Buttons,
  view.modal.cadastro.produto, Vcl.Imaging.pngimage, Vcl.WinXCtrls, Vcl.WinXPanels,
  view.base.listas, Data.DB, Vcl.Grids, Vcl.DBGrids, service.estoque, view.fundo,
  Vcl.ComCtrls;

type
  TViewProdutos = class(TViewBaseListas)
    SearchBox: TSearchBox;
    DBGrid1: TDBGrid;
    procedure btnNovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure dsDadosDataChange(Sender: TObject; Field: TField);
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

procedure TViewProdutos.dsDadosDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  Self.lblRegistros.Caption := TDataSource(Sender).DataSet.RecordCount.ToString;
  if TDataSource(Sender).DataSet.RecordCount < 1 then
  begin
      Self.card_dados.ActiveCard := card_vazio;
      Self.lblRegistros.Caption := '0';
  end
  else begin
    Self.card_dados.ActiveCard := card_conteudo;
  end;
end;

procedure TViewProdutos.FormCreate(Sender: TObject);
begin
  inherited;
//    dsDados.DataSet := ServiceEstoque.FDQueryProdutoPesquisa;
//    dsDados.OnDataChange := dsDadosDataChange;
end;

procedure TViewProdutos.GetProdutos;
begin
  ServiceEstoque.GetProdutosBasico;
end;

end.
