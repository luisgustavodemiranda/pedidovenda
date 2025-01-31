unit Model.Pedido;

interface

uses
  FireDAC.Comp.Client;

type
  TModelPedido = class
  private
    FNumeroPedido: Integer;
    FDataEmissao: TDateTime;
    FCodigoCliente: Integer;
    FValorTotal: Currency;
  public
    function GetNumeroPedido: Integer;
    function Pesquisar(const pValor: string): TFDQuery;
    function Incluir(pModelPedido: TModelPedido): Boolean;

    property NumeroPedido: Integer read FNumeroPedido write FNumeroPedido;
    property DataEmissao: TDateTime read FDataEmissao write FDataEmissao;
    property CodigoCliente: Integer read FCodigoCliente write FCodigoCliente;
    property ValorTotal: Currency read FValorTotal write FValorTotal;
  end;

implementation

uses
  DAO.Pedido;

{ TModelPedido }

function TModelPedido.GetNumeroPedido: Integer;
begin
  var lPedido := TDAOPedido.Create;
  try
    Result := lPedido.GetNumeroPedido;
  finally
    lPedido.Free;
  end;
end;

function TModelPedido.Incluir(pModelPedido: TModelPedido): Boolean;
begin
  var lPedido := TDAOPedido.Create;
  try
    Result := lPedido.Incluir(Self);
  finally
    lPedido.Free;
  end;
end;

function TModelPedido.Pesquisar(const pValor: string): TFDQuery;
begin
  var lPedido := TDAOPedido.Create;
  try
    Result := lPedido.Pesquisar(pValor);
  finally
    lPedido.Free;
  end;
end;

end.
