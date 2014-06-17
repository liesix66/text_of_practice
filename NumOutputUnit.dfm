object Numoutputform: TNumoutputform
  Left = 0
  Top = 0
  Caption = 'Numoutputform'
  ClientHeight = 248
  ClientWidth = 295
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    Left = 16
    Top = 160
    Width = 128
    Height = 19
    Caption = #36984#25799#35201#39023#31034#30340#25976#23383
  end
  object TriangleNumBtn: TButton
    Left = 8
    Top = 199
    Width = 73
    Height = 41
    Caption = #19977#35282#22411#25976
    TabOrder = 0
    OnClick = TriangleNumBtnClick
  end
  object ClearBtn: TButton
    Left = 96
    Top = 199
    Width = 73
    Height = 41
    Caption = #28165#31354
    TabOrder = 1
    OnClick = ClearBtnClick
  end
  object ExitBtn: TButton
    Left = 184
    Top = 199
    Width = 73
    Height = 41
    Caption = #38626#38283
    TabOrder = 2
    OnClick = ExitBtnClick
  end
  object ListBox1: TListBox
    Left = 0
    Top = 0
    Width = 295
    Height = 154
    Align = alTop
    ItemHeight = 19
    TabOrder = 3
    ExplicitWidth = 567
  end
end
