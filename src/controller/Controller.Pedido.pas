unit Controller.Pedido;

interface

uses
  Model.Pedido, FireDAC.Comp.Client;

type
  TControllerPedido = class
  private
    FModelPedido: TModelPedido;
  public
    constructor Create;
    destructor Destroy; override;

    function GetNumeroPedido: Integer;
    function Pesquisar(const pValor: string): TFDQuery;
    function Incluir: Boolean;

    property ModelPedido: TModelPedido read FModelPedido write FModelPedido;
  end;

implementation

{ TControllerPedido }

constructor TControllerPedido.Create;
begin
  FModelPedido := TModelPedido.Create;
  inherited Create;
end;

destructor TControllerPedido.Destroy;
begin
  FModelPedido.Free;
  inherited;
end;

function TControllerPedido.GetNumeroPedido: Integer;
begin
  Result := FModelPedido.GetNumeroPedido;
end;

function TControllerPedido.Incluir: Boolean;
begin
  Result := FModelPedido.Incluir(FModelPedido);
end;

function TControllerPedido.Pesquisar(const pValor: string): TFDQuery;
begin
  Result := FModelPedido.Pesquisar(pValor);
end;

end.
