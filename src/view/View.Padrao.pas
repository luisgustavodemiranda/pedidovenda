unit View.Padrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Comp.Client;

type
  TFrmPadrao = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FDataSource: TDataSource;
    FMemTable: TFDMemTable;
  public
    property DataSource: TDataSource read FDataSource write FDataSource;
    property MemTable: TFDMemTable read FMemTable write FMemTable;
  end;

var
  FrmPadrao: TFrmPadrao;

implementation

uses
  Controller.Conexao;

{$R *.dfm}

{ TFrmPadrao }

procedure TFrmPadrao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FDataSource.Free;
  FMemTable.Free;
end;

procedure TFrmPadrao.FormCreate(Sender: TObject);
begin
  var lArquivoIni := ExtractFilePath(Application.ExeName) + '/Configuracao.ini';
  TControllerConexao.GetInstance().DAOConexao.GetConexao(lArquivoIni);

  FDataSource := TDataSource.Create(nil);
  FMemTable := TFDMemTable.Create(nil);
end;

procedure TFrmPadrao.FormShow(Sender: TObject);
begin
  FDataSource.DataSet := FMemTable;
end;

end.
