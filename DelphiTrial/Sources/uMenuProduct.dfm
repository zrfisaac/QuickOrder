inherited MenuProduct: TMenuProduct
  Caption = 'MenuProduct'
  StyleElements = [seFont, seClient, seBorder]
  OnClose = FormClose
  TextHeight = 15
  inherited pnBack: TdxPanel
    ExplicitWidth = 622
    ExplicitHeight = 433
    inherited pnTitle: TdxPanel
      inherited lbTitle: TcxLabel
        Caption = 'Product'
        AnchorX = 331
        AnchorY = 20
      end
    end
    object pcMain: TcxPageControl
      Left = 0
      Top = 41
      Width = 622
      Height = 358
      Align = alClient
      TabOrder = 1
      Properties.ActivePage = tsRecord
      Properties.CustomButtons.Buttons = <>
      ExplicitWidth = 620
      ExplicitHeight = 350
      ClientRectBottom = 352
      ClientRectLeft = 3
      ClientRectRight = 616
      ClientRectTop = 28
      object tsSearch: TcxTabSheet
        Caption = 'Search'
        ImageIndex = 0
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 614
        ExplicitHeight = 328
        object pnSearch: TdxPanel
          Left = 0
          Top = 0
          Width = 613
          Height = 324
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 614
          ExplicitHeight = 328
          object dbgGridSearch: TcxGrid
            Left = 0
            Top = 57
            Width = 611
            Height = 265
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 612
            ExplicitHeight = 269
            object dbgGridSearchView: TcxGridDBTableView
              OnDblClick = dbgGridSearchViewDblClick
              Navigator.Buttons.CustomButtons = <>
              ScrollbarAnnotations.CustomAnnotations = <>
              DataController.DataSource = DataMain.dtsProduct
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsSelection.CellSelect = False
              object dbgGridLevel_cl_name: TcxGridDBColumn
                DataBinding.FieldName = 'cl_name'
              end
            end
            object dbgGridSearchLevel: TcxGridLevel
              GridView = dbgGridSearchView
            end
          end
          object pnSearchText: TdxPanel
            Left = 0
            Top = 0
            Width = 611
            Height = 57
            Align = alTop
            TabOrder = 1
            ExplicitWidth = 612
            DesignSize = (
              609
              55)
            object lbSearchText: TcxLabel
              Left = 3
              Top = 3
              Caption = 'Name'
              TabOrder = 0
            end
            object edSearchText: TcxTextEdit
              Left = 11
              Top = 28
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 1
              OnKeyDown = edSearchTextKeyDown
              ExplicitWidth = 590
              Width = 589
            end
          end
        end
      end
      object tsRecord: TcxTabSheet
        Caption = 'Record'
        ImageIndex = 1
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 612
        ExplicitHeight = 320
        object sbRecord: TcxScrollBox
          Left = 0
          Top = 0
          Width = 613
          Height = 324
          Align = alClient
          Color = clGray
          ParentColor = False
          TabOrder = 0
          ExplicitWidth = 612
          ExplicitHeight = 320
          object pnName: TdxPanel
            Left = 0
            Top = 57
            Width = 611
            Height = 57
            Align = alTop
            TabOrder = 1
            ExplicitWidth = 610
            DesignSize = (
              609
              55)
            object lbName: TcxLabel
              Left = 3
              Top = 3
              Caption = 'Name'
              TabOrder = 0
            end
            object dbName: TcxDBTextEdit
              Left = 11
              Top = 27
              Anchors = [akLeft, akTop, akRight]
              DataBinding.DataField = 'cl_name'
              DataBinding.DataSource = DataMain.dtsProduct
              TabOrder = 1
              ExplicitWidth = 588
              Width = 589
            end
          end
          object pnId: TdxPanel
            Left = 0
            Top = 0
            Width = 611
            Height = 57
            Align = alTop
            TabOrder = 0
            ExplicitWidth = 610
            DesignSize = (
              609
              55)
            object lbId: TcxLabel
              Left = 3
              Top = 3
              Caption = 'Id'
              TabOrder = 0
            end
            object dbId: TcxDBTextEdit
              Left = 11
              Top = 27
              Anchors = [akLeft, akTop, akRight]
              DataBinding.DataField = 'cl_product'
              DataBinding.DataSource = DataMain.dtsProduct
              TabOrder = 1
              ExplicitWidth = 588
              Width = 589
            end
          end
          object pnAddress: TdxPanel
            Left = 0
            Top = 114
            Width = 611
            Height = 57
            Align = alTop
            TabOrder = 2
            ExplicitWidth = 610
            DesignSize = (
              609
              55)
            object lbDescription: TcxLabel
              Left = 3
              Top = 3
              Caption = 'Description'
              TabOrder = 0
            end
            object dbDescription: TcxDBTextEdit
              Left = 11
              Top = 27
              Anchors = [akLeft, akTop, akRight]
              DataBinding.DataField = 'cl_description'
              DataBinding.DataSource = DataMain.dtsProduct
              TabOrder = 1
              ExplicitWidth = 588
              Width = 589
            end
          end
          object pnPrice: TdxPanel
            Left = 0
            Top = 171
            Width = 611
            Height = 57
            Align = alTop
            TabOrder = 3
            ExplicitWidth = 610
            DesignSize = (
              609
              55)
            object lbPrice: TcxLabel
              Left = 3
              Top = 3
              Caption = 'Price'
              TabOrder = 0
            end
            object dbPrice: TcxDBMaskEdit
              Left = 11
              Top = 27
              Anchors = [akLeft, akTop, akRight]
              DataBinding.DataField = 'cl_price'
              DataBinding.DataSource = DataMain.dtsProduct
              TabOrder = 1
              ExplicitWidth = 588
              Width = 589
            end
          end
        end
      end
    end
    object pnFooter: TdxPanel
      Left = 0
      Top = 399
      Width = 622
      Height = 40
      Align = alBottom
      TabOrder = 2
      ExplicitTop = 391
      ExplicitWidth = 620
      object btNew: TcxButton
        Left = 8
        Top = 8
        Width = 57
        Height = 25
        Caption = 'New'
        TabOrder = 0
        OnClick = btNewClick
      end
      object btEdit: TcxButton
        Left = 71
        Top = 8
        Width = 57
        Height = 25
        Caption = 'Edit'
        TabOrder = 1
        OnClick = btEditClick
      end
      object btDelete: TcxButton
        Left = 134
        Top = 8
        Width = 57
        Height = 25
        Caption = 'Delete'
        TabOrder = 2
        OnClick = btDeleteClick
      end
      object btSave: TcxButton
        Left = 197
        Top = 8
        Width = 57
        Height = 25
        Caption = 'Save'
        TabOrder = 3
        OnClick = btSaveClick
      end
      object btCancel: TcxButton
        Left = 260
        Top = 8
        Width = 57
        Height = 25
        Caption = 'Cancel'
        TabOrder = 4
        OnClick = btCancelClick
      end
    end
  end
end
