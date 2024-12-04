inherited MenuReport: TMenuReport
  Caption = 'MenuReport'
  StyleElements = [seFont, seClient, seBorder]
  ExplicitTop = -58
  TextHeight = 15
  inherited pnBack: TdxPanel
    inherited pnTitle: TdxPanel
      inherited lbTitle: TcxLabel
        AnchorX = 331
        AnchorY = 20
      end
    end
    object pnDatabaseFooter: TdxPanel
      Left = 0
      Top = 391
      Width = 622
      Height = 48
      Align = alBottom
      TabOrder = 1
      ExplicitTop = 320
      ExplicitWidth = 614
      object btPreview: TcxButton
        Left = 8
        Top = 8
        Width = 81
        Height = 25
        Caption = 'Preview'
        TabOrder = 0
        OnClick = btPreviewClick
      end
    end
    object sbDatabase: TcxScrollBox
      Left = 0
      Top = 41
      Width = 622
      Height = 350
      Align = alClient
      Color = clGray
      ParentColor = False
      TabOrder = 2
      object pnDatabaseServer: TdxPanel
        Left = 0
        Top = 0
        Width = 620
        Height = 57
        Align = alTop
        TabOrder = 0
        DesignSize = (
          618
          55)
        object lbDatabaseServer: TcxLabel
          Left = 3
          Top = 3
          Caption = 'Server'
          TabOrder = 0
        end
        object edDatabaseServer: TcxTextEdit
          Left = 3
          Top = 28
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 1
          Text = 'localhost'
          Width = 604
        end
      end
      object pnDatabaseDatabase: TdxPanel
        Left = 0
        Top = 57
        Width = 620
        Height = 57
        Align = alTop
        TabOrder = 1
        DesignSize = (
          618
          55)
        object lbDatabaseDatabase: TcxLabel
          Left = 3
          Top = 3
          Caption = 'Database'
          TabOrder = 0
        end
        object edDatabaseDatabase: TcxTextEdit
          Left = 3
          Top = 28
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 1
          Text = 'QUICK_ORDER'
          Width = 604
        end
      end
    end
  end
  object frxReport: TfrxReport
    Version = '2025.1.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45628.924503587960000000
    ReportOptions.LastChange = 45628.924503587960000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 24
    Top = 24
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
    end
  end
end
