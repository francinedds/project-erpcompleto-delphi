unit view.base;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, service.estoque;

type
  TViewBase = class(TForm)
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }

  published
  //FServiceEstoque: TServiceEstoque;

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

end.
