unit view.clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.base.listas, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Imaging.pngimage, Vcl.WinXPanels,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.WinXCtrls, view.modal.cadastro.cliente,
  service.pessoas, Vcl.ComCtrls;

type
  TViewClientes = class(TViewBaseListas)
    SearchBox: TSearchBox;
    DBGrid1: TDBGrid;
    procedure btnNovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure GetPessoas;
  end;

var
  ViewClientes: TViewClientes;

implementation

{$R *.dfm}

{ TViewClientes }

procedure TViewClientes.btnNovoClick(Sender: TObject);
begin
  inherited;
  ViewModalCadastroCliente := TViewModalCadastroCliente.Create(Self);
  try
    ViewModalCadastroCliente.ShowModal;
  finally
    FreeAndNil(ViewModalCadastroCliente);
  end;
end;

procedure TViewClientes.FormCreate(Sender: TObject);
begin
  inherited;
  //dsDados.DataSet := ServicePessoas.FDQueryClientes;
end;

procedure TViewClientes.GetPessoas;
begin
  //ServicePessoas.GetPessoas();
end;

end.
