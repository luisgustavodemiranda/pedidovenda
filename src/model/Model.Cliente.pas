unit Model.Cliente;

interface

uses
  DAO.Cliente,
  FireDAC.Comp.Client,
  FireDAC.DApt;

type
  TModelCliente = class
  private
    FCodigo: Integer;
    FNome: string;
    FCidade: string;
    FUF: string;
  public
    function Pesquisar(const pValor: string): TFDQuery;

    property Codigo: Integer read FCodigo write FCodigo;
    property Nome: string read FNome write FNome;
    property Cidade: string read FCidade write FCidade;
    property UF: string read FUF write FUF;
  end;

implementation

{ TModelCliente }

function TModelCliente.Pesquisar(const pValor: string): TFDQuery;
begin
  var lCliente := TDAOCliente.Create;
  try
    Result := lCliente.Pesquisar(pValor);
  finally
    lCliente.Free;
  end;
end;

end.
