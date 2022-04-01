object Form1: TForm1
  Left = 574
  Top = 170
  Width = 241
  Height = 311
  AutoSize = True
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 225
    Height = 273
    Lines.Strings = (
      '')
    ReadOnly = True
    TabOrder = 0
  end
  object OpenDialog1: TOpenDialog
    FileName = 'Score.txt'
    Left = 72
    Top = 160
  end
  object SaveDialog1: TSaveDialog
    FileName = 'Score.txt'
    Left = 128
    Top = 160
  end
end
