inherited ModelRoutine: TModelRoutine
  Caption = 'ModelRoutine'
  StyleElements = [seFont, seClient, seBorder]
  TextHeight = 15
  inherited pnBack: TPanel
    StyleElements = [seFont, seClient, seBorder]
    object pnHeader: TPanel
      Left = 0
      Top = 0
      Width = 584
      Height = 33
      Align = alTop
      TabOrder = 0
      ExplicitWidth = 582
      object imHeader: TImage
        Left = 1
        Top = 1
        Width = 32
        Height = 31
        Align = alLeft
      end
      object lbHeader: TLabel
        Left = 33
        Top = 1
        Width = 550
        Height = 31
        Align = alClient
        Alignment = taCenter
        Caption = 'lbHeader'
        Layout = tlCenter
        ExplicitWidth = 48
        ExplicitHeight = 15
      end
    end
    object pcMain: TPageControl
      Left = 0
      Top = 33
      Width = 584
      Height = 328
      Align = alClient
      TabOrder = 1
      ExplicitWidth = 582
      ExplicitHeight = 320
    end
  end
end
