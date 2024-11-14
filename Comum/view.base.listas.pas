unit view.base.listas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.base, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Buttons;

type
  TViewBaseListas = class(TViewBase)
    pnlTopo: TPanel;
    pnlUsuarios: TPanel;
    pnlBotoes: TPanel;
    pnlBtnEditar: TPanel;
    btnEditar: TSpeedButton;
    pnlLogo: TPanel;
    logo: TImage;
    pnlTitulo: TPanel;
    lblTitulo: TLabel;
    pnlBottom: TPanel;
    pnlBtnSalvar: TPanel;
    btnSalvar: TSpeedButton;
    pnlBtnNovo: TPanel;
    btnNovo: TSpeedButton;
    pnlLinhaLeft: TPanel;
    pnlLinhaRight: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewBaseListas: TViewBaseListas;

implementation

{$R *.dfm}

end.