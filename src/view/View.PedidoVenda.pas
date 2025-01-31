unit View.PedidoVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Padrao, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.WinXCtrls, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.UITypes;

type
  TFrmPedidoVenda = class(TFrmPadrao)
    pnlback: TPanel;
    pnlContainer: TPanel;
    pnlEmb: TPanel;
    Panel4: TPanel;
    Panel1: TPanel;
    Panel13: TPanel;
    Panel23: TPanel;
    Label2: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel26: TPanel;
    pnlButtonCancelar: TPanel;
    Shape9: TShape;
    btnCancelarpedido: TSpeedButton;
    Panel10: TPanel;
    Shape6: TShape;
    btnFinalizarPedido: TSpeedButton;
    Panel9: TPanel;
    Panel27: TPanel;
    Shape5: TShape;
    lblValorTotal: TLabel;
    SplitView1: TSplitView;
    pnlMenu: TPanel;
    Panel19: TPanel;
    SpeedButton1: TSpeedButton;
    Panel20: TPanel;
    SpeedButton2: TSpeedButton;
    Panel21: TPanel;
    SpeedButton4: TSpeedButton;
    gdProduto: TDBGrid;
    Panel5: TPanel;
    Label13: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label12: TLabel;
    Panel6: TPanel;
    Shape1: TShape;
    edtCodigoProduto: TEdit;
    Panel12: TPanel;
    Shape8: TShape;
    edtNomeCliente: TEdit;
    Panel7: TPanel;
    Shape2: TShape;
    edtQuantidade: TEdit;
    Panel11: TPanel;
    Shape3: TShape;
    edtValorUnitario: TEdit;
    Panel24: TPanel;
    Shape7: TShape;
    edtCodigoCliente: TEdit;
    Panel16: TPanel;
    Shape10: TShape;
    edtDescricaoProduto: TEdit;
    Label3: TLabel;
    dsProdutoPedido: TDataSource;
    mtProdutoPedido: TFDMemTable;
    mtProdutoPedidocod: TIntegerField;
    mtProdutoPedidodescricao: TStringField;
    mtProdutoPedidoqtd: TIntegerField;
    mtProdutoPedidoTotal_Item: TCurrencyField;
    mtProdutoPedidovl_unitario: TCurrencyField;
    Label8: TLabel;
    Panel14: TPanel;
    Shape11: TShape;
    edtPedido: TEdit;
    pnlPesquisaPedido: TPanel;
    Shape12: TShape;
    btnPesquisarPedido: TSpeedButton;
    Panel25: TPanel;
    Shape4: TShape;
    btnConfirmar: TSpeedButton;
    procedure edtCodigoClienteExit(Sender: TObject);
    procedure edtCodigoProdutoExit(Sender: TObject);
    procedure btnCancelarpedidoClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure edtQuantidadeExit(Sender: TObject);
    procedure btnFinalizarPedidoClick(Sender: TObject);
    procedure edtCodigoClienteChange(Sender: TObject);
    procedure dsProdutoPedidoStateChange(Sender: TObject);
    procedure btnPesquisarPedidoClick(Sender: TObject);
    procedure gdProdutoColEnter(Sender: TObject);
    procedure gdProdutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    FTotalPedido: Double;
    function ValidaCampos: Boolean;
    procedure BuscarCliente;
    procedure BuscarProduto;
    procedure BuscarNumeroPedido;
    procedure BuscarPedido;
    procedure BuscarProdutoPedido(const pValor: string);
    procedure LimpaCamposProduto;
    procedure LimpaCamposCliente;
  public
    { Public declarations }
  end;

var
  FrmPedidoVenda: TFrmPedidoVenda;

implementation

uses
  Controller.Cliente,
  Controller.Produto,
  Controller.Pedido,
  Controller.ProdutoPedido;

{$R *.dfm}

{ TFrmPedidoVenda }

procedure TFrmPedidoVenda.btnCancelarpedidoClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('Deseja cancelar o pedido?', mtConfirmation, [mbYes, mbNo],0) = mrYes then
  begin
    gdProduto.SetFocus;
    mtProdutoPedido.Close;
    edtPedido.Text := Format('%5.5d', [0]);
    FTotalPedido := 0;
    lblValorTotal.Caption := formatfloat( '##,###,##0.00', FTotalPedido);
    LimpaCamposCliente;
    LimpaCamposProduto;
  end;
end;

