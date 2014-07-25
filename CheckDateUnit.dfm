object ChkDateForm: TChkDateForm
  Left = 0
  Top = 0
  Caption = 'ChkDateForm'
  ClientHeight = 390
  ClientWidth = 283
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 23
  object Label1: TLabel
    Left = 112
    Top = 46
    Width = 33
    Height = 41
    Caption = #24180
  end
  object Label2: TLabel
    Left = 112
    Top = 120
    Width = 33
    Height = 41
    Caption = #26376
  end
  object Label3: TLabel
    Left = 112
    Top = 192
    Width = 33
    Height = 41
    Caption = #26085
  end
  object Label4: TLabel
    Left = 168
    Top = 40
    Width = 105
    Height = 23
    Caption = #36664#20837'8'#20301#25976#23383
  end
  object Edit1: TEdit
    Left = 32
    Top = 43
    Width = 49
    Height = 41
    TabOrder = 0
  end
  object Button1: TButton
    Left = 32
    Top = 256
    Width = 65
    Height = 33
    Caption = #27298#26597#65281
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 103
    Top = 256
    Width = 65
    Height = 33
    Caption = #28165#31354
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 32
    Top = 120
    Width = 49
    Height = 41
    TabOrder = 3
  end
  object Edit3: TEdit
    Left = 32
    Top = 192
    Width = 49
    Height = 41
    TabOrder = 4
  end
  object Memo1: TMemo
    Left = 0
    Top = 301
    Width = 283
    Height = 89
    Align = alBottom
    TabOrder = 5
    ExplicitLeft = 32
    ExplicitTop = 295
    ExplicitWidth = 136
  end
  object Edit4: TEdit
    Left = 168
    Top = 80
    Width = 107
    Height = 31
    Alignment = taRightJustify
    TabOrder = 6
    Text = '0'
  end
  object Btn2Chk: TButton
    Left = 184
    Top = 136
    Width = 65
    Height = 49
    Caption = #30906#35469
    TabOrder = 7
    OnClick = Btn2ChkClick
  end
end
