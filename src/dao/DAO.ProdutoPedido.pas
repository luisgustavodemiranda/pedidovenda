unit DAO.ProdutoPedido;

interface

uses
  Controller.Conexao,
  Model.ProdutoPedido,
  FireDAC.Comp.Client,
  FireDAC.DApt;

type
  TDAOProdutoPedido = class
  public
    function PesquisarProdutos(const pValor: string): TFDQuery;
    function Incluir(pModelProdutoPedido: TModelProdutoPedido): Boolean;
  end;

implementation

{ TDAOProdutoPedido }

function TDAOProdutoPedido.Incluir(pModelProdutoPedido: TModelProdutoPedido): Boolean;
begin
  try
    var lQuery := TControllerConexao.GetInstance.DAOConexao.CriarQuery;
    try
      lQuery.ExecSQL('insert into pedidos_produtos (num_pedido, codigo_produto, quantidade, vlr_unitario, vlr_total) ' +
                     'values (:num_pedido, :codigo_produto, :quantidade, :vlr_unitario, :vlr_total)',
                     [pModelProdutoPedido.NumeroPedido, pModelProdutoPedido.CodigoProduto, pModelProdutoPedido.Quantidade,
                     pModelProdutoPedido.ValorUnitario, pModelProdutoPedido.ValorTotal]);
      Result := True;
    finally
      lQuery.Free;
    end;
  except
    Result := False;
  end;

end;

function TDAOProdutoPedido.PesquisarProdutos(const pValor: string): TFDQuery;
begin
  var lQuery := TControllerConexao.GetInstance.DAOConexao.CriarQuery;
  lQuery.Open('select pedidos_produtos.num_pedido, ' +
              '       pedidos_produtos.codigo_produto, ' +
              '       produtos.descricao, ' +
              '       pedidos_produtos.quantidade, ' +
              '       pedidos_produtos.vlr_unitario, ' +
              '       pedidos_produtos.vlr_total ' +
              'from pedidos_produtos ' +
              'inner join produtos on produtos.codigo = pedidos_produtos.codigo_produto ' +
              'where pedidos_produtos.num_pedido = :pedido', [pValor]);
  Result := lQuery;
end;

end.
