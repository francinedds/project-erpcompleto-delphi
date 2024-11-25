unit view.fundo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TViewFundo = class(TForm)
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClick(Sender: TObject);
  private
    class var FInstance: TViewFundo; //cria a instancia
    procedure AjustarTela();
  public
    class function GetInstance(const APai: TForm): TViewFundo; //devolve instancia
  end;

var
  ViewFundo: TViewFundo;

implementation

{$R *.dfm}

{ TViewFundo }

procedure TViewFundo.AjustarTela;
begin
//  Self.Top    := Application.MainForm.Top;
//  Self.Left   := Application.MainForm.Left;
//  Self.Width  := Application.MainForm.Width;
//  Self.Height := Application.MainForm.Height;
end;

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

procedure TViewFundo.FormShow(Sender: TObject);
begin
  Self.AjustarTela;
end;

class function TViewFundo.GetInstance(const APai: TForm): TViewFundo;
begin //class para o fundo personalizado
  FInstance := TViewFundo.Create(APai);
  Result    := FInstance;
end;

end.
