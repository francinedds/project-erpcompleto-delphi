unit service.pessoas;

interface

uses
  System.SysUtils, System.Classes, service.conexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TServicePessoas = class(TServiceConexao)
    FDQueryClientes: TFDQuery;
    FDQueryEmpresa: TFDQuery;
    FDQueryEmpresaID: TIntegerField;
    FDQueryEmpresaRAZAO_SOCIAL: TStringField;
    FDQueryEmpresaFANTASIA: TStringField;
    FDQueryEmpresaCNPJ: TStringField;
    FDQueryEmpresaIE: TStringField;
    FDQueryEmpresaENDERECO: TStringField;
    FDQueryEmpresaNUMERO: TStringField;
    FDQueryEmpresaCIDADE: TStringField;
    FDQueryEmpresaBAIRRO: TStringField;
    FDQueryEmpresaUF: TStringField;
    FDQueryEmpresaCEP: TStringField;
    FDQueryEmpresaTELEFONE: TStringField;
    FDQueryEmpresaIM: TStringField;
    FDQueryEmpresaCRT: TIntegerField;
    FDQueryEmpresaCOMPLEMENTO: TStringField;
    FDQueryEmpresaID_PAIS: TIntegerField;
    FDQueryEmpresaCODIGO_IBGE: TStringField;
    FDQueryEmpresaLOGOMARCA: TBlobField;
    FDQueryClientesID: TIntegerField;
    FDQueryClientesRAZAO: TStringField;
    FDQueryClientesFANTASIA: TStringField;
    FDQueryClientesCNPJCPF: TStringField;
    FDQueryClientesIERG: TStringField;
    FDQueryClientesOBSERVACAO: TStringField;
    FDQueryClientesTIPOPESSOA: TIntegerField;
  private
    { Private declarations }
  public
    procedure GetPessoas(AValue: string; AIdPessoa: integer = 0);
  end;

var
  ServicePessoas: TServicePessoas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TServicePessoas }


procedure TServicePessoas.GetPessoas(AValue: string; AIdPessoa: integer = 0);
begin
  if AIdPessoa > 0 then
  begin
    FDQueryClientes.Close;
    FDQueryClientes.SQL.Clear;
    FDQueryClientes.SQL.Add('select * from pessoas where id = :id');
    FDQueryClientes.ParamByName('id').AsInteger := AIdPessoa;
    FDQueryClientes.Open();
  end
  else begin
    FDQueryClientes.Close;
    FDQueryClientes.SQL.Clear;
    FDQueryClientes.SQL.Add('select * from pessoas where id = :id');
    FDQueryClientes.ParamByName('razao_social').AsString := '%' + AValue + '%';
    FDQueryClientes.Open();
  end;

end;

end.