procedure TFrmPedidoVenda.btnConfirmarClick(Sender: TObject);
begin
  inherited;
  try
    if ValidaCampos then
    begin
      BuscarNumeroPedido;
      mtProdutoPedido.Open;
      dsProdutoPedido.DataSet := mtProdutoPedido;
      FTotalPedido := 0;

      mtProdutoPedido.Append;
      mtProdutoPedidocod.Value := StrToInt(edtCodigoProduto.Text);
      mtProdutoPedidodescricao.AsString := edtDescricaoProduto.Text;
      mtProdutoPedidoqtd.Value := StrToInt(edtQuantidade.Text);
      mtProdutoPedidovl_unitario.Value := StrToFloat(edtValorUnitario.Text);
      mtProdutoPedidoTotal_Item.Value := StrToFloat(edtValorUnitario.Text) *  StrToInt(edtQuantidade.Text);
      mtProdutoPedido.Post;
      FTotalPedido := FTotalPedido + mtProdutoPedidoTotal_Item.Value;
      lblValorTotal.Caption := formatfloat( '##,###,##0.00', FTotalPedido);
      edtCodigoProduto.SetFocus;
    end;
  finally
     LimpaCamposProduto;
  end;
end;

procedure TFrmPedidoVenda.btnFinalizarPedidoClick(Sender: TObject);
begin
  inherited;
  var lControllerPedido := TControllerPedido.Create;
  try
    lControllerPedido.ModelPedido.NumeroPedido := StrToInt(edtPedido.Text);
    lControllerPedido.ModelPedido.DataEmissao := Now;
    lControllerPedido.ModelPedido.CodigoCliente := StrToInt(edtCodigoCliente.Text);
    lControllerPedido.ModelPedido.ValorTotal := StrToCurr(lblValorTotal.Caption);

    lControllerPedido.Incluir;

   mtProdutoPedido.First;
   while not mtProdutoPedido.Eof do
    begin
      var lControllerProdutoPedido := TControllerProdutoPedido.Create;
      try
        lControllerProdutoPedido.ModelProdutoPedido.NumeroPedido := lControllerPedido.ModelPedido.NumeroPedido;
        lControllerProdutoPedido.ModelProdutoPedido.CodigoProduto := mtProdutoPedidocod.AsInteger;
        lControllerProdutoPedido.ModelProdutoPedido.Quantidade := mtProdutoPedidoqtd.AsInteger;
        lControllerProdutoPedido.ModelProdutoPedido.ValorUnitario := mtProdutoPedidovl_unitario.Value;
        lControllerProdutoPedido.ModelProdutoPedido.ValorTotal := mtProdutoPedidoTotal_Item.Value;

        lControllerProdutoPedido.Incluir;
        mtProdutoPedido.Next
      finally
        lControllerProdutoPedido.Free;
      end;
    end;

  finally
    lControllerPedido.Free;
    LimpaCamposCliente;
    mtProdutoPedido.Close;
  end;
end;

procedure TFrmPedidoVenda.btnPesquisarPedidoClick(Sender: TObject);
begin
  inherited;
  BuscarPedido;
end;

procedure TFrmPedidoVenda.BuscarCliente;
begin
  var lControllerCliente := TControllerCliente.Create;
  try
    MemTable.Close;

    if edtCodigoCliente.Text <> EmptyStr then
      MemTable.Data := lControllerCliente.Pesquisar(edtCodigoCliente.Text).Data;

    if MemTable.IsEmpty then
    begin
      LimpaCamposCliente;
      edtCodigoCliente.SetFocus;
    end
    else
    begin
      edtCodigoCliente.Text := MemTable.FieldByName('codigo').AsString;
      edtNomeCliente.Text := MemTable.FieldByName('nome').AsString;
    end;
  finally
    lControllerCliente.Free;
  end;
end;

procedure TFrmPedidoVenda.BuscarNumeroPedido;
begin
  var lControllerPedido := TControllerPedido.Create;
  try
    edtPedido.Text := Format('%5.5d', [lControllerPedido.GetNumeroPedido]);
  finally
    lControllerPedido.Free;
    edtCodigoCliente.SetFocus;
  end;
end;

procedure TFrmPedidoVenda.BuscarPedido;
begin
  var lControllerPedido := TControllerPedido.Create;
  try
    MemTable.Close;
    MemTable.Data := lControllerPedido.Pesquisar(edtPedido.Text).Data;

    edtCodigoCliente.Text := MemTable.FieldByName('codigo_cliente').AsString;
    lblValorTotal.Caption := FormatFloat( '##,###,##0.00', MemTable.FieldByName('valor_total').AsFloat);
    BuscarCliente;
    BuscarProdutoPedido(edtPedido.Text);
  finally
    lControllerPedido.Free;
  end;
