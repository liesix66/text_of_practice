object EasyMultTableForm: TEasyMultTableForm
  Left = 0
  Top = 0
  Caption = 'EasyMultTableForm'
  ClientHeight = 430
  ClientWidth = 387
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
    Width = 114
    Height = 23
    Caption = #36664#20837#35336#31639#25976#23383
  end
  object Label2: TLabel
    Left = 80
    Top = 114
    Width = 76
    Height = 23
    Caption = #35336#31639#32080#26524
  end
  object Label3: TLabel
    Left = 80
    Top = 208
    Width = 114
    Height = 23
    Caption = #36664#20837#26597#35426#25976#23383
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
    Left = 105
    Top = 64
    Width = 89
    Height = 31
    Alignment = taRightJustify
    NumbersOnly = True
    TabOrder = 1
    Text = '0'
  end
  object CalculateBtn: TButton
    Left = 216
    Top = 59
    Width = 97
    Height = 41
    Caption = #35336#31639
    TabOrder = 2
    OnClick = CalculateBtnClick
  end
  object ClearBtn: TButton
    Left = 216
    Top = 138
    Width = 97
    Height = 41
    Caption = #28165#31354
    TabOrder = 3
    OnClick = ClearBtnClick
  end
  object ExitBtn: TButton
    Left = 282
    Top = 381
    Width = 97
    Height = 41
    Caption = #38626#38283
    TabOrder = 4
    OnClick = ExitBtnClick
  end
  object Edit2: TEdit
    Left = 105
    Top = 143
    Width = 89
    Height = 31
    Alignment = taRightJustify
    NumbersOnly = True
    TabOrder = 5
    Text = '0'
  end
  object Memo1: TMemo
    Left = 24
    Top = 288
    Width = 201
    Height = 97
    Lines.Strings = (
      #35531#36664#20837#20219#24847#25976)
    TabOrder = 6
  end
  object Edit3: TEdit
    Left = 105
    Top = 237
    Width = 89
    Height = 31
    Alignment = taRightJustify
    NumbersOnly = True
    TabOrder = 7
    Text = '0'
  end
  object SerchBtn: TButton
    Left = 216
    Top = 227
    Width = 97
    Height = 41
    Caption = #26597#35426
    TabOrder = 8
    OnClick = SerchBtnClick
  end
end
