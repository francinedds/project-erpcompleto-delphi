unit view.modal.cadastro.produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.base.telas.modal, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Buttons, Data.DB, Vcl.Mask, Vcl.DBCtrls,
  service.estoque, view.fundo;

type
  TViewModalCadastroProduto = class(TViewBaseTelasModal)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewModalCadastroProduto: TViewModalCadastroProduto;

implementation

{$R *.dfm}

procedure TViewModalCadastroProduto.FormCreate(Sender: TObject);
begin //create
  inherited;
  //dsDados.DataSet := ServiceEstoque.FDQueryProdutoCabecalho;

end;

procedure TViewModalCadastroProduto.FormShow(Sender: TObject);
begin //formshow
  inherited;
    TViewFundo.GetInstance(Self).Show;
  //ServiceEstoque.GetProdutosCompleto(IdPesquisa);
end;

end.
