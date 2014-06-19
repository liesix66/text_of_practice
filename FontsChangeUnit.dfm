object FontsChangeForm: TFontsChangeForm
  Left = 0
  Top = 0
  Caption = 'FontsChangeForm'
  ClientHeight = 358
  ClientWidth = 354
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 23
  object Label1: TLabel
    Left = 32
    Top = 24
    Width = 76
    Height = 23
    Caption = #36984#25799#23383#22411
  end
  object Label2: TLabel
    Left = 200
    Top = 24
    Width = 76
    Height = 23
    Caption = #36664#20837#25991#23383
  end
  object Label3: TLabel
    Left = 32
    Top = 200
    Width = 76
    Height = 23
    Caption = #32080#26524#39023#31034
  end
  object ListBox1: TListBox
    Left = 32
    Top = 72
    Width = 137
    Height = 105
    ItemHeight = 23
    Items.Strings = (
      #32048#26126#39636
      #26032#32048#26126#39636
      #24494#36575#27491#40657#39636
      #27161#26999#39636)
    TabOrder = 0
    OnClick = CheckBtnClick
  end
  object Memo1: TMemo
    Left = 33
    Top = 240
    Width = 313
    Height = 73
    Lines.Strings = (
      #36664#20837#25991#23383)
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 200
    Top = 72
    Width = 121
    Height = 31
    TabOrder = 2
    Text = #36664#20837#25991#23383
    OnChange = CheckBtnClick
  end
  object CheckBtn: TButton
    Left = 200
    Top = 144
    Width = 57
    Height = 33
    Caption = #30906#35469
    TabOrder = 3
    Visible = False
    OnClick = CheckBtnClick
  end
  object ExitBtn: TButton
    Left = 288
    Top = 319
    Width = 57
    Height = 33
    Caption = #38626#38283
    TabOrder = 4
    OnClick = ExitBtnClick
  end
end
