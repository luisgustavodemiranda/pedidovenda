unit DAO.Pedido;

interface

uses
  Controller.Conexao,
  Model.Pedido,
  FireDAC.Comp.Client,
  FireDAC.DApt;

type
  TDAOPedido = class
  public
    function GetNumeroPedido: Integer;
    function Pesquisar(const pValor: string): TFDQuery;
    function Incluir(pModelPedido: TModelPedido): Boolean;
  end;

implementation

{ TDAOPedido }

function TDAOPedido.GetNumeroPedido: Integer;
begin
  var lQuery := TControllerConexao.GetInstance.DAOConexao.CriarQuery;
  lQuery.Open('select COUNT(num_pedido) as numero from pedidos');
  Result := lQuery.FieldByName('numero').AsInteger + 1;
end;

function TDAOPedido.Incluir(pModelPedido: TModelPedido): Boolean;
begin
  try
    var lQuery := TControllerConexao.GetInstance.DAOConexao.CriarQuery;
    try
      lQuery.ExecSQL('insert into pedidos(num_pedido, data_emissao, codigo_cliente, valor_total) ' +
        'values(:num_pedido, :data_emissao, :codigo_cliente, :valor_total) ', [pModelPedido.NumeroPedido, pModelPedido.DataEmissao,
        pModelPedido.CodigoCliente, pModelPedido.ValorTotal]);
    finally
      lQuery.Free;
    end;
    Result := True;
  except
    Result := False;
  end;
end;

function TDAOPedido.Pesquisar(const pValor: string): TFDQuery;
begin
  var lQuery := TControllerConexao.GetInstance.DAOConexao.CriarQuery;
  lQuery.Open('select num_pedido, codigo_cliente, valor_total from pedidos where num_pedido = :num_pedido', [pValor]);
  Result := lQuery;
end;

end.
