object OrderFoodForm: TOrderFoodForm
  Left = 0
  Top = 0
  Caption = 'OrderFoodForm'
  ClientHeight = 483
  ClientWidth = 328
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
    Left = 8
    Top = 8
    Width = 128
    Height = 39
    Caption = #38627#21507#23567#33302
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 83
    Width = 76
    Height = 23
    Caption = #39184#40670#21517#31281
  end
  object Label3: TLabel
    Left = 205
    Top = 83
    Width = 76
    Height = 23
    Caption = #39184#40670#25976#37327
  end
  object Label4: TLabel
    Left = 8
    Top = 131
    Width = 57
    Height = 23
    Caption = #39764#33735#22561
  end
  object Label5: TLabel
    Left = 8
    Top = 171
    Width = 57
    Height = 23
    Caption = #28407#32933#32905
  end
  object Label6: TLabel
    Left = 8
    Top = 211
    Width = 38
    Height = 23
    Caption = #29275#32922
  end
  object Label7: TLabel
    Left = 8
    Top = 251
    Width = 95
    Height = 23
    Caption = #37707#29138#38525#26149#40629
  end
  object Label8: TLabel
    Left = 8
    Top = 291
    Width = 95
    Height = 23
    Caption = #28951#28900#28023#39854#39151
  end
  object Label9: TLabel
    Left = 8
    Top = 331
    Width = 76
    Height = 23
    Caption = #34718#34811#19979#34507
  end
  object Label10: TLabel
    Left = 8
    Top = 371
    Width = 76
    Height = 23
    Caption = #32005#29138#38622#24515
  end
  object Label11: TLabel
    Left = 8
    Top = 400
    Width = 294
    Height = 23
    Caption = '------------------------------------------'
  end
  object Label12: TLabel
    Left = 8
    Top = 429
    Width = 38
    Height = 23
    Caption = #32317#20729
  end
  object Label13: TLabel
    Left = 107
    Top = 83
    Width = 76
    Height = 23
    Caption = #39184#40670#20729#26684
  end
  object Label14: TLabel
    Left = 102
    Top = 429
    Width = 100
    Height = 23
    Caption = '('#26381#21209#36027'3'#25104')'
  end
  object SpinEdit1: TSpinEdit
    Left = 208
    Top = 128
    Width = 73
    Height = 33
    MaxLength = 2
    MaxValue = 10
    MinValue = 0
    TabOrder = 0
    Value = 0
    OnChange = CulcalBtnClick
  end
  object Edit1: TEdit
    Left = 118
    Top = 131
    Width = 65
    Height = 31
    Alignment = taRightJustify
    ReadOnly = True
    TabOrder = 1
    Text = '90'
  end
  object Edit2: TEdit
    Left = 118
    Top = 168
    Width = 65
    Height = 31
    Alignment = taRightJustify
    ReadOnly = True
    TabOrder = 2
    Text = '115'
  end
  object Edit3: TEdit
    Left = 118
    Top = 211
    Width = 65
    Height = 31
    Alignment = taRightJustify
    ReadOnly = True
    TabOrder = 3
    Text = '250'
  end
  object Edit4: TEdit
    Left = 118
    Top = 251
    Width = 65
    Height = 31
    Alignment = taRightJustify
    ReadOnly = True
    TabOrder = 4
    Text = '88'
  end
  object Edit5: TEdit
    Left = 118
    Top = 291
    Width = 65
    Height = 31
    Alignment = taRightJustify
    ReadOnly = True
    TabOrder = 5
    Text = '210'
  end
  object Edit6: TEdit
    Left = 118
    Top = 331
    Width = 65
    Height = 31
    Alignment = taRightJustify
    ReadOnly = True
    TabOrder = 6
    Text = '150'
  end
  object Edit7: TEdit
    Left = 118
    Top = 371
    Width = 65
    Height = 31
    Alignment = taRightJustify
    ReadOnly = True
    TabOrder = 7
    Text = '300'
  end
  object Edit8: TEdit
    Left = 208
    Top = 429
    Width = 73
    Height = 31
    Alignment = taRightJustify
    TabOrder = 8
    Text = '0'
  end
  object SpinEdit2: TSpinEdit
    Left = 208
    Top = 172
    Width = 73
    Height = 33
    MaxLength = 2
    MaxValue = 10
    MinValue = 0
    TabOrder = 9
    Value = 0
    OnChange = CulcalBtnClick
  end
  object SpinEdit3: TSpinEdit
    Left = 208
    Top = 211
    Width = 73
    Height = 33
    MaxLength = 2
    MaxValue = 10
    MinValue = 0
    TabOrder = 10
    Value = 0
    OnChange = CulcalBtnClick
  end
  object SpinEdit4: TSpinEdit
    Left = 208
    Top = 250
    Width = 73
    Height = 33
    MaxLength = 2
    MaxValue = 10
    MinValue = 0
    TabOrder = 11
    Value = 0
    OnChange = CulcalBtnClick
  end
  object SpinEdit5: TSpinEdit
    Left = 208
    Top = 289
    Width = 73
    Height = 33
    MaxLength = 2
    MaxValue = 10
    MinValue = 0
    TabOrder = 12
    Value = 0
    OnChange = CulcalBtnClick
  end
  object SpinEdit6: TSpinEdit
    Left = 208
    Top = 328
    Width = 73
    Height = 33
    MaxLength = 2
    MaxValue = 10
    MinValue = 0
    TabOrder = 13
    Value = 0
    OnChange = CulcalBtnClick
  end
  object SpinEdit7: TSpinEdit
    Left = 208
    Top = 368
    Width = 73
    Height = 33
    MaxLength = 2
    MaxValue = 10
    MinValue = 0
    TabOrder = 14
    Value = 0
    OnChange = CulcalBtnClick
  end
  object CulcalBtn: TButton
    Left = 208
    Top = 398
    Width = 73
    Height = 25
    Caption = #35336#31639
    TabOrder = 15
    Visible = False
    OnClick = CulcalBtnClick
  end
end
