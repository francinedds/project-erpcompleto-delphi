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
    FDQueryProdutoFilial: TFDQuery;
    FDQueryProdutoPesquisa: TFDQuery;
    FDQueryProdutoPesquisaID: TIntegerField;
    FDQueryProdutoPesquisaNOME_PRODUTO: TStringField;
    FDQueryProdutoPesquisaCODIGO_BARRAS: TStringField;
    FDQueryProdutoPesquisaNCM: TIntegerField;
    FDQueryProdutoPesquisaREFERENCIA: TStringField;
    FDQueryProdutoPesquisaATIVO: TStringField;
    FDQueryProdutoPesquisaVLR_VENDA: TBCDField;
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
    FDQueryProdutoCabecalhoATIVO: TStringField;
    FDQueryProdutoCabecalhoNOME_GRUPO: TStringField;
    FDQueryProdutoCabecalhoNOME_SUBGRUPO: TStringField;
    FDQueryProdutoCabecalhoNOME_FABRICANTE: TStringField;
    FDQueryProdutoFilialID: TIntegerField;
    FDQueryProdutoFilialID_PRODUTO: TIntegerField;
    FDQueryProdutoFilialID_FILIAL: TIntegerField;
    FDQueryProdutoFilialID_PISCOFINS: TIntegerField;
    FDQueryProdutoFilialID_IPI: TIntegerField;
    FDQueryProdutoFilialID_ICMS: TIntegerField;
    FDQueryProdutoFilialCUSTO_INICIAL: TBCDField;
    FDQueryProdutoFilialVLR_FRETE: TBCDField;
    FDQueryProdutoFilialVLR_OUTRASDESPESAS: TBCDField;
    FDQueryProdutoFilialCUSTO_ENTRADA: TBCDField;
    FDQueryProdutoFilialMARGEM_LUCRO: TBCDField;
    FDQueryProdutoFilialVLR_VENDA: TBCDField;
    FDQueryProdutoFilialATIVO: TStringField;
  private

  public
     procedure GetProdutosBasico;
     procedure GetProdutosCompleto(AIdProduto: integer);
  end;

var
  ServiceEstoque: TServiceEstoque;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TServiceEstoque }

procedure TServiceEstoque.GetProdutosBasico;
begin //busca produtos (query mais b�sica)
  FDQueryProdutoCabecalho.Close;
  FDQueryProdutoCabecalho.SQL.Clear;
  FDQueryProdutoPesquisa.SQL.Add('select');
  FDQueryProdutoPesquisa.SQL.Add('pc.id,');
  FDQueryProdutoPesquisa.SQL.Add('pc.nome_produto,');
  FDQueryProdutoPesquisa.SQL.Add('pc.codigo_barras,');
  FDQueryProdutoPesquisa.SQL.Add('pc.ncm,');
  FDQueryProdutoPesquisa.SQL.Add('pc.referencia,');
  FDQueryProdutoPesquisa.SQL.Add('pc.ativo,');
  FDQueryProdutoPesquisa.SQL.Add('pf.vlr_venda');
  FDQueryProdutoPesquisa.SQL.Add('from produto_cabecalho pc');
  FDQueryProdutoPesquisa.SQL.Add('inner join produto_filial pf on (pc.id = pf.id_produto)');
  //FDQueryProdutoPesquisa.SQL.Add('where pc.codigo_barras starting :nome');
  FDQueryProdutoPesquisa.SQL.Add('order by id');
  FDQueryProdutoPesquisa.Open();
end;

procedure TServiceEstoque.GetProdutosCompleto(AIdProduto: integer);
begin ////busca produtos (query completa)
  FDQueryProdutoCabecalho.Close;
  FDQueryProdutoCabecalho.SQL.Clear;
  FDQueryProdutoCabecalho.SQL.Add('select');
  FDQueryProdutoCabecalho.SQL.Add('pc.*');
  FDQueryProdutoCabecalho.SQL.Add('from produto_cabecalho pc');
  FDQueryProdutoCabecalho.SQL.Add('where pc.id = :id;');
  FDQueryProdutoCabecalho.ParamByName('id').AsInteger := AIdProduto;
  FDQueryProdutoCabecalho.Open();
end;

end.
