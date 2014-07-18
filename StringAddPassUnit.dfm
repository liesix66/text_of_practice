object StringAddPassForm: TStringAddPassForm
  Left = 0
  Top = 0
  Caption = #23383#20018#21152#23494
  ClientHeight = 394
  ClientWidth = 348
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
    Left = 8
    Top = 168
    Width = 80
    Height = 19
    Caption = #35531#36664#20837#23494#30908
  end
  object Label2: TLabel
    Left = 8
    Top = 224
    Width = 128
    Height = 19
    Caption = #35531#36664#20837#35201#21152#23494#23383#20018
  end
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 348
    Height = 153
    Align = alTop
    ReadOnly = True
    TabOrder = 0
    ExplicitWidth = 361
  end
  object Edit1: TEdit
    Left = 8
    Top = 191
    Width = 249
    Height = 27
    Alignment = taRightJustify
    PasswordChar = '*'
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 8
    Top = 264
    Width = 249
    Height = 27
    Alignment = taRightJustify
    TabOrder = 2
  end
  object BtnSave: TButton
    Left = 8
    Top = 312
    Width = 73
    Height = 41
    Caption = #23384#27284
    TabOrder = 3
    OnClick = BtnSaveClick
  end
  object BtnLoad: TButton
    Left = 120
    Top = 312
    Width = 73
    Height = 41
    Caption = #35712#27284
    TabOrder = 4
    OnClick = BtnLoadClick
  end
  object BtnChk: TButton
    Left = 283
    Top = 264
    Width = 57
    Height = 27
    Caption = #30906#23450
    TabOrder = 5
    OnClick = BtnChkClick
  end
  object BtnClear: TButton
    Left = 224
    Top = 312
    Width = 73
    Height = 41
    Caption = #28165#31354
    TabOrder = 6
    OnClick = BtnClearClick
  end
  object Memo2: TMemo
    Left = 312
    Top = 184
    Width = 25
    Height = 17
    Lines.Strings = (
      'M'
      'e'
      'm'
      'o'
      '2')
    TabOrder = 7
    Visible = False
  end
  object BtnExit: TButton
    Left = 283
    Top = 359
    Width = 57
    Height = 26
    Caption = 'bye'
    TabOrder = 8
    OnClick = BtnExitClick
  end
  object OpenDialog1: TOpenDialog
    Left = 144
    Top = 368
  end
end
