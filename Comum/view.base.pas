unit view.base;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, service.estoque, service.pessoas,
  service.vendas;

type
  TViewBase = class(TForm)
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    ServiceEstoque: TServiceEstoque;
    ServicePessoas: TServicePessoas;
    ServiceVendas: TServiceVendas;

    function GetServiceEstoque: TServiceEstoque;
    function GetServicePessoas: TServicePessoas;
    function GetServiceVendas: TServiceVendas;

  published
    property FServiceEstoque : TServiceEstoque read GetServiceEstoque;
    property FServicePessoas : TServicePessoas read GetServicePessoas;
    property FServiceVendas  : TServiceVendas  read GetServiceVendas;

  public
    { Public declarations }
  end;

var
  ViewBase: TViewBase;

implementation

{$R *.dfm}

procedure TViewBase.FormCreate(Sender: TObject);
begin
  //FServiceEstoque.FDQueryProdutoCabecalho.Create(nil);
end;

procedure TViewBase.FormDestroy(Sender: TObject);
begin
  //FreeAndNil(FServiceEstoque);
end;

procedure TViewBase.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_ESCAPE: begin
      Self.Close;
    end;
  end;
end;

procedure TViewBase.FormKeyPress(Sender: TObject; var Key: Char);
begin //pular edit pressionando enter
  if key = #13 then
    begin
      Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

function TViewBase.GetServiceEstoque: TServiceEstoque;
begin
   if ServiceEstoque = nil then
      ServiceEstoque := TServiceEstoque.Create(nil);
      Result := ServiceEstoque;
end;

function TViewBase.GetServicePessoas: TServicePessoas;
begin
  if ServicePessoas = nil then
     ServicePessoas := TServicePessoas.Create(nil);
     Result := ServicePessoas;
end;

function TViewBase.GetServiceVendas: TServiceVendas;
begin
  if ServiceVendas = nil then
     ServiceVendas := TServiceVendas.Create(nil);
     Result := ServiceVendas;
end;

end.
