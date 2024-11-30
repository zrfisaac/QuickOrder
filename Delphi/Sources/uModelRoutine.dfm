inherited ModelRoutine: TModelRoutine
  Caption = 'ModelRoutine'
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 600
  ExplicitHeight = 400
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
    object pnBody: TPanel
      Left = 0
      Top = 33
      Width = 584
      Height = 328
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitLeft = 208
      ExplicitTop = 176
      ExplicitWidth = 185
      ExplicitHeight = 41
      object pcBody: TPageControl
        Left = 0
        Top = 0
        Width = 584
        Height = 328
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 2
        ExplicitTop = 2
        ExplicitWidth = 582
        ExplicitHeight = 326
      end
    end
  end
end
