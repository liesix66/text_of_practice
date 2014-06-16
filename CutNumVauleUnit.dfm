object CutNumVauleForm: TCutNumVauleForm
  Left = 0
  Top = 0
  Caption = 'CutNumVauleForm'
  ClientHeight = 380
  ClientWidth = 333
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
    Left = 24
    Top = 32
    Width = 288
    Height = 39
    Caption = #36664#20837#19977#20491#25976#23383#35336#31639#21644
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 145
    Width = 60
    Height = 25
    Caption = #25976#23383' 1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 192
    Width = 60
    Height = 25
    Caption = #25976#23383' 2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 24
    Top = 240
    Width = 60
    Height = 25
    Caption = #25976#23383' 3'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 12
    Top = 97
    Width = 150
    Height = 16
    Caption = #23567#25976#40670#26368#22823#25847#21462#30340#20301#32622
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 24
    Top = 119
    Width = 122
    Height = 13
    Caption = '('#22914#26524#27794#36664#20837#21063#40664#35469#28858'2)'
  end
  object Label7: TLabel
    Left = 24
    Top = 288
    Width = 42
    Height = 25
    Caption = #32080#26524
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 168
    Top = 145
    Width = 65
    Height = 25
    TabOrder = 0
    Text = '0'
  end
  object Edit2: TEdit
    Left = 168
    Top = 192
    Width = 65
    Height = 25
    TabOrder = 1
    Text = '0'
  end
  object Edit3: TEdit
    Left = 168
    Top = 240
    Width = 65
    Height = 25
    TabOrder = 2
    Text = '0'
  end
  object Edit4: TEdit
    Left = 168
    Top = 288
    Width = 65
    Height = 25
    ReadOnly = True
    TabOrder = 3
    Text = '0'
  end
  object Edit5: TEdit
    Left = 168
    Top = 95
    Width = 65
    Height = 25
    NumbersOnly = True
    TabOrder = 4
    Text = '2'
  end
  object CalculateBtn: TButton
    Left = 256
    Top = 192
    Width = 49
    Height = 73
    Caption = #35336#31639
    TabOrder = 5
    OnClick = CalculateBtnClick
  end
  object ClearBtn: TButton
    Left = 256
    Top = 97
    Width = 49
    Height = 73
    Caption = #27512#38646
    TabOrder = 6
    OnClick = ClearBtnClick
  end
  object ExitBtn: TButton
    Left = 256
    Top = 288
    Width = 49
    Height = 57
    Caption = #38626#38283
    TabOrder = 7
    OnClick = ExitBtnClick
  end
end
