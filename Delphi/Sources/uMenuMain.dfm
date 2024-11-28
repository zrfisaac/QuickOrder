inherited MenuMain: TMenuMain
  Caption = 'MenuMain'
  Menu = miMenu
  StyleElements = [seFont, seClient, seBorder]
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitLeft = 3
  ExplicitTop = 3
  ExplicitWidth = 600
  ExplicitHeight = 425
  TextHeight = 15
  inherited pnBack: TPanel
    Height = 342
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 582
    ExplicitHeight = 334
  end
  object sbFooter: TStatusBar
    Left = 0
    Top = 342
    Width = 584
    Height = 19
    Panels = <>
    ExplicitTop = 334
    ExplicitWidth = 582
  end
  object miMenu: TMainMenu
    Images = ilMenu
    Left = 16
    Top = 16
    object miMain: TMenuItem
      Action = acMain
      object miOrder: TMenuItem
        Action = acOrder
      end
    end
    object miReport: TMenuItem
      Caption = 'miReport'
    end
    object miRecord: TMenuItem
      Action = acRecord
      object miRecordProduct: TMenuItem
        Action = acRecordProduct
      end
      object miRecordClient: TMenuItem
        Action = acRecordClient
      end
    end
    object miHelp: TMenuItem
      Action = acHelp
      object miConfig: TMenuItem
        Action = acConfig
      end
      object miAbout: TMenuItem
        Action = acAbout
      end
    end
  end
  object ilMenu: TImageList
    Left = 16
    Top = 128
  end
  object acMenu: TActionList
    Images = ilMenu
    Left = 16
    Top = 72
    object acOrder: TAction
      Category = 'miMain'
      Caption = 'Order'
      ShortCut = 116
      OnExecute = acOrderExecute
    end
    object acRecordProduct: TAction
      Category = 'miRecord'
      Caption = 'acRecordProduct'
      OnExecute = acRecordProductExecute
    end
    object acRecordClient: TAction
      Category = 'miRecord'
      Caption = 'acRecordClient'
      OnExecute = acRecordClientExecute
    end
    object acAbout: TAction
      Category = 'miHelp'
      Caption = 'About'
      ShortCut = 112
      OnExecute = acAboutExecute
    end
    object acConfig: TAction
      Category = 'miHelp'
      Caption = 'Configuration'
      ShortCut = 113
      OnExecute = acConfigExecute
    end
    object acRecord: TAction
      Category = 'miRecord'
      Caption = 'Records'
    end
    object acMain: TAction
      Category = 'miMain'
      Caption = 'Main'
    end
    object acHelp: TAction
      Category = 'miHelp'
      Caption = 'Help'
    end
  end
end
