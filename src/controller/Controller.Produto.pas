unit Controller.Produto;

interface

uses
  Model.Produto,
  FireDAC.Comp.Client;

type
  TControllerProduto = class
  private
    FModelProduto: TModelProduto;
  public
    constructor Create;
    destructor Destroy; override;

    function Pesquisar(const pValor: string): TFDQuery;

    property ModelProduto: TModelProduto read FModelProduto write FModelProduto;
  end;

implementation

{ TControllerProduto }

constructor TControllerProduto.Create;
begin
  FModelProduto := TModelProduto.Create;
  inherited Create;
end;

destructor TControllerProduto.Destroy;
begin
  FModelProduto.Free;
  inherited;
end;

function TControllerProduto.Pesquisar(const pValor: string): TFDQuery;
begin
  Result := FModelProduto.Pesquisar(pValor);
end;

end.
