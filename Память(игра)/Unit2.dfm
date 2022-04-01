object Form2: TForm2
  Left = 383
  Top = 149
  Width = 945
  Height = 602
  Caption = 'Form2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 24
    Top = 16
    Width = 89
    Height = 147
    Visible = False
    OnClick = ImageClick
  end
  object Image2: TImage
    Left = 136
    Top = 16
    Width = 89
    Height = 147
    Visible = False
    OnClick = ImageClick
  end
  object Image3: TImage
    Left = 248
    Top = 16
    Width = 89
    Height = 147
    Visible = False
    OnClick = ImageClick
  end
  object Image4: TImage
    Left = 360
    Top = 16
    Width = 89
    Height = 147
    Visible = False
    OnClick = ImageClick
  end
  object Image5: TImage
    Left = 472
    Top = 16
    Width = 89
    Height = 147
    Visible = False
    OnClick = ImageClick
  end
  object Image6: TImage
    Left = 584
    Top = 16
    Width = 89
    Height = 147
    Visible = False
    OnClick = ImageClick
  end
  object Image7: TImage
    Left = 696
    Top = 16
    Width = 89
    Height = 147
    Visible = False
    OnClick = ImageClick
  end
  object Image8: TImage
    Left = 808
    Top = 16
    Width = 89
    Height = 147
    Visible = False
    OnClick = ImageClick
  end
  object Label1: TLabel
    Left = 160
    Top = 520
    Width = 6
    Height = 13
    Caption = '0'
  end
  object Image9: TImage
    Left = 24
    Top = 192
    Width = 89
    Height = 147
    Visible = False
    OnClick = ImageClick
  end
  object Image10: TImage
    Left = 136
    Top = 192
    Width = 89
    Height = 147
    Visible = False
    OnClick = ImageClick
  end
  object Image11: TImage
    Left = 248
    Top = 192
    Width = 89
    Height = 147
    Visible = False
    OnClick = ImageClick
  end
  object Image12: TImage
    Left = 360
    Top = 192
    Width = 89
    Height = 147
    Visible = False
    OnClick = ImageClick
  end
  object Image13: TImage
    Left = 472
    Top = 192
    Width = 89
    Height = 147
    Visible = False
    OnClick = ImageClick
  end
  object Image14: TImage
    Left = 584
    Top = 192
    Width = 89
    Height = 147
    Visible = False
    OnClick = ImageClick
  end
  object Image15: TImage
    Left = 696
    Top = 192
    Width = 89
    Height = 147
    Visible = False
    OnClick = ImageClick
  end
  object Image16: TImage
    Left = 808
    Top = 192
    Width = 89
    Height = 147
    Visible = False
    OnClick = ImageClick
  end
  object Label2: TLabel
    Left = 313
    Top = 520
    Width = 6
    Height = 13
    Caption = '0'
  end
  object Label3: TLabel
    Left = 352
    Top = 392
    Width = 3
    Height = 13
    Visible = False
  end
  object Image17: TImage
    Left = 24
    Top = 360
    Width = 89
    Height = 147
    Visible = False
    OnClick = ImageClick
  end
  object Image18: TImage
    Left = 136
    Top = 360
    Width = 89
    Height = 147
    Visible = False
    OnClick = ImageClick
  end
  object Image19: TImage
    Left = 248
    Top = 360
    Width = 89
    Height = 147
    Visible = False
    OnClick = ImageClick
  end
  object Image20: TImage
    Left = 360
    Top = 360
    Width = 89
    Height = 147
    Visible = False
    OnClick = ImageClick
  end
  object Image21: TImage
    Left = 472
    Top = 360
    Width = 89
    Height = 147
    Visible = False
    OnClick = ImageClick
  end
  object Image22: TImage
    Left = 584
    Top = 360
    Width = 89
    Height = 147
    Visible = False
    OnClick = ImageClick
  end
  object Image23: TImage
    Left = 696
    Top = 360
    Width = 89
    Height = 147
    Visible = False
    OnClick = ImageClick
  end
  object Image24: TImage
    Left = 808
    Top = 360
    Width = 89
    Height = 147
    Visible = False
    OnClick = ImageClick
  end
  object Edit1: TEdit
    Left = 384
    Top = 96
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 0
    Text = #1042#1074#1077#1076#1080#1090#1077' '#1089#1074#1086#1077' '#1080#1084#1103
    Visible = False
  end
  object Edit2: TEdit
    Left = 384
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 1
    Visible = False
  end
  object Button1: TButton
    Left = 408
    Top = 184
    Width = 75
    Height = 25
    Caption = #1054#1050
    TabOrder = 2
    Visible = False
    OnClick = Button1Click
  end
  object MainMenu1: TMainMenu
    Left = 40
    Top = 512
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N2: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = N2Click
      end
      object N12: TMenuItem
        Caption = '-'
      end
      object N13: TMenuItem
        Caption = #1058#1072#1073#1083#1080#1094#1072' '#1088#1077#1082#1086#1088#1076#1086#1074
        OnClick = N13Click
      end
    end
    object N3: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1089#1083#1086#1078#1085#1086#1089#1090#1100
      object N4: TMenuItem
        Caption = #1051#1077#1075#1082#1086
        OnClick = N4Click
      end
      object N5: TMenuItem
        Caption = #1053#1086#1088#1084#1072#1083#1100#1085#1086
        OnClick = N5Click
      end
      object N6: TMenuItem
        Caption = #1057#1083#1086#1078#1085#1086
        OnClick = N6Click
      end
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 128
    Top = 512
  end
  object Timer2: TTimer
    Interval = 200
    OnTimer = Timer2Timer
    Left = 224
    Top = 512
  end
end
