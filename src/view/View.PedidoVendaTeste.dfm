object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 279
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object Button1: TButton
    Left = 135
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 96
    Width = 612
    Height = 161
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Edit1: TEdit
    Left = 8
    Top = 8
    Width = 121
    Height = 23
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 8
    Top = 56
    Width = 57
    Height = 23
    TabOrder = 3
    OnChange = Edit2Change
  end
  object Edit3: TEdit
    Left = 71
    Top = 56
    Width = 218
    Height = 23
    TabOrder = 4
  end
  object Edit4: TEdit
    Left = 295
    Top = 56
    Width = 57
    Height = 23
    TabOrder = 5
  end
  object DataSource1: TDataSource
    Left = 384
    Top = 104
  end
end
