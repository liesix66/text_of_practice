object WordSeqForm: TWordSeqForm
  Left = 0
  Top = 0
  Caption = 'WordSeqForm'
  ClientHeight = 334
  ClientWidth = 339
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    Left = 16
    Top = 208
    Width = 80
    Height = 19
    Caption = #35531#36664#20837#23383#20018
  end
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 339
    Height = 193
    Align = alTop
    MaxLength = 20
    TabOrder = 0
    ExplicitWidth = 467
  end
  object Edit1: TEdit
    Left = 112
    Top = 208
    Width = 105
    Height = 27
    TabOrder = 1
  end
  object BtnSeq: TButton
    Left = 16
    Top = 264
    Width = 65
    Height = 41
    Caption = #25490#24207
    TabOrder = 2
    OnClick = BtnSeqClick
  end
  object BtnRev: TButton
    Left = 96
    Top = 264
    Width = 73
    Height = 41
    Caption = #21453#36681#25490#24207
    TabOrder = 3
  end
  object BtnClear: TButton
    Left = 175
    Top = 264
    Width = 73
    Height = 41
    Caption = #28165#31354
    TabOrder = 4
    OnClick = BtnClearClick
  end
  object BtnExit: TButton
    Left = 254
    Top = 264
    Width = 73
    Height = 41
    Caption = #38626#38283
    TabOrder = 5
  end
  object BtnInput: TButton
    Left = 248
    Top = 208
    Width = 81
    Height = 41
    Caption = #36664#20837
    TabOrder = 6
    OnClick = BtnInputClick
  end
end
