unit Controller.ProdutoPedido;

interface

uses
  Model.ProdutoPedido,
  FireDAC.Comp.Client;

type
  TControllerProdutoPedido = class
  private
    FModelProdutoPedido: TModelProdutoPedido;
  public
    constructor Create;
    destructor Destroy; override;

    function Pesquisar(const pValor: string): TFDQuery;
    function Incluir: Boolean;

    property ModelProdutoPedido: TModelProdutoPedido read FModelProdutoPedido write FModelProdutoPedido;
  end;

implementation

{ TControllerProdutoPedido }

constructor TControllerProdutoPedido.Create;
begin
  FModelProdutoPedido := TModelProdutoPedido.Create;
  inherited Create;
end;

destructor TControllerProdutoPedido.Destroy;
begin
  FModelProdutoPedido.Free;
  inherited;
end;

function TControllerProdutoPedido.Incluir: Boolean;
begin
  Result := FModelProdutoPedido.Incluir(FModelProdutoPedido);
end;

function TControllerProdutoPedido.Pesquisar(const pValor: string): TFDQuery;
begin
  Result := FModelProdutoPedido.PesquisarProdutos(pValor);
end;

end.
