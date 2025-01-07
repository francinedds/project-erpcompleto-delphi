unit view.vendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.base.listas, Data.DB,
  Vcl.WinXPanels, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ComCtrls, view.modal.cadastro.venda;

type
  TViewVendas = class(TViewBaseListas)
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
