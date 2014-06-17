object EasyMultTableForm: TEasyMultTableForm
  Left = 0
  Top = 0
  Caption = 'EasyMultTableForm'
  ClientHeight = 267
  ClientWidth = 297
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
    Left = 80
    Top = 24
    Width = 76
    Height = 23
    Caption = #36664#20837#25976#23383
  end
  object Label2: TLabel
    Left = 80
    Top = 162
    Width = 38
    Height = 23
    Caption = #32080#26524
  end
  object ListBox1: TListBox
    Left = 24
    Top = 24
    Width = 33
    Height = 217
    BevelOuter = bvRaised
    BiDiMode = bdLeftToRight
    ItemHeight = 23
    Items.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9')
    ParentBiDiMode = False
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 80
    Top = 72
    Width = 89
    Height = 31
    Alignment = taRightJustify
    NumbersOnly = True
    TabOrder = 1
    Text = '0'
  end
  object CalculateBtn: TButton
    Left = 184
    Top = 32
    Width = 97
    Height = 41
    Caption = #35336#31639
    TabOrder = 2
    OnClick = CalculateBtnClick
  end
  object ClearBtn: TButton
    Left = 184
    Top = 112
    Width = 97
    Height = 41
    Caption = #28165#31354
    TabOrder = 3
    OnClick = ClearBtnClick
  end
  object ExitBtn: TButton
    Left = 184
    Top = 190
    Width = 97
    Height = 41
    Caption = #38626#38283
    TabOrder = 4
    OnClick = ExitBtnClick
  end
  object Edit2: TEdit
    Left = 80
    Top = 200
    Width = 89
    Height = 31
    Alignment = taRightJustify
    NumbersOnly = True
    TabOrder = 5
    Text = '0'
  end
end
