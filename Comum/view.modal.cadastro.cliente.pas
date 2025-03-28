unit view.modal.cadastro.cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.base.telas.modal, Data.DB,
  Vcl.StdCtrls, Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Buttons, service.pessoas,
  Vcl.Mask, Vcl.DBCtrls;

type
  TViewModalCadastroCliente = class(TViewBaseTelasModal)
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
    Label7: TLabel;
    DBEdit7: TDBEdit;
    DBEdit6: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewModalCadastroCliente: TViewModalCadastroCliente;

implementation

{$R *.dfm}

procedure TViewModalCadastroCliente.btnExcluirClick(Sender: TObject);
begin
  inherited;
  if dsDados.DataSet.RecordCount > 0 then
  begin
    dsDados.DataSet.Delete;
    ShowMessage('Deletado com sucesso!');
  end;
end;

procedure TViewModalCadastroCliente.btnSalvarClick(Sender: TObject);
begin
  inherited;
  ServicePessoas.FDQueryClientes.Post;
  ShowMessage('Salvo com sucesso!');
  Self.Close;
end;

procedure TViewModalCadastroCliente.FormCreate(Sender: TObject);
begin
  inherited;
  dsDados.DataSet := ServicePessoas.FDQueryClientes;
end;

procedure TViewModalCadastroCliente.FormShow(Sender: TObject);
begin
  inherited;
  if dsDados.DataSet.State in dsEditModes then
  begin
    ServicePessoas.FDQueryClientes.Close;
    ServicePessoas.FDQueryClientes.Open();
    ServicePessoas.FDQueryClientes.Insert;
  end
  else begin
    ServicePessoas.FDQueryClientes.Edit;
  end;
end;

end.
