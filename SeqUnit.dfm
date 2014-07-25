object SeqForm: TSeqForm
  Left = 0
  Top = 0
  Caption = 'SeqForm'
  ClientHeight = 371
  ClientWidth = 326
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
    Left = 135
    Top = 16
    Width = 114
    Height = 23
    Caption = #36664#20837#31532#19968#20491#25976
  end
  object Label2: TLabel
    Left = 8
    Top = 232
    Width = 152
    Height = 23
    Caption = #36984#25799#35201#25214#30340#25976#20540#65306
  end
  object Memo1: TMemo
    Left = 8
    Top = 0
    Width = 121
    Height = 216
    Alignment = taRightJustify
    ReadOnly = True
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 135
    Top = 56
    Width = 121
    Height = 31
    Alignment = taRightJustify
    MaxLength = 6
    NumbersOnly = True
    TabOrder = 1
    Text = '0'
  end
  object ChkBtn: TButton
    Left = 273
    Top = 56
    Width = 41
    Height = 31
    Caption = #30906#35469
    TabOrder = 2
    OnClick = ChkBtnClick
  end
  object ClearBtn: TButton
    Left = 135
    Top = 105
    Width = 41
    Height = 33
    Caption = #27512#38646
    TabOrder = 3
    OnClick = ClearBtnClick
  end
  object BubbleSortBtn: TButton
    Left = 135
    Top = 144
    Width = 81
    Height = 33
    Caption = #27873#27819#25490#24207
    TabOrder = 4
    OnClick = BubbleSortBtnClick
  end
  object ExitBtn: TButton
    Left = 197
    Top = 330
    Width = 59
    Height = 33
    Caption = #38626#38283
    TabOrder = 5
    OnClick = ExitBtnClick
  end
  object ReveBtn: TButton
    Left = 135
    Top = 183
    Width = 85
    Height = 33
    Caption = #25490#24207#21453#36681
    TabOrder = 6
    Visible = False
    OnClick = ReveBtnClick
  end
  object BackBtn: TButton
    Left = 208
    Top = 105
    Width = 41
    Height = 33
    Caption = #8592
    TabOrder = 7
  end
  object CulTimeBtn: TButton
    Left = 230
    Top = 144
    Width = 85
    Height = 33
    Caption = #35352#25976#25490#24207
    TabOrder = 8
    OnClick = CulTimeBtnClick
  end
  object Edit2: TEdit
    Left = 176
    Top = 232
    Width = 80
    Height = 31
    Alignment = taRightJustify
    TabOrder = 9
    Text = '0'
  end
  object ChkBtn2: TButton
    Left = 8
    Top = 270
    Width = 75
    Height = 30
    Caption = #32218#24615#25628#23563
    TabOrder = 10
    OnClick = ChkBtn2Click
  end
end
