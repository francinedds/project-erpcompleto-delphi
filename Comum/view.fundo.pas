unit view.fundo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TViewFundo = class(TForm)
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClick(Sender: TObject);
  private
    class var FInstance: TViewFundo; //cria a instancia
  public
    class function GetInstance(const APai: TForm): TViewFundo; //devolve instancia
  end;

var
  ViewFundo: TViewFundo;

implementation

{$R *.dfm}

{ TViewFundo }


procedure TViewFundo.FormClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TViewFundo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
  begin
    Close;
  end;
end;

class function TViewFundo.GetInstance(const APai: TForm): TViewFundo;
begin //class para o fundo personalizado
  FInstance := TViewFundo.Create(APai);
  Result    := FInstance;
end;

end.
