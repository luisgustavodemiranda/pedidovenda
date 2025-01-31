unit Controller.Cliente;

interface

uses
  Model.Cliente,
  FireDAC.Comp.Client;

type
  TControllerCliente = class
  private
    FModelCliente: TModelCliente;
  public
    constructor Create;
    destructor Destroy; override;

    function Pesquisar(const pValor: string): TFDQuery;

    property ModelCliente: TModelCliente read FModelCliente write FModelCliente;
  end;

implementation

{ TControllerCliente }

constructor TControllerCliente.Create;
begin
  FModelCliente := TModelCliente.Create;
  inherited Create;
end;

destructor TControllerCliente.Destroy;
begin
  FModelCliente.Free;
  inherited;
end;

function TControllerCliente.Pesquisar(const pValor: string): TFDQuery;
begin
  Result := FModelCliente.Pesquisar(pValor);
end;

end.
