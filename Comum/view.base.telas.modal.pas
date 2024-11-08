unit view.base.telas.modal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.base, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Imaging.jpeg;

type
  TViewBaseTelasModal = class(TViewBase)
    pnlTopo: TPanel;
    pnlUsuarios: TPanel;
    pnlBotoes: TPanel;
    pnlBtnFechar: TPanel;
    btnFechar: TSpeedButton;
    pnlLogo: TPanel;
    logo: TImage;
    pnlTitulo: TPanel;
    lblTitulo: TLabel;
    pnlBottom: TPanel;
    pnlBtnSalvar: TPanel;
    btnSalvar: TSpeedButton;
    pnlLinhaLeft: TPanel;
    pnlLinhaRight: TPanel;
    procedure btnFecharClick(Sender: TObject);
    procedure pnlTopoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewBaseTelasModal: TViewBaseTelasModal;

implementation

{$R *.dfm}

procedure TViewBaseTelasModal.btnFecharClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TViewBaseTelasModal.pnlTopoMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const sc_DragMove = $f012;
begin
  inherited;
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

end.
