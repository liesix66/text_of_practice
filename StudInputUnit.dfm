object StudInputForm: TStudInputForm
  Left = 0
  Top = 0
  Caption = 'StudInputForm'
  ClientHeight = 365
  ClientWidth = 364
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
    Left = 8
    Top = 24
    Width = 168
    Height = 29
    Caption = #35531#36664#20837#23416#29983#36039#26009
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 72
    Width = 38
    Height = 23
    Caption = #22995#21517
  end
  object Label3: TLabel
    Left = 8
    Top = 117
    Width = 76
    Height = 23
    Caption = #20358#33258#20309#34389
  end
  object Label4: TLabel
    Left = 8
    Top = 163
    Width = 76
    Height = 23
    Caption = #20837#23416#24180#20221
  end
  object Memo1: TMemo
    Left = 0
    Top = 223
    Width = 364
    Height = 142
    Align = alBottom
    TabOrder = 0
    ExplicitWidth = 295
  end
  object Edit1: TEdit
    Left = 104
    Top = 59
    Width = 72
    Height = 31
    TabOrder = 1
  end
  object SpinEdit1: TSpinEdit
    Left = 104
    Top = 160
    Width = 72
    Height = 33
    MaxValue = 2010
    MinValue = 1992
    TabOrder = 2
    Value = 1992
  end
  object Edit2: TEdit
    Left = 104
    Top = 114
    Width = 72
    Height = 31
    TabOrder = 3
  end
  object ChkBtn: TButton
    Left = 192
    Top = 58
    Width = 81
    Height = 33
    Caption = #30906#23450#36664#20837
    TabOrder = 4
    OnClick = ChkBtnClick
  end
  object ClearBtn: TButton
    Left = 192
    Top = 113
    Width = 81
    Height = 33
    Caption = #36039#26009#28165#31354
    TabOrder = 5
    OnClick = ClearBtnClick
  end
  object LoadBtn: TButton
    Left = 279
    Top = 58
    Width = 81
    Height = 33
    Caption = #35712#21462#36039#26009
    TabOrder = 6
    OnClick = LoadBtnClick
  end
  object SaveBtn: TButton
    Left = 279
    Top = 113
    Width = 81
    Height = 33
    Caption = #20786#23384#36039#26009
    TabOrder = 7
    OnClick = SaveBtnClick
  end
  object Memo2: TMemo
    Left = 248
    Top = 168
    Width = 65
    Height = 25
    Lines.Strings = (
      'Memo'
      '2')
    TabOrder = 8
    Visible = False
  end
  object OpenDialog1: TOpenDialog
    Left = 328
    Top = 24
  end
end
