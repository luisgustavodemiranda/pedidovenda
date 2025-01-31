program PedidoVenda;

uses
  Vcl.Forms,
  View.PedidoVendaTeste in 'view\View.PedidoVendaTeste.pas' {Form1},
  Model.ProdutoPedido in 'model\Model.ProdutoPedido.pas',
  Model.Pedido in 'model\Model.Pedido.pas',
  Model.Cliente in 'model\Model.Cliente.pas',
  Model.Produto in 'model\Model.Produto.pas',
  Controller.Cliente in 'controller\Controller.Cliente.pas',
  Controller.Conexao in 'controller\Controller.Conexao.pas',
  DAO.Conexao in 'dao\DAO.Conexao.pas',
  DAO.Cliente in 'dao\DAO.Cliente.pas',
  DAO.Produto in 'dao\DAO.Produto.pas',
  Controller.Produto in 'controller\Controller.Produto.pas',
  View.Padrao in 'view\View.Padrao.pas' {FrmPadrao},
  View.PedidoVenda in 'view\View.PedidoVenda.pas' {FrmPedidoVenda},
  DAO.Pedido in 'dao\DAO.Pedido.pas',
  Controller.Pedido in 'controller\Controller.Pedido.pas',
  DAO.ProdutoPedido in 'dao\DAO.ProdutoPedido.pas',
  Controller.ProdutoPedido in 'controller\Controller.ProdutoPedido.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPedidoVenda, FrmPedidoVenda);
  Application.Run;
end.
