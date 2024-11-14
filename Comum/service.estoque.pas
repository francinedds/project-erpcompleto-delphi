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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.