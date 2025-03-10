unit view.principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.base, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Imaging.jpeg, view.produtos,
  Vcl.ComCtrls, System.Generics.Collections, view.clientes;

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
    pnlBtnCaixas: TPanel;
    btnCaixa: TSpeedButton;
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
    pnlLogoPrincipal: TPanel;
    logoPrincipal: TImage;
    procedure btnSairClick(Sender: TObject);
    procedure btnProdutosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PageAbasMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure tabHomeContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure btnClientesClick(Sender: TObject);
  private
    procedure MostrarFormularioAbas(FormClass: TFormClass; AllowMultiple: Boolean);
  public
  var
    FormInstances: TDictionary<TClass, TForm>;
  end;

var
  ViewPrincipal: TViewPrincipal;

implementation

{$R *.dfm}


procedure TViewPrincipal.btnClientesClick(Sender: TObject);
begin
  inherited;
  MostrarFormularioAbas(TViewClientes, False);
end;

procedure TViewPrincipal.btnProdutosClick(Sender: TObject);
begin //show modal
  inherited;
  MostrarFormularioAbas(TViewProdutos, False);

  ViewProdutos := TViewProdutos.Create(Self);
  try
    //ViewProdutos.ShowModal; habilitar sem tdi
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

//para fechar a aba com x
procedure TViewPrincipal.PageAbasMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  TabIndex: Integer;
  CloseBtnRect: TRect;
  FormToClose: TCustomForm;

  TabSheet: TMyTabSheet;
  FormClass: TClass;
begin
  inherited;
  TabIndex := PageAbas.IndexOfTabAt(X, Y);
  if TabIndex > -1 then
  begin
    CloseBtnRect := PageAbas.TabRect(TabIndex);
    CloseBtnRect.Left := CloseBtnRect.Right - GetSystemMetrics(SM_CXSMICON) - 15;
    InflateRect(CloseBtnRect, -2, -2);

    if PtInRect(CloseBtnRect, Point(X, Y)) then
    begin
       FormToClose := TCustomForm(PageAbas.Pages[TabIndex].Tag);
       TabSheet    := TMyTabSheet(PageAbas.Pages[TabIndex]);

       if Assigned(FormToClose) then
        FormToClose.Free;

       if TabSheet <> nil then
       begin
         if TabIndex > 0 then
         begin
           FormClass := TabSheet.Form.ClassType;
           if FormInstances.ContainsKey(FormClass) then
           begin
             PageAbas.ActivePage := nil;
             FormInstances[FormClass].Free;
             FormInstances.Remove(FormClass);
           end;
           PageAbas.ActivePage := tabHome;
           TabSheet.Free;
         end;
       end;

    end;
  end;

end;

procedure TViewPrincipal.tabHomeContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  inherited;
end;

//procedure de abas
procedure TViewPrincipal.MostrarFormularioAbas(FormClass: TFormClass; AllowMultiple: Boolean);
var
  Form: TForm;
  TabSheet: TMyTabSheet;
const
  _space = '    ';
begin
  Inherited;
  if not AllowMultiple then
  begin
    if FormInstances.ContainsKey(FormClass) then
    begin
      PageAbas.ActivePage := TMyTabSheet(FormInstances[FormClass].Parent).Form.Parent as TTabSheet;
      Exit;
    end;
  end;

  Form := FormClass.Create(Self);
  FormInstances.AddOrSetValue(Form.ClassType, Form);

  Form.Parent      := PageAbas;
  Form.BorderStyle := bsNone;
  Form.Align       := alClient;

  TabSheet             := TMyTabSheet.Create(PageAbas);
  TabSheet.Caption     := Form.Caption + _space + 'x';
  TabSheet.PageControl := PageAbas;
  PageAbas.ActivePage  := TabSheet;

  Form.Parent := TabSheet;
  Form.Show;

  TabSheet.Form := Form;
end;

end.
