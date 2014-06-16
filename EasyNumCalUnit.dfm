object EasyNumCalForm: TEasyNumCalForm
  Left = 0
  Top = 0
  Caption = 'EasyNumCalForm'
  ClientHeight = 415
  ClientWidth = 409
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
    Left = 8
    Top = 40
    Width = 352
    Height = 39
    Caption = #35531#36664#20837#20841#20491#25972#25976#36914#34892#35336#31639
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 104
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
    Left = 8
    Top = 146
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
    Left = 8
    Top = 201
    Width = 21
    Height = 25
    Caption = #21644
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 255
    Width = 42
    Height = 25
    Caption = #20056#31309
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 8
    Top = 304
    Width = 21
    Height = 25
    Caption = #21830
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 24
    Top = 350
    Width = 5
    Height = 19
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 104
    Top = 104
    Width = 209
    Height = 21
    NumbersOnly = True
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 104
    Top = 146
    Width = 209
    Height = 21
    NumbersOnly = True
    TabOrder = 1
  end
  object CalculateBtn: TButton
    Left = 335
    Top = 104
    Width = 66
    Height = 63
    Caption = #35336#31639
    TabOrder = 2
    OnClick = CalculateBtnClick
  end
  object Edit3: TEdit
    Left = 104
    Top = 201
    Width = 209
    Height = 21
    ReadOnly = True
    TabOrder = 3
  end
  object Edit4: TEdit
    Left = 104
    Top = 255
    Width = 209
    Height = 21
    ReadOnly = True
    TabOrder = 4
  end
  object Edit5: TEdit
    Left = 104
    Top = 304
    Width = 209
    Height = 21
    ReadOnly = True
    TabOrder = 5
  end
  object ExitBtn: TButton
    Left = 335
    Top = 350
    Width = 66
    Height = 57
    Caption = #38626#38283
    TabOrder = 6
    OnClick = ExitBtnClick
  end
  object ClearBtn: TButton
    Left = 335
    Top = 186
    Width = 66
    Height = 65
    Caption = #28165#38500#25976#23383
    TabOrder = 7
    OnClick = ClearBtnClick
  end
  object limitNumBtn: TButton
    Left = 335
    Top = 272
    Width = 66
    Height = 57
    Caption = #38480#23450'3'#20301#25976
    TabOrder = 8
    OnClick = limitNumBtnClick
  end
end
