object Form1: TForm1
  Left = 242
  Top = 371
  Width = 1142
  Height = 656
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 16
    Top = 56
    Width = 273
    Height = 153
    TabOrder = 0
  end
  object MainMenu1: TMainMenu
    Left = 56
    Top = 16
    object Zapmass1: TMenuItem
      Caption = 'Zap_mass'
      object Manual1: TMenuItem
        Caption = 'Manual'
        OnClick = Manual1Click
      end
      object Random1: TMenuItem
        Caption = 'Random'
        OnClick = Random1Click
      end
    end
    object Write1: TMenuItem
      Caption = 'Write'
      object oTxtFile1: TMenuItem
        Caption = 'To_Txt_File'
        OnClick = oTxtFile1Click
      end
      object otipfile1: TMenuItem
        Caption = 'To_tip_file'
        OnClick = otipfile1Click
      end
    end
    object Result1: TMenuItem
      Caption = 'Result'
      object Inmemo1: TMenuItem
        Caption = 'In_text'
        OnClick = Inmemo1Click
      end
    end
    object Open1: TMenuItem
      Caption = 'Open'
      object OpenTxt1: TMenuItem
        Caption = 'Txt file'
        OnClick = OpenTxt1Click
      end
      object ipfile1: TMenuItem
        Caption = 'Tip file'
        OnClick = ipfile1Click
      end
    end
    object Close1: TMenuItem
      Caption = 'Close'
      object xtfile1: TMenuItem
        Caption = 'Txt file'
        OnClick = xtfile1Click
      end
      object tipfile1: TMenuItem
        Caption = 'Tip file'
        OnClick = tipfile1Click
      end
    end
    object Delete1: TMenuItem
      Caption = 'Delete'
      OnClick = Delete1Click
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 16
    Top = 16
  end
end
