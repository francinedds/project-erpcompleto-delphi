unit view.principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.base, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Imaging.jpeg, view.produtos,
  Vcl.ComCtrls, System.Generics.Collections;

type
  TMyTabSheet = class(TTabSheet)
  private
    FForm: TForm;
  public
    property Form: TForm read FForm write FForm;
end;

type
  TViewPrincipal = class(TViewBase)
    pnlTopo: TPanel;
    pnlLogo: TPanel;
    pnlUsuarios: TPanel;
    pnlImgUser: TPanel;
    imgUser: TImage;
    pnlDadosUser: TPanel;
    lblNomeUser: TLabel;
    lblPerfilUser: TLabel;
    pnlMenu: TPanel;
    pnlBotaoSair: TPanel;
    btnSair: TSpeedButton;
    pnlMovimentos: TPanel;
    pnlBtnClientes: TPanel;
    btnClientes: TSpeedButton;
    pnlTitleMovimentos: TPanel;
    lblTitleMovimentos: TLabel;
    pnlBtnProdutos: TPanel;
    btnProdutos: TSpeedButton;
    pnlBtnVendas: TPanel;
    btnVendas: TSpeedButton;
    pnlFiscal: TPanel;
    pnlBotaoNFe: TPanel;
    btnNFe: TSpeedButton;
    pnlTitleFiscais: TPanel;
    lblTitleFiscais: TLabel;
    pnlBotaoNFCe: TPanel;
    btnNFCe: TSpeedButton;
    pnlConfig: TPanel;
    pnlTitleConfig: TPanel;
    CONFIGURAÇÕES: TLabel;
    pnlBotaoConfig: TPanel;
    btnConfig: TSpeedButton;
    logo: TImage;
    pnlEmpresaLicenciada: TPanel;
    lblEmpresaLicenciada: TLabel;
    lblCNPJ: TLabel;
    pnlAbas: TPanel;
    PageAbas: TPageControl;
    tabHome: TTabSheet;
    TabSheet1: TTabSheet;
    procedure btnSairClick(Sender: TObject);
    procedure btnProdutosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    //procedure MostrarFormularioAbas(FormClass: TFormClass; AllowMultiple: Boolean);
  public
  var
    FormInstances: TDictionary<TClass, TForm>;
  end;

var
  ViewPrincipal: TViewPrincipal;

implementation

{$R *.dfm}


procedure TViewPrincipal.btnProdutosClick(Sender: TObject);
begin
  inherited;
  //MostrarFormularioAbas(TViewProdutos, False);
  
  ViewProdutos := TViewProdutos.Create(Self);
  try
    ViewProdutos.ShowModal;
  finally
    FreeAndNil(ViewProdutos);
  end;
end;

procedure TViewPrincipal.btnSairClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TViewPrincipal.FormCreate(Sender: TObject);
begin
  inherited;
  FormInstances := TDictionary<TClass, TForm>.Create;
end;

procedure TViewPrincipal.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(FormInstances);
end;

//procedure de abas
//procedure TViewPrincipal.MostrarFormularioAbas(FormClass: TFormClass; AllowMultiple: Boolean);
//var
//  Form: TForm;
//  TabSheet: TMyTabSheet;
//const
//  _space = '    ';
//begin
//  Inherited;
//  if not AllowMultiple then
//  begin
//    if FormInstances.ContainsKey(FormClass) then
//    begin
//      PageAbas.ActivePage := TMyTabSheet(FormInstances[FormClass].Parent).Form.Parent as TTabSheet;
//      Exit;
//    end;
//  end;
//
//  Form := FormClass.Create(Self);
//  FormInstances.AddOrSetValue(Form.ClassType, Form);
//
//  Form.Parent      := PageAbas;
//  Form.BorderStyle := bsNone;
//  Form.Align       := alClient;
//
//  TabSheet             := TMyTabSheet.Create(PageAbas);
//  TabSheet.Caption     := Form.Caption + _space + 'x';
//  TabSheet.PageControl := PageAbas;
//  PageAbas.ActivePage  := TabSheet;
//
//  Form.Parent := TabSheet;
//  Form.Show;
//
//  TabSheet.Form := Form;
//end;

end.
