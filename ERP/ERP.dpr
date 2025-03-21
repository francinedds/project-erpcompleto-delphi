program ERP;

uses
  Vcl.Forms,
  view.base in '..\Comum\view.base.pas' {ViewBase},
  view.principal in 'view.principal.pas' {ViewPrincipal},
  service.conexao in '..\Comum\service.conexao.pas' {ServiceConexao: TDataModule},
  view.base.telas.modal in '..\Comum\view.base.telas.modal.pas' {ViewBaseTelasModal},
  view.base.listas in '..\Comum\view.base.listas.pas' {ViewBaseListas},
  view.produtos in '..\Comum\view.produtos.pas' {ViewProdutos},
  view.modal.cadastro.produto in '..\Comum\view.modal.cadastro.produto.pas' {ViewModalCadastroProduto},
  view.clientes in '..\Comum\view.clientes.pas' {ViewClientes},
  service.estoque in '..\Comum\service.estoque.pas' {ServiceEstoque: TDataModule},
  classe.sistema in '..\Comum\classe.sistema.pas',
  classe.empresa in '..\Comum\classe.empresa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewPrincipal, ViewPrincipal);
  Application.Run;
end.
