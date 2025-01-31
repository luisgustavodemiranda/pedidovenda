unit Model.ProdutoPedido;

interface

uses
  FireDAC.Comp.Client;

type
  TModelProdutoPedido = class
  private
    FNumeroPedido: Integer;
    FCodigoProduto: Integer;
    FQuantidade: Integer;
    FValorUnitario: Currency;
    FValorTotal: Currency;
  public
    function PesquisarProdutos(const pValor: string): TFDQuery;
    function Incluir(pModelProdutoPedido: TModelProdutoPedido): Boolean;

    property NumeroPedido: Integer read FNumeroPedido write FNumeroPedido;
    property CodigoProduto: Integer read FCodigoProduto write FCodigoProduto;
    property Quantidade: Integer read FQuantidade write FQuantidade;
    property ValorUnitario: Currency read FValorUnitario write FValorUnitario;
    property ValorTotal: Currency read FValorTotal write FValorTotal;
  end;

implementation

uses
  DAO.ProdutoPedido;

{ TModelProdutoPedido }

function TModelProdutoPedido.Incluir(pModelProdutoPedido: TModelProdutoPedido): Boolean;
begin
  var lProdutoPedido := TDAOProdutoPedido.Create;
  try
    Result := lProdutoPedido.Incluir(Self);
  finally
    lProdutoPedido.Free;
  end;
end;

function TModelProdutoPedido.PesquisarProdutos(const pValor: string): TFDQuery;
begin
  var lProdutoPedido := TDAOProdutoPedido.Create;
  try
    Result := lProdutoPedido.PesquisarProdutos(pValor);
  finally
    lProdutoPedido.Free;
  end;
end;

end.
