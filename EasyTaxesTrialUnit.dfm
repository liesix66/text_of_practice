object EasyTaxesTrialForm: TEasyTaxesTrialForm
  Left = 0
  Top = 0
  Caption = 'EasyTaxesTrialForm'
  ClientHeight = 302
  ClientWidth = 361
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 174
    Height = 35
    Caption = #31777#26131#31237#21046#35336#31639
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 80
    Width = 84
    Height = 25
    Caption = #36664#20837#34218#36039
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 136
    Width = 105
    Height = 25
    Caption = #34218#36039#32026#36317#28858
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 16
    Top = 192
    Width = 133
    Height = 25
    Caption = #35201#32371#31237#37329#28858' '#65306
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 168
    Top = 80
    Width = 81
    Height = 21
    NumbersOnly = True
    TabOrder = 0
    Text = '0'
  end
  object Edit2: TEdit
    Left = 168
    Top = 136
    Width = 81
    Height = 21
    ReadOnly = True
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 168
    Top = 192
    Width = 81
    Height = 21
    ReadOnly = True
    TabOrder = 2
    Text = '0'
  end
  object CauculateBtn: TButton
    Left = 270
    Top = 66
    Width = 58
    Height = 49
    Caption = #35336#31639
    TabOrder = 3
    OnClick = CauculateBtnClick
  end
  object ClearBtn: TButton
    Left = 271
    Top = 136
    Width = 57
    Height = 50
    Caption = #27512#38646
    TabOrder = 4
    OnClick = ClearBtnClick
  end
  object ExitBtn: TButton
    Left = 271
    Top = 207
    Width = 57
    Height = 50
    Caption = #38626#38283
    TabOrder = 5
    OnClick = ExitBtnClick
  end
end
