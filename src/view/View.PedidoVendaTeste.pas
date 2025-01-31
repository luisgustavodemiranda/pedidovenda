unit View.PedidoVendaTeste;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids;

type
  TForm1 = class(TForm)
    Button1: TButton;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    DataSource1: TDataSource;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Controller.Conexao,
  Controller.Cliente,
  Controller.Produto,
  Controller.Pedido;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  var lControllerCliente := TControllerCliente.Create;
  var lMTCliente := TFDMemTable.Create(nil);

  DataSource1.DataSet := lMTCliente;
  lMTCliente.Close;

  if Edit1.Text <> EmptyStr then
    lMTCliente.Data := lControllerCliente.Pesquisar(Edit1.Text).Data;
end;

procedure TForm1.Edit2Change(Sender: TObject);
begin
  var lControllerProduto := TControllerProduto.Create;
  var lMTProduto := TFDMemTable.Create(nil);

  lMTProduto.Close;
  if Edit2.Text <> EmptyStr then
    lMTProduto.Data := lControllerProduto.Pesquisar(Edit2.Text).Data;

  if lMTProduto.IsEmpty then
  begin
    Edit3.Clear;
    Edit4.Clear;
  end
  else
  begin
    Edit3.Text := lMTProduto.FieldByName('descricao').AsString;
    Edit4.Text := lMTProduto.FieldByName('preco_venda').AsString;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  var lArquivoIni := ExtractFilePath(Application.ExeName) + '/Configuracao.ini';
  var lConexao := TControllerConexao.GetInstance().DAOConexao.GetConexao(lArquivoIni);
  lConexao.Connected := True;
  if lConexao.Connected then
    ShowMessage('Conectado');
end;

end.
