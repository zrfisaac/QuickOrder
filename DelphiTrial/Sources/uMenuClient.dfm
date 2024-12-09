inherited MenuClient: TMenuClient
  Caption = 'MenuClient'
  StyleElements = [seFont, seClient, seBorder]
  OnClose = FormClose
  TextHeight = 15
  inherited pnBack: TdxPanel
    ExplicitWidth = 622
    ExplicitHeight = 433
    inherited pnTitle: TdxPanel
      inherited lbTitle: TcxLabel
        Caption = 'Client'
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
      ClientRectBottom = 354
      ClientRectLeft = 4
      ClientRectRight = 618
      ClientRectTop = 26
      object tsSearch: TcxTabSheet
        Caption = 'Search'
        ImageIndex = 0
        object pnSearch: TdxPanel
          Left = 0
          Top = 0
          Width = 614
          Height = 328
          Align = alClient
          TabOrder = 0
          object dbgGridSearch: TcxGrid
            Left = 0
            Top = 57
            Width = 612
            Height = 269
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 610
            ExplicitHeight = 261
            object dbgGridSearchView: TcxGridDBTableView
              OnDblClick = dbgGridSearchViewDblClick
              Navigator.Buttons.CustomButtons = <>
              ScrollbarAnnotations.CustomAnnotations = <>
              DataController.DataSource = DataMain.dtsClient
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
            Width = 612
            Height = 57
            Align = alTop
            TabOrder = 1
            DesignSize = (
              610
              55)
            object lbSearchText: TcxLabel
              Left = 3
              Top = 3
              Caption = 'Name'
              TabOrder = 0
            end
            object edSearchText: TcxTextEdit
              Left = 11
              Top = 29
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 1
              OnKeyDown = edSearchTextKeyDown
              Width = 590
            end
          end
        end
      end
      object tsRecord: TcxTabSheet
        Caption = 'Record'
        ImageIndex = 1
        ExplicitWidth = 612
        ExplicitHeight = 320
        object sbRecord: TcxScrollBox
          Left = 0
          Top = 0
          Width = 614
          Height = 328
          Align = alClient
          Color = clGray
          ParentColor = False
          TabOrder = 0
          ExplicitWidth = 612
          ExplicitHeight = 320
          object pnDatabaseServer: TdxPanel
            Left = 0
            Top = 57
            Width = 612
            Height = 57
            Align = alTop
            TabOrder = 0
            ExplicitWidth = 610
            DesignSize = (
              610
              55)
            object lbDatabaseServer: TcxLabel
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
              DataBinding.DataSource = DataMain.dtsClient
              TabOrder = 1
              ExplicitWidth = 588
              Width = 590
            end
          end
          object dxPanel1: TdxPanel
            Left = 0
            Top = 0
            Width = 612
            Height = 57
            Align = alTop
            TabOrder = 1
            ExplicitWidth = 610
            DesignSize = (
              610
              55)
            object cxLabel1: TcxLabel
              Left = 3
              Top = 3
              Caption = 'Id'
              TabOrder = 0
            end
            object dbId: TcxDBTextEdit
              Left = 11
              Top = 29
              Anchors = [akLeft, akTop, akRight]
              DataBinding.DataField = 'cl_client'
              DataBinding.DataSource = DataMain.dtsClient
              TabOrder = 1
              ExplicitWidth = 588
              Width = 590
            end
          end
          object dxPanel3: TdxPanel
            Left = 0
            Top = 114
            Width = 612
            Height = 57
            Align = alTop
            TabOrder = 2
            ExplicitWidth = 610
            DesignSize = (
              610
              55)
            object cxLabel2: TcxLabel
              Left = 3
              Top = 3
              Caption = 'Address'
              TabOrder = 0
            end
            object dbAddress: TcxDBTextEdit
              Left = 11
              Top = 27
              Anchors = [akLeft, akTop, akRight]
              DataBinding.DataField = 'cl_address'
              DataBinding.DataSource = DataMain.dtsClient
              TabOrder = 1
              ExplicitWidth = 588
              Width = 590
            end
          end
          object dxPanel4: TdxPanel
            Left = 0
            Top = 171
            Width = 612
            Height = 57
            Align = alTop
            TabOrder = 3
            ExplicitWidth = 610
            DesignSize = (
              610
              55)
            object cxLabel3: TcxLabel
              Left = 3
              Top = 3
              Caption = 'Phone'
              TabOrder = 0
            end
            object dbPhone: TcxDBMaskEdit
              Left = 11
              Top = 27
              Anchors = [akLeft, akTop, akRight]
              DataBinding.DataField = 'cl_phone'
              DataBinding.DataSource = DataMain.dtsClient
              TabOrder = 1
              ExplicitWidth = 588
              Width = 590
            end
          end
          object dxPanel5: TdxPanel
            Left = 0
            Top = 228
            Width = 612
            Height = 57
            Align = alTop
            TabOrder = 4
            ExplicitWidth = 610
            DesignSize = (
              610
              55)
            object cxLabel4: TcxLabel
              Left = 3
              Top = 3
              Caption = 'Email'
              TabOrder = 0
            end
            object dbEmail: TcxDBMaskEdit
              Left = 11
              Top = 27
              Anchors = [akLeft, akTop, akRight]
              DataBinding.DataField = 'cl_email'
              DataBinding.DataSource = DataMain.dtsClient
              TabOrder = 1
              ExplicitWidth = 588
              Width = 590
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
