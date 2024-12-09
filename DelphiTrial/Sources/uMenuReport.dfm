inherited MenuReport: TMenuReport
  Caption = 'MenuReport'
  StyleElements = [seFont, seClient, seBorder]
  TextHeight = 15
  inherited pnBack: TdxPanel
    inherited pnTitle: TdxPanel
      inherited lbTitle: TcxLabel
        Caption = 'Report'
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
      ExplicitTop = 383
      ExplicitWidth = 620
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
      ExplicitWidth = 620
      ExplicitHeight = 342
      object pnDatabaseServer: TdxPanel
        Left = 0
        Top = 0
        Width = 620
        Height = 57
        Align = alTop
        TabOrder = 0
        ExplicitWidth = 618
        DesignSize = (
          618
          55)
        object lbDatabaseServer: TcxLabel
          Left = 3
          Top = 3
          Caption = 'Client'
          TabOrder = 0
        end
        object edClient: TcxTextEdit
          Left = 11
          Top = 28
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 1
          ExplicitWidth = 588
          Width = 590
        end
      end
      object pnPeriod: TdxPanel
        Left = 0
        Top = 57
        Width = 620
        Height = 57
        Align = alTop
        TabOrder = 1
        ExplicitWidth = 618
        object Label1: TLabel
          Left = 134
          Top = 32
          Width = 13
          Height = 15
          Caption = 'To'
        end
        object lbPeriod: TcxLabel
          Left = 3
          Top = 3
          Caption = 'Period'
          TabOrder = 0
        end
        object edPeriodBegin: TcxDateEdit
          Left = 7
          Top = 28
          TabOrder = 1
          Width = 121
        end
        object edPeriodEnd: TcxDateEdit
          Left = 153
          Top = 29
          TabOrder = 2
          Width = 121
        end
      end
    end
  end
  object frxReport: TfrxReport
    Version = '2025.1.1'
    DataSetName = 'frxUserDataSet1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45628.924503588000000000
    ReportOptions.LastChange = 45635.554320648150000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 40
    Top = 168
    Datasets = <
      item
        DataSet = fxdReport
        DataSetName = 'fxdReport'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object PageMain: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftTop, ftBottom]
        Height = 49.133890000000000000
        Top = 86.929190000000000000
        Width = 740.409927000000000000
        Condition = 'fxdReport."client_name"'
        object MemofxdReportclient_name: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 49.133890000000000000
          Top = 7.559060000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'client_name'
          DataSet = fxdReport
          DataSetName = 'fxdReport'
          Frame.Typ = []
          Memo.UTF8W = (
            '[fxdReport."client_name"]')
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 0.000000820000000000
          Top = 7.559058670000000000
          Width = 45.354360730000000000
          Height = 18.897647860000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Client:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 45.354360000000000000
          Top = 30.236240000000000000
          Width = 56.692950730000000000
          Height = 18.897647860000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Product')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 30.236240000000000000
          Width = 56.692950730000000000
          Height = 18.897647860000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantity')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 30.236240000000000000
          Width = 56.692950730000000000
          Height = 18.897647860000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Price')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 158.740260000000000000
        Width = 740.409927000000000000
        DataSet = fxdReport
        DataSetName = 'fxdReport'
        RowCount = 0
        object MemofxdReportproduct_name: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 45.354360000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'product_name'
          DataSet = fxdReport
          DataSetName = 'fxdReport'
          Frame.Typ = []
          Memo.UTF8W = (
            '[fxdReport."product_name"]')
        end
        object MemofxdReportorder_item_price: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 536.693260000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'order_item_price'
          DataSet = fxdReport
          DataSetName = 'fxdReport'
          Frame.Typ = []
          Memo.UTF8W = (
            '[fxdReport."order_item_price"]')
        end
        object MemofxdReportorder_item_quantity: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 453.543600000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'order_item_quantity'
          DataSet = fxdReport
          DataSetName = 'fxdReport'
          Frame.Typ = []
          Memo.UTF8W = (
            '[fxdReport."order_item_quantity"]')
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 45.354357860000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 98.267780730000000000
          Height = 37.795297860000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Report')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 200.315090000000000000
        Width = 740.409927000000000000
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 453.543601630000000000
          Top = -0.000004489999999996
          Width = 79.370130730000000000
          Height = 18.897659300000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<fxdReport."order_value">,MasterData1)]')
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Width = 79.370130730000000000
          Height = 18.897659300000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<fxdReport."order_value">,MasterData1)]')
        end
      end
    end
  end
  object fxdReport: TfrxDBDataset
    UserName = 'fxdReport'
    CloseDataSource = False
    DataSet = DataMain.fdpReport
    BCDToCurrency = False
    DataSetOptions = []
    Left = 40
    Top = 225
    FieldDefs = <
      item
        FieldName = 'order_id'
      end
      item
        FieldName = 'order_date'
      end
      item
        FieldName = 'order_value'
      end
      item
        FieldName = 'order_item_id'
      end
      item
        FieldName = 'order_item_price'
      end
      item
        FieldName = 'order_item_quantity'
      end
      item
        FieldName = 'product_name'
        FieldType = fftString
        Size = 100
      end
      item
        FieldName = 'client_name'
        FieldType = fftString
        Size = 100
      end>
  end
end
