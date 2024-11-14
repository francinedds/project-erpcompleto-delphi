unit view.frame.caminho;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage;

type
  TFrame1 = class(TFrame)
    pnlBackground: TPanel;
    pnlTitulo2: TPanel;
    pnlSeta: TPanel;
    Image1: TImage;
    pblTitulo1: TPanel;
    lblTitulo1: TLabel;
    lblTitulo2: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
