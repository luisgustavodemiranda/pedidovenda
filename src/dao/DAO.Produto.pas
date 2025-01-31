unit DAO.Produto;

interface

uses
  Controller.Conexao,
  FireDAC.Comp.Client,
  FireDAC.DApt;

type
  TDAOProduto = class
    public
      function Pesquisar(const pValor: string): TFDQuery;
  end;

implementation

{ TDAOProduto }

function TDAOProduto.Pesquisar(const pValor: string): TFDQuery;
begin
  var lQuery := TControllerConexao.GetInstance.DAOConexao.CriarQuery;
  lQuery.Open('select descricao, preco_venda from produtos where codigo = ' + pValor);
  Result := lQuery;
end;

end.
