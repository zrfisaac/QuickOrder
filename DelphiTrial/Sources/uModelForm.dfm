object ModelForm: TModelForm
  Left = 0
  Top = 0
  Caption = 'ModelForm'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object pnBack: TdxPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 441
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 622
    ExplicitHeight = 433
    object pnTitle: TdxPanel
      Left = 0
      Top = 0
      Width = 622
      Height = 41
      Align = alTop
      TabOrder = 0
      ExplicitWidth = 620
      object imTitle: TImage
        Left = 0
        Top = 0
        Width = 41
        Height = 39
        Align = alLeft
      end
      object lbTitle: TcxLabel
        Left = 41
        Top = 0
        Align = alClient
        BiDiMode = bdLeftToRight
        Caption = 'lbTitle'
        ParentBiDiMode = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        TabOrder = 0
        ExplicitWidth = 577
        AnchorX = 331
        AnchorY = 20
      end
    end
  end
end
