unit classe.sistema;

interface

uses classe.empresa, System.SysUtils, System.Classes, vcl.Forms;

type
  TSistema = class(TComponent)
    private
      FEmpresa: TEmpresa;
      class var FInstance: TSistema;

    public
      constructor Create (AOwner: TComponent); override;
      destructor  Destroy; override;
      class function New: TSistema;
      property Empresa: TEmpresa read FEmpresa write FEmpresa;
  end;

implementation

{ TSistema }

constructor TSistema.Create(AOwner: TComponent);
begin //create
  inherited;
  FEmpresa := TEmpresa.Create;
end;

destructor TSistema.Destroy;
begin //destroy
  FreeAndNil(FEmpresa);
  inherited;
end;

class function TSistema.New: TSistema;
begin
  if FInstance = nil then
     FInstance := TSistema.Create(Application);
     Result := FInstance;
end;

end.
