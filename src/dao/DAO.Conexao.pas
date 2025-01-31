unit DAO.Conexao;

interface

uses
  System.IniFiles,
  System.SysUtils,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.VCLUI.Wait,
  FireDAC.Comp.Client,
  FireDAC.Phys.MySQLDef,
  FireDAC.Phys.MySQL;

type
  TDAOConexao = class
    private
      FConexao: TFDConnection;
      FMySQLDriver: TFDPhysMySQLDriverLink;
      FDatabase: string;
      FUsername: string;
      FPassword: string;
      FPort: string;
      FServer: string;
      FVendorlib: string;
      procedure CarregarConfiguracao(const pValor: string);
    public
      function GetConexao(const pValor: string): TFDConnection;
      function CriarQuery: TFDQuery;
      constructor Create;
      destructor Destroy; override;
  end;

implementation

{ TDAOConexao }

procedure TDAOConexao.CarregarConfiguracao(const pValor: string);
begin
  var lParametros := TIniFile.Create(pValor);
  FDatabase := lParametros.ReadString('PARAMETROS', 'Database', FDatabase);
  FUsername := lParametros.ReadString('PARAMETROS', 'Username', FUsername);
  FPassword := lParametros.ReadString('PARAMETROS', 'Password', FPassword);
  FPort := lParametros.ReadString('PARAMETROS', 'Port', FPort);
  FServer := lParametros.ReadString('PARAMETROS', 'Server', FServer);
  FVendorlib := lParametros.ReadString('PARAMETROS', 'dll', FVendorlib);
end;

constructor TDAOConexao.Create;
begin
  inherited Create;
end;

function TDAOConexao.CriarQuery: TFDQuery;
begin
  var lQuery := TFDQuery.Create(nil);
  lQuery.Connection := FConexao;

  Result := lQuery;
end;

destructor TDAOConexao.Destroy;
begin
  inherited;
  FConexao.Free;
  FMySQLDriver.Free;
end;

function TDAOConexao.GetConexao(const pValor: string): TFDConnection;
begin
  CarregarConfiguracao(pValor);

  FConexao := TFDConnection.Create(nil);
  FConexao.DriverName := 'MySQL';
  FConexao.Params.Database := FDatabase;
  FConexao.Params.UserName := FUsername;
  FConexao.Params.Password := FPassword;
  FConexao.Params.Values['Port'] := FPort;
  FConexao.Params.Values['Server'] := FServer;
  FConexao.LoginPrompt := False;

  FMySQLDriver := TFDPhysMySQLDriverLink.Create(nil);
  FMySQLDriver.VendorLib := FVendorlib;

  Result := FConexao;
end;

end.
