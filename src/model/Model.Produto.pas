unit Model.Produto;

interface

uses
  DAO.Produto,
  FireDAC.Comp.Client,
  FireDAC.DApt;

type
  TModelProduto = class
  private
    FCodigo: Integer;
    FDescricao: string;
    FPrecoVenda: Currency;
  public
    function Pesquisar(const pValor: string): TFDQuery;

    property Codigo: Integer read FCodigo write FCodigo;
    property Descricao: string read FDescricao write FDescricao;
    property PrecoVenda: Currency read FPrecoVenda write FPrecoVenda;
  end;

implementation

{ TModelProduto }

function TModelProduto.Pesquisar(const pValor: string): TFDQuery;
begin
  var lProduto := TDAOProduto.Create;
  try
    Result := lProduto.Pesquisar(pValor);
  finally
    lProduto.Free;
  end;
end;

end.
