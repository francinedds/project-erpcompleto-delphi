unit View.Frame.Duas.Colunas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ControlList,
  Vcl.Buttons, Vcl.StdCtrls, Data.DB;

type
  TViewFrameDuasColunas = class(TFrame)
    ControlList: TControlList;
    lblTextTitulo1: TLabel;
    lblTextInfo1: TLabel;
    lblTextInfo2: TLabel;
    lblTextTitulo2: TLabel;
    btnEditar: TSpeedButton;
    dsLista: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
