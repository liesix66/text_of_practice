object SeqSerchForm: TSeqSerchForm
  Left = 0
  Top = 0
  Caption = 'SeqSerchForm'
  ClientHeight = 554
  ClientWidth = 340
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
    Left = 24
    Top = 16
    Width = 190
    Height = 23
    Caption = #36984#25799#24744#24819#35201#26597#35426#30340#21151#33021
  end
  object Label2: TLabel
    Left = 24
    Top = 136
    Width = 171
    Height = 23
    Caption = #36664#20837#24744#35201#26597#35426#30340#25976#20540
  end
  object Label3: TLabel
    Left = 24
    Top = 237
    Width = 114
    Height = 23
    Caption = #35442#38917#32080#26524#28858#65306
  end
  object Label4: TLabel
    Left = 24
    Top = 168
    Width = 194
    Height = 16
    Caption = #30446#21069#26368#22823#21487#26597#35426#38917#28858#65306#31532'88'#38917
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 24
    Top = 387
    Width = 133
    Height = 23
    Caption = #40643#37329#27604#20363#20540#28858#65306
  end
  object Label6: TLabel
    Left = 24
    Top = 309
    Width = 152
    Height = 23
    Caption = #35442#38917#19979#38917#32080#26524#28858#65306
  end
  object Edit1: TEdit
    Left = 24
    Top = 200
    Width = 137
    Height = 31
    Alignment = taRightJustify
    TabOrder = 0
    Text = '0'
  end
  object ListBox1: TListBox
    Left = 24
    Top = 56
    Width = 137
    Height = 74
    ItemHeight = 23
    Items.Strings = (
      #36027#24335#25976#21015)
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 24
    Top = 266
    Width = 199
    Height = 31
    Alignment = taRightJustify
    TabOrder = 2
    Text = '0'
  end
  object CheckBtn: TButton
    Left = 232
    Top = 195
    Width = 81
    Height = 41
    Caption = #30906#35469
    TabOrder = 3
    OnClick = CheckBtnClick
  end
  object ClearBtn: TButton
    Left = 24
    Top = 488
    Width = 73
    Height = 39
    Caption = #28165#31354
    TabOrder = 4
    OnClick = ClearBtnClick
  end
  object ExitBtn: TButton
    Left = 232
    Top = 488
    Width = 73
    Height = 39
    Caption = #38626#38283
    TabOrder = 5
    OnClick = ExitBtnClick
  end
  object Edit3: TEdit
    Left = 24
    Top = 338
    Width = 199
    Height = 31
    Alignment = taRightJustify
    TabOrder = 6
    Text = '0'
  end
  object Edit4: TEdit
    Left = 24
    Top = 432
    Width = 199
    Height = 31
    Alignment = taRightJustify
    TabOrder = 7
    Text = '0'
  end
end
