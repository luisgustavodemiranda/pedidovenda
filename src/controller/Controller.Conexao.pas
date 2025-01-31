unit Controller.Conexao;

interface

uses
  DAO.Conexao;

type
  TControllerConexao = class
    private
      FConexao: TDAOConexao;
      constructor Create;
    public
      property DAOConexao: TDAOConexao read FConexao write FConexao;
      destructor Destroy; override;
      class function GetInstance: TControllerConexao;
  end;

implementation

var
  InstanciaBD: TControllerConexao;

{ TControllerConexao }

constructor TControllerConexao.Create;
begin
  inherited Create;
  FConexao := TDAOConexao.Create;
end;

destructor TControllerConexao.Destroy;
begin
  inherited;
  FConexao.Free;
end;

class function TControllerConexao.GetInstance: TControllerConexao;
begin
  if InstanciaBD = nil then
    InstanciaBD := TControllerConexao.Create;

  Result := InstanciaBD;
end;

initialization
  InstanciaBD := nil;

finalization
  if InstanciaBD <> nil then
    InstanciaBD.Free;

end.
