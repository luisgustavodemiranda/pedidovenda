inherited FrmPedidoVenda: TFrmPedidoVenda
  ClientHeight = 669
  ClientWidth = 856
  Position = poDesktopCenter
  ExplicitWidth = 872
  ExplicitHeight = 708
  TextHeight = 15
  object pnlback: TPanel
    Left = 0
    Top = 0
    Width = 856
    Height = 669
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object pnlContainer: TPanel
      Left = 0
      Top = 0
      Width = 860
      Height = 670
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      ExplicitTop = 40
      ExplicitHeight = 630
      DesignSize = (
        856
        669)
      object pnlEmb: TPanel
        Left = 0
        Top = 0
        Width = 856
        Height = 669
        Align = alClient
        TabOrder = 2
        ExplicitWidth = 860
        ExplicitHeight = 630
        object Panel4: TPanel
          Left = 1
          Top = 1
          Width = 858
          Height = 668
          Align = alClient
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          ExplicitHeight = 628
          object Panel1: TPanel
            Left = 0
            Top = 0
            Width = 858
            Height = 209
            Align = alTop
            BevelOuter = bvNone
            Padding.Left = 10
            Padding.Right = 10
            TabOrder = 0
            object Panel13: TPanel
              Left = 10
              Top = 0
              Width = 838
              Height = 66
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object Panel23: TPanel
                Left = 0
                Top = 0
                Width = 838
                Height = 66
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 0
                ExplicitWidth = 522
                object Label2: TLabel
                  Left = 0
                  Top = 0
                  Width = 115
                  Height = 21
                  Align = alTop
                  Caption = 'Pedido de Venda'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 3881271
                  Font.Height = -16
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentFont = False
                end
                object Panel14: TPanel
                  Left = 0
                  Top = 20
                  Width = 143
                  Height = 43
                  BevelOuter = bvNone
                  Padding.Left = 5
                  Padding.Top = 5
                  Padding.Right = 5
                  Padding.Bottom = 5
                  TabOrder = 0
                  object Shape11: TShape
                    Left = 5
                    Top = 5
                    Width = 133
                    Height = 33
                    Align = alClient
                    Pen.Color = 11710638
                    Shape = stRoundRect
                    ExplicitTop = 8
                    ExplicitWidth = 143
                    ExplicitHeight = 31
                  end
                  object edtPedido: TEdit
                    AlignWithMargins = True
                    Left = 11
                    Top = 13
                    Width = 121
                    Height = 17
                    Margins.Left = 6
                    Margins.Top = 8
                    Margins.Right = 6
                    Margins.Bottom = 8
                    Align = alClient
                    Alignment = taRightJustify
                    BorderStyle = bsNone
                    Color = clWhite
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -16
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                    Text = '00000'
                    ExplicitTop = 12
                    ExplicitHeight = 16
                  end
                end
                object pnlPesquisaPedido: TPanel
                  Left = 146
                  Top = 20
                  Width = 153
                  Height = 41
                  BevelOuter = bvNone
                  Padding.Left = 5
                  Padding.Top = 5
                  Padding.Right = 5
                  Padding.Bottom = 5
                  TabOrder = 1
                  object Shape12: TShape
                    Left = 5
                    Top = 5
                    Width = 143
                    Height = 31
                    Align = alClient
                    Brush.Color = 7381814
                    Pen.Color = 11710638
                    Shape = stRoundRect
                    ExplicitLeft = 24
                    ExplicitTop = 16
                    ExplicitWidth = 65
                    ExplicitHeight = 65
                  end
                  object btnPesquisarPedido: TSpeedButton
                    Left = 5
                    Top = 5
                    Width = 143
                    Height = 31
                    Align = alClient
                    Caption = 'Pesquisar Pedido'
                    Flat = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWhite
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    OnClick = btnPesquisarPedidoClick
                    ExplicitLeft = -75
                    ExplicitTop = 0
                  end
                end
              end
            end
            object Panel5: TPanel
              Left = 10
              Top = 66
              Width = 838
              Height = 143
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              ExplicitLeft = 5
              ExplicitTop = 67
              ExplicitWidth = 674
              object Label13: TLabel
                Left = 0
                Top = 9
                Width = 82
                Height = 16
                Caption = 'C'#243'digo Cliente'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label10: TLabel
                Left = 0
                Top = 68
                Width = 87
                Height = 16
                Caption = 'C'#243'digo Produto'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label11: TLabel
                Left = 490
                Top = 68
                Width = 65
                Height = 16
                Caption = 'Quantidade'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label14: TLabel
                Left = 115
                Top = 9
                Width = 94
                Height = 16
                Caption = 'Nome do Cliente'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label12: TLabel
                Left = 575
                Top = 68
                Width = 78
                Height = 16
                Caption = 'Valor Unit'#225'rio'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label3: TLabel
                Left = 115
                Top = 68
                Width = 121
                Height = 16
                Caption = 'Descri'#231#227'o do Produto'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Panel6: TPanel
                Left = -5
                Top = 83
                Width = 109
                Height = 41
                BevelOuter = bvNone
                Padding.Left = 5
                Padding.Top = 5
                Padding.Right = 5
                Padding.Bottom = 5
                TabOrder = 1
                object Shape1: TShape
                  Left = 5
                  Top = 5
                  Width = 99
                  Height = 31
                  Align = alClient
                  Pen.Color = 11710638
                  Shape = stRoundRect
                  ExplicitLeft = 4
                  ExplicitTop = 7
                end
                object edtCodigoProduto: TEdit
                  AlignWithMargins = True
                  Left = 11
                  Top = 13
                  Width = 87
                  Height = 15
                  Margins.Left = 6
                  Margins.Top = 8
                  Margins.Right = 6
                  Margins.Bottom = 8
                  Align = alClient
                  Alignment = taRightJustify
                  BorderStyle = bsNone
                  Color = clWhite
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  OnExit = edtCodigoProdutoExit
                  ExplicitLeft = 13
                  ExplicitTop = 12
                end
              end
              object Panel12: TPanel
                Left = 104
                Top = 24
                Width = 380
                Height = 41
                BevelOuter = bvNone
                Padding.Left = 5
                Padding.Top = 5
                Padding.Right = 5
                Padding.Bottom = 5
                TabOrder = 5
                object Shape8: TShape
                  Left = 5
                  Top = 5
                  Width = 370
                  Height = 31
                  Align = alClient
                  Pen.Color = 11710638
                  Shape = stRoundRect
                  ExplicitLeft = 24
                  ExplicitTop = 16
                  ExplicitWidth = 65
                  ExplicitHeight = 65
                end
                object edtNomeCliente: TEdit
                  AlignWithMargins = True
                  Left = 11
                  Top = 13
                  Width = 358
                  Height = 15
                  Margins.Left = 6
                  Margins.Top = 8
                  Margins.Right = 6
                  Margins.Bottom = 8
                  TabStop = False
                  Align = alClient
                  BorderStyle = bsNone
                  Color = clWhite
                  Enabled = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 0
                  ExplicitWidth = 341
                end
              end
              object Panel7: TPanel
                Left = 483
                Top = 82
                Width = 86
                Height = 41
                BevelOuter = bvNone
                Padding.Left = 5
                Padding.Top = 5
                Padding.Right = 5
                Padding.Bottom = 5
                TabOrder = 3
                object Shape2: TShape
                  Left = 5
                  Top = 5
                  Width = 76
                  Height = 31
                  Align = alClient
                  Pen.Color = 11710638
                  Shape = stRoundRect
                  ExplicitLeft = 4
                end
                object edtQuantidade: TEdit
                  AlignWithMargins = True
                  Left = 11
                  Top = 13
                  Width = 64
                  Height = 15
                  Margins.Left = 6
                  Margins.Top = 8
                  Margins.Right = 6
                  Margins.Bottom = 8
                  Align = alClient
                  Alignment = taRightJustify
                  BorderStyle = bsNone
                  Color = clWhite
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  OnExit = edtQuantidadeExit
                  ExplicitWidth = 97
                end
              end
              object Panel11: TPanel
                Left = 570
                Top = 82
                Width = 97
                Height = 41
                BevelOuter = bvNone
                Padding.Left = 5
                Padding.Top = 5
                Padding.Right = 5
                Padding.Bottom = 5
                TabOrder = 4
                object Shape3: TShape
                  Left = 5
                  Top = 5
                  Width = 87
                  Height = 31
                  Align = alClient
                  Pen.Color = 11710638
                  Shape = stRoundRect
                  ExplicitLeft = 24
                  ExplicitTop = 16
                  ExplicitWidth = 65
                  ExplicitHeight = 65
                end
                object edtValorUnitario: TEdit
                  AlignWithMargins = True
                  Left = 11
                  Top = 13
                  Width = 75
                  Height = 15
                  Margins.Left = 6
                  Margins.Top = 8
                  Margins.Right = 6
                  Margins.Bottom = 8
                  Align = alClient
                  Alignment = taRightJustify
                  BorderStyle = bsNone
                  Color = clWhite
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  ExplicitWidth = 131
                end
              end
              object Panel24: TPanel
                Left = -5
                Top = 24
                Width = 109
                Height = 41
                BevelOuter = bvNone
                Padding.Left = 5
                Padding.Top = 5
                Padding.Right = 5
                Padding.Bottom = 5
                TabOrder = 0
                object Shape7: TShape
                  Left = 5
                  Top = 5
                  Width = 99
                  Height = 31
                  Align = alClient
                  Pen.Color = 11710638
                  Shape = stRoundRect
                  ExplicitTop = 8
                  ExplicitWidth = 143
                end
                object edtCodigoCliente: TEdit
                  AlignWithMargins = True
                  Left = 11
                  Top = 13
                  Width = 87
                  Height = 15
                  Margins.Left = 6
                  Margins.Top = 8
                  Margins.Right = 6
                  Margins.Bottom = 8
                  Align = alClient
                  Alignment = taRightJustify
                  BorderStyle = bsNone
                  Color = clWhite
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  OnChange = edtCodigoClienteChange
                  OnExit = edtCodigoClienteExit
                  ExplicitLeft = 13
                  ExplicitTop = 12
                end
              end
              object Panel16: TPanel
                Left = 104
                Top = 83
                Width = 380
                Height = 41
                BevelOuter = bvNone
                Padding.Left = 5
                Padding.Top = 5
                Padding.Right = 5
                Padding.Bottom = 5
                TabOrder = 2
                object Shape10: TShape
                  Left = 5
                  Top = 5
                  Width = 370
                  Height = 31
                  Align = alClient
                  Pen.Color = 11710638
                  Shape = stRoundRect
                  ExplicitLeft = 24
                  ExplicitTop = 16
                  ExplicitWidth = 65
                  ExplicitHeight = 65
                end
                object edtDescricaoProduto: TEdit
                  AlignWithMargins = True
                  Left = 11
                  Top = 13
                  Width = 358
                  Height = 15
                  Margins.Left = 6
                  Margins.Top = 8
                  Margins.Right = 6
                  Margins.Bottom = 8
                  Align = alClient
                  Alignment = taRightJustify
                  BorderStyle = bsNone
                  Color = clWhite
                  Enabled = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 0
                  ExplicitWidth = 97
                end
              end
              object Panel25: TPanel
                Left = 670
                Top = 81
                Width = 153
                Height = 41
                BevelOuter = bvNone
                Padding.Left = 5
                Padding.Top = 5
                Padding.Right = 5
                Padding.Bottom = 5
                TabOrder = 6
                object Shape4: TShape
                  Left = 5
                  Top = 5
                  Width = 143
                  Height = 31
                  Align = alClient
                  Brush.Color = 7381814
                  Pen.Color = 11710638
                  Shape = stRoundRect
                  ExplicitLeft = 24
                  ExplicitTop = 16
                  ExplicitWidth = 65
                  ExplicitHeight = 65
                end
                object btnConfirmar: TSpeedButton
                  Left = 5
                  Top = 5
                  Width = 143
                  Height = 31
                  Align = alClient
                  Caption = 'Confirmar'
                  Flat = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  OnClick = btnConfirmarClick
                  ExplicitTop = 4
                end
              end
            end
          end
          object Panel2: TPanel
            Left = 0
            Top = 209
            Width = 858
            Height = 401
            Align = alClient
            BevelOuter = bvNone
            Padding.Left = 10
            Padding.Right = 10
            Padding.Bottom = 10
            TabOrder = 1
            ExplicitHeight = 361
            object gdProduto: TDBGrid
              Left = 10
              Top = 0
              Width = 838
              Height = 391
              Align = alClient
              DataSource = dsProdutoPedido
              Options = [dgEditing, dgTitles, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = 'Segoe UI'
              TitleFont.Style = []
              OnColEnter = gdProdutoColEnter
              OnKeyDown = gdProdutoKeyDown
              Columns = <
                item
                  Expanded = False
                  FieldName = 'codigo_produto'
                  Title.Caption = 'C'#243'digo'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'descricao'
                  Title.Caption = 'Descri'#231#227'o'
                  Width = 500
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'quantidade'
                  Title.Caption = 'Qtde'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'vlr_unitario'
                  Title.Caption = 'Vlr. Unit'#225'rio'
                  Width = 70
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'vlr_total'
                  Title.Caption = 'Vlr. Total'
                  Visible = True
                end>
            end
          end
          object Panel3: TPanel
            Left = 0
            Top = 610
            Width = 858
            Height = 58
            Align = alBottom
            BevelOuter = bvNone
            Padding.Left = 10
            Padding.Right = 10
            TabOrder = 2
            ExplicitTop = 570
            object Panel26: TPanel
              Left = 10
              Top = 0
              Width = 400
              Height = 58
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object pnlButtonCancelar: TPanel
                Left = 157
                Top = 8
                Width = 153
                Height = 41
                BevelOuter = bvNone
                Padding.Left = 5
                Padding.Top = 5
                Padding.Right = 5
                Padding.Bottom = 5
                TabOrder = 0
                object Shape9: TShape
                  Left = 5
                  Top = 5
                  Width = 143
                  Height = 31
                  Align = alClient
                  Brush.Color = 3681203
                  Pen.Color = 11710638
                  Shape = stRoundRect
                  ExplicitLeft = 24
                  ExplicitTop = 16
                  ExplicitWidth = 65
                  ExplicitHeight = 65
                end
                object btnCancelarpedido: TSpeedButton
                  Left = 5
                  Top = 5
                  Width = 143
                  Height = 31
                  Align = alClient
                  Caption = 'Cancelar Pedido'
                  Enabled = False
                  Flat = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  OnClick = btnCancelarpedidoClick
                  ExplicitLeft = 2
                  ExplicitTop = -2
                end
              end
              object Panel10: TPanel
                Left = 0
                Top = 8
                Width = 153
                Height = 41
                BevelOuter = bvNone
                Padding.Left = 5
                Padding.Top = 5
                Padding.Right = 5
                Padding.Bottom = 5
                TabOrder = 1
                object Shape6: TShape
                  Left = 5
                  Top = 5
                  Width = 143
                  Height = 31
                  Align = alClient
                  Brush.Color = 7381814
                  Pen.Color = 11710638
                  Shape = stRoundRect
                  ExplicitLeft = 24
                  ExplicitTop = 16
                  ExplicitWidth = 65
                  ExplicitHeight = 65
                end
                object btnFinalizarPedido: TSpeedButton
                  Left = 5
                  Top = 5
                  Width = 143
                  Height = 31
                  Align = alClient
                  Caption = 'Finalizar Pedido'
                  Flat = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  OnClick = btnFinalizarPedidoClick
                  ExplicitLeft = -11
                end
              end
            end
            object Panel9: TPanel
              Left = 410
              Top = 0
              Width = 438
              Height = 58
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              DesignSize = (
                434
                58)
              object Label8: TLabel
                Left = 22
                Top = 11
                Width = 181
                Height = 29
                Caption = 'Total do Pedido: '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -24
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Panel27: TPanel
                Left = 204
                Top = -5
                Width = 233
                Height = 61
                Anchors = [akRight]
                BevelOuter = bvNone
                Padding.Left = 5
                Padding.Top = 5
                Padding.Right = 5
                Padding.Bottom = 5
                TabOrder = 0
                ExplicitLeft = 208
                object Shape5: TShape
                  Left = 5
                  Top = 5
                  Width = 223
                  Height = 51
                  Align = alClient
                  Brush.Color = clCream
                  Pen.Color = 11710638
                  Shape = stRoundRect
                  ExplicitLeft = 40
                  ExplicitWidth = 244
                end
                object lblValorTotal: TLabel
                  Left = 107
                  Top = 11
                  Width = 112
                  Height = 40
                  Alignment = taRightJustify
                  Caption = 'R$ 0,00'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -33
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
              end
            end
          end
        end
      end
      object SplitView1: TSplitView
        Left = 0
        Top = 0
        Width = 0
        Height = 669
        Color = clWhite
        DisplayMode = svmOverlay
        Opened = False
        OpenedWidth = 200
        Placement = svpLeft
        TabOrder = 0
        ExplicitHeight = 630
        object pnlMenu: TPanel
          Left = 0
          Top = 0
          Width = 0
          Height = 670
          Align = alClient
          BevelOuter = bvNone
          Padding.Left = 5
          Padding.Top = 5
          Padding.Right = 5
          Padding.Bottom = 5
          TabOrder = 0
          ExplicitHeight = 630
          object Panel19: TPanel
            AlignWithMargins = True
            Left = 5
            Top = 49
            Width = 190
            Height = 41
            Margins.Left = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alTop
            BevelOuter = bvNone
            Color = 7381814
            ParentBackground = False
            TabOrder = 0
            object SpeedButton1: TSpeedButton
              Left = 0
              Top = 0
              Width = 190
              Height = 41
              Align = alClient
              Caption = 'Produtos'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitLeft = -3
              ExplicitTop = 2
            end
          end
          object Panel20: TPanel
            Left = 5
            Top = 5
            Width = 190
            Height = 41
            Align = alTop
            BevelOuter = bvNone
            Color = 7381814
            ParentBackground = False
            TabOrder = 1
            object SpeedButton2: TSpeedButton
              Left = 0
              Top = 0
              Width = 190
              Height = 41
              Align = alClient
              Caption = 'Clintes'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitLeft = 40
              ExplicitTop = 24
              ExplicitWidth = 23
              ExplicitHeight = 22
            end
          end
          object Panel21: TPanel
            AlignWithMargins = True
            Left = 5
            Top = 624
            Width = 190
            Height = 41
            Margins.Left = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alBottom
            BevelOuter = bvNone
            Color = 7381814
            ParentBackground = False
            TabOrder = 2
            ExplicitTop = 584
            object SpeedButton4: TSpeedButton
              Left = 0
              Top = 0
              Width = 190
              Height = 41
              Align = alClient
              Caption = 'Sair'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitTop = -6
            end
          end
        end
      end
    end
  end
  object dsProdutoPedido: TDataSource
    DataSet = mtProdutoPedido
    OnStateChange = dsProdutoPedidoStateChange
    Left = 697
    Top = 378
  end
  object mtProdutoPedido: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 593
    Top = 386
    object mtProdutoPedidocod: TIntegerField
      FieldName = 'codigo_produto'
    end
    object mtProdutoPedidodescricao: TStringField
      DisplayWidth = 82
      FieldName = 'descricao'
      Size = 100
    end
    object mtProdutoPedidoqtd: TIntegerField
      FieldName = 'quantidade'
    end
    object mtProdutoPedidovl_unitario: TCurrencyField
      FieldName = 'vlr_unitario'
      DisplayFormat = ' ,0.00;- ,0.00'
    end
    object mtProdutoPedidoTotal_Item: TCurrencyField
      FieldName = 'vlr_total'
      DisplayFormat = ' ,0.00;- ,0.00'
    end
  end
end
