unit view.base.listas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.base, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Imaging.pngimage,
  Vcl.WinXPanels;

type
  TViewBaseListas = class(TViewBase)
    pnlTopo: TPanel;
    pnlUsuarios: TPanel;
    pnlBotoes: TPanel;
    pnlBtnEditar: TPanel;
    btnEditar: TSpeedButton;
    pnlTitulo: TPanel;
    lblTitulo: TLabel;
    pnlBottom: TPanel;
    pnlBtnSalvar: TPanel;
    btnSalvar: TSpeedButton;
    pnlBtnNovo: TPanel;
    btnNovo: TSpeedButton;
    pnlLinhaLeft: TPanel;
    pnlLinhaRight: TPanel;
    pnlDetalhe: TPanel;
    pnlSeta: TPanel;
    Image1: TImage;
    pblTitulo2: TPanel;
    lblTitulo2: TLabel;
    Detalhe: TPanel;
    pnlConteudo: TPanel;
    card_dados: TCardPanel;
    card_vazio: TCard;
    card_duascolunas: TCard;
    lblVazio: TLabel;
    lblTituloTotalRegistro: TLabel;
    lblRegistros: TLabel;
  private
    { Private declarations }
  published
    //procedure DataSourceDataChange(Sender: TObject; Field: TField) virtual;
  public
    { Public declarations }
  end;

var
  ViewBaseListas: TViewBaseListas;

implementation

{$R *.dfm}

//procedure TViewBaseListas.DataSourceDataChange(Sender: TObject; Field: TField);
//begin
//  Self.lblRegistros.Caption := TDataSource(Sender).DataSet.RecordCount.ToString;
//  if TDataSource(Sender).DataSet.RecordCount < 1 then
//  begin
//      Self.card_dados.ActiveCard := card_vazio;
//      Self.lblRegistros.Caption := '0';
//  end
//  else begin
//    Self.card_dados.ActiveCard := card_duascolunas;
//  end;
//end;

end.
