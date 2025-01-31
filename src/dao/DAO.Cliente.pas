unit DAO.Cliente;

interface

uses
  Controller.Conexao,
  FireDAC.Comp.Client,
  FireDAC.DApt;

type
  TDAOCliente = class
  public
    function Pesquisar(const pValor: string): TFDQuery;
  end;

implementation

{ TDAOCliente }

function TDAOCliente.Pesquisar(const pValor: string): TFDQuery;
begin
  var lQuery := TControllerConexao.GetInstance.DAOConexao.CriarQuery;
  lQuery.Open('select codigo, nome from clientes where codigo = :codigo', [pValor]);
  Result := lQuery;
end;

end.