end;

procedure TFrmPedidoVenda.BuscarProduto;
begin
  var lControllerProduto := TControllerProduto.Create;
  try
    MemTable.Close;

    if edtCodigoProduto.Text <> EmptyStr then
      MemTable.Data := lControllerProduto.Pesquisar(edtCodigoProduto.Text).Data;

    if MemTable.IsEmpty then
    begin
      LimpaCamposProduto;
    end
    else
    begin
      edtDescricaoProduto.Text := MemTable.FieldByName('descricao').AsString;
      edtValorUnitario.Text := formatfloat('##,###,##0.00', MemTable.FieldByName('preco_venda').AsFloat);
    end;
  finally
    lControllerProduto.Free;
  end;
end;

procedure TFrmPedidoVenda.BuscarProdutoPedido(const pValor: string);
begin
  var lControllerProdutoPedido := TControllerProdutoPedido.Create;
  try
    MemTable.Close;

    if edtPedido.Text <> EmptyStr then
    begin
      MemTable.Data := lControllerProdutoPedido.Pesquisar(pValor).Data;
      dsProdutoPedido.DataSet := MemTable;
    end;

  finally
    lControllerProdutoPedido.Free;
  end;
end;

procedure TFrmPedidoVenda.dsProdutoPedidoStateChange(Sender: TObject);
begin
  inherited;
  btnCancelarpedido.Enabled := mtProdutoPedido.RecordCount > 0;
end;

procedure TFrmPedidoVenda.edtCodigoClienteChange(Sender: TObject);
begin
  inherited;
  pnlPesquisaPedido.Visible := edtCodigoCliente.Text = EmptyStr;
end;

procedure TFrmPedidoVenda.edtCodigoClienteExit(Sender: TObject);
begin
  inherited;
  BuscarCliente;
end;

procedure TFrmPedidoVenda.edtCodigoProdutoExit(Sender: TObject);
begin
  inherited;
  BuscarProduto;
end;

procedure TFrmPedidoVenda.edtQuantidadeExit(Sender: TObject);
begin
  inherited;
  if edtQuantidade.Text = EmptyStr then
    edtQuantidade.SetFocus;
end;

procedure TFrmPedidoVenda.gdProdutoColEnter(Sender: TObject);
begin
  inherited;
  edtCodigoProduto.Text := dsProdutoPedido.DataSet.FieldByName('codigo_produto').AsString;
  edtQuantidade.Text := dsProdutoPedido.DataSet.FieldByName('quantidade').AsString;
  edtDescricaoProduto.Text := dsProdutoPedido.DataSet.FieldByName('descricao').AsString;
  edtValorUnitario.Text := dsProdutoPedido.DataSet.FieldByName('vlr_unitario').AsString;
end;

procedure TFrmPedidoVenda.gdProdutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key = vk_delete) and (dsProdutoPedido.DataSet.RecordCount > 0) then
  begin
    if dsProdutoPedido.DataSet.State in [dsBrowse] then
    begin
      if MessageDlg('Deseja excluir o registro?', mtConfirmation, mbYesNo, 0) = mrYes then
      begin
        dsProdutoPedido.DataSet.Delete;
        LimpaCamposProduto;
        LimpaCamposCliente;
      end;
    end;
  end;
end;

procedure TFrmPedidoVenda.LimpaCamposCliente;
begin
  edtCodigoCliente.Clear;
  edtNomeCliente.Clear;
end;

procedure TFrmPedidoVenda.LimpaCamposProduto;
begin
  edtQuantidade.Clear;
  edtCodigoProduto.Clear;
  edtDescricaoProduto.Clear;
  edtValorUnitario.Clear;
end;

function TFrmPedidoVenda.ValidaCampos: Boolean;
begin
  Result := True;

  if edtCodigoProduto.Text = EmptyStr then
  begin
    Result := False;
    Application.MessageBox('Preencha os dados do produto!','Campos inválidos', MB_OK+MB_ICONERROR);
  end;

    if edtCodigoCliente.Text = EmptyStr then
  begin
    Result := False;
    Application.MessageBox('Preencha os dados do cliente!','Campos inválidos', MB_OK+MB_ICONERROR);
  end;
end;

end.
