object PlanetComBoxForm: TPlanetComBoxForm
  Left = 0
  Top = 0
  Caption = 'PlanetComBoxForm'
  ClientHeight = 357
  ClientWidth = 325
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
    Left = 32
    Top = 24
    Width = 95
    Height = 23
    Caption = #35531#36984#25799#26143#29699
  end
  object ComboBox1: TComboBox
    Left = 32
    Top = 64
    Width = 137
    Height = 31
    TabOrder = 0
    Text = #28961
    OnChange = Button1Click
    Items.Strings = (
      #28961
      #22320#29699
      #37329#26143
      #26408#26143
      #27700#26143
      #28779#26143
      #22303#26143
      #22825#29579#26143
      #28023#29579#26143
      #20901#29579#26143)
  end
  object Memo1: TMemo
    Left = 32
    Top = 112
    Width = 233
    Height = 217
    TabOrder = 1
  end
  object Button1: TButton
    Left = 192
    Top = 64
    Width = 73
    Height = 33
    Caption = #30906#23450
    TabOrder = 2
    OnClick = Button1Click
  end
end
