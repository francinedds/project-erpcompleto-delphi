unit service.estoque;

interface

uses
  System.SysUtils, System.Classes, service.conexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TServiceEstoque = class(TServiceConexao)
    FDQueryProdutoCabecalho: TFDQuery;
    FDQueryProdutoCabecalhoID: TIntegerField;
    FDQueryProdutoCabecalhoNOME_PRODUTO: TStringField;
    FDQueryProdutoCabecalhoCODIGO_BARRAS: TStringField;
    FDQueryProdutoCabecalhoNCM: TIntegerField;
    FDQueryProdutoCabecalhoDTA_CADASTRO: TDateField;
    FDQueryProdutoCabecalhoHRA_CADASTRO: TTimeField;
    FDQueryProdutoCabecalhoOBSERVACAO: TStringField;
    FDQueryProdutoCabecalhoID_GRUPO: TIntegerField;
    FDQueryProdutoCabecalhoID_SUBGRUPO: TIntegerField;
    FDQueryProdutoCabecalhoID_FABRICANTE: TIntegerField;
    FDQueryProdutoCabecalhoREFERENCIA: TStringField;
    FDQueryProdutoCabecalhoVENDE_FRACIONADO: TStringField;
    FDQueryProdutoFilial: TFDQuery;
    FDQueryProdutoFilialID: TIntegerField;
    FDQueryProdutoFilialID_PRODUTO: TIntegerField;
    FDQueryProdutoFilialID_FILIAL: TIntegerField;
    FDQueryProdutoFilialID_PISCOFINS: TIntegerField;
    FDQueryProdutoFilialID_IPI: TIntegerField;
    FDQueryProdutoFilialID_ICMS: TIntegerField;
    FDQueryProdutoFilialCUSTO_INICIAL: TBCDField;
    FDQueryProdutoFilialVLR_FRETE: TBCDField;
    FDQueryProdutoFilialVLR_OUTRASDESPESAS: TBCDField;
    FDQueryProdutoFilialCUSTO_ENTREGA: TBCDField;
    FDQueryProdutoFilialMARGEM_LUCRO: TBCDField;
    FDQueryProdutoFilialVLR_VENDA: TBCDField;
    FDQueryProdutoFilialATIVO: TStringField;
  private

  public
    procedure GetProdutos;
  var
    FServiceEstoque: TServiceEstoque;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TServiceEstoque }

procedure TServiceEstoque.GetProdutos;
begin //busca produtos
  FDQueryProdutoCabecalho.Close;
  FDQueryProdutoCabecalho.SQL.Clear;
  FDQueryProdutoCabecalho.SQL.Add('select * from produto_cabecalho');
  FDQueryProdutoCabecalho.Open();
end;

end.
