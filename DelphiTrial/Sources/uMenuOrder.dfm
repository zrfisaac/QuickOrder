inherited MenuOrder: TMenuOrder
  Caption = 'MenuOrder'
  StyleElements = [seFont, seClient, seBorder]
  TextHeight = 15
  inherited pnBack: TdxPanel
    ExplicitWidth = 622
    ExplicitHeight = 433
    inherited pnTitle: TdxPanel
      ExplicitWidth = 620
      inherited lbTitle: TcxLabel
        Caption = 'Order'
        ExplicitWidth = 577
        AnchorX = 331
        AnchorY = 20
      end
    end
    object pnSearch: TdxPanel
      Left = 0
      Top = 41
      Width = 622
      Height = 398
      Align = alClient
      TabOrder = 1
      ExplicitWidth = 620
      ExplicitHeight = 390
      object dbgGridSearch: TcxGrid
        Left = 0
        Top = 114
        Width = 620
        Height = 242
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 618
        ExplicitHeight = 234
        object dbgGridSearchView: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = DataMain.dtsItem
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.CellSelect = False
          object dbgGridSearchfdtItemProductName: TcxGridDBColumn
            Caption = 'Product'
            DataBinding.FieldName = 'fdtItemProductName'
            Width = 271
          end
          object dbgGridSearchfdtItemProductQuantity: TcxGridDBColumn
            Caption = 'Quantity'
            DataBinding.FieldName = 'fdtItemProductQuantity'
          end
          object dbgGridSearchfdtItemProductPrice: TcxGridDBColumn
            Caption = 'Price'
            DataBinding.FieldName = 'fdtItemProductPrice'
            Width = 79
          end
          object dbgGridSearchfdtItemProductValue: TcxGridDBColumn
            Caption = 'Value'
            DataBinding.FieldName = 'fdtItemProductValue'
          end
        end
        object dbgGridSearchLevel: TcxGridLevel
          GridView = dbgGridSearchView
        end
      end
      object pnSearchText: TdxPanel
        Left = 0
        Top = 0
        Width = 620
        Height = 57
        Align = alTop
        TabOrder = 1
        ExplicitWidth = 618
        DesignSize = (
          618
          55)
        object lbSearchText: TcxLabel
          Left = 11
          Top = 4
          Caption = 'Client'
          TabOrder = 0
        end
        object edClient: TcxLookupComboBox
          Left = 11
          Top = 27
          Anchors = [akLeft, akTop, akRight]
          Properties.KeyFieldNames = 'cl_client'
          Properties.ListColumns = <
            item
              FieldName = 'cl_name'
            end>
          Properties.ListSource = DataMain.dtsClient
          TabOrder = 1
          Width = 584
        end
      end
      object dxPanel1: TdxPanel
        Left = 0
        Top = 57
        Width = 620
        Height = 57
        Align = alTop
        TabOrder = 2
        ExplicitWidth = 618
        DesignSize = (
          618
          55)
        object cxLabel2: TcxLabel
          Left = 11
          Top = 3
          Caption = 'Product'
          TabOrder = 0
        end
        object cxLabel3: TcxLabel
          Left = 463
          Top = 3
          Anchors = [akTop, akRight]
          Caption = 'Value'
          TabOrder = 1
        end
        object cxLabel4: TcxLabel
          Left = 391
          Top = 3
          Anchors = [akTop, akRight]
          Caption = 'Amount'
          TabOrder = 2
        end
        object edProduct: TcxLookupComboBox
          Left = 11
          Top = 27
          Anchors = [akLeft, akTop, akRight]
          Properties.KeyFieldNames = 'cl_product;cl_price'
          Properties.ListColumns = <
            item
              FieldName = 'cl_name'
            end>
          Properties.ListSource = DataMain.dtsProduct
          TabOrder = 3
          Width = 374
        end
        object edAmount: TcxSpinEdit
          Left = 391
          Top = 27
          Anchors = [akTop, akRight]
          Properties.AssignedValues.MinValue = True
          Properties.OnChange = edAmountPropertiesChange
          TabOrder = 4
          Width = 66
        end
        object edValue: TcxTextEdit
          Left = 463
          Top = 27
          Anchors = [akTop, akRight]
          BiDiMode = bdRightToLeft
          Enabled = False
          ParentBiDiMode = False
          TabOrder = 5
          Text = '0.00'
          Width = 74
        end
        object btAdd: TcxButton
          Left = 543
          Top = 25
          Width = 66
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Add'
          TabOrder = 6
          OnClick = btAddClick
        end
      end
      object pnFooter: TdxPanel
        Left = 0
        Top = 356
        Width = 620
        Height = 40
        Align = alBottom
        TabOrder = 3
        ExplicitTop = 348
        ExplicitWidth = 618
        object btSave: TcxButton
          Left = 7
          Top = 8
          Width = 57
          Height = 25
          Caption = 'Save'
          TabOrder = 0
          OnClick = btSaveClick
        end
      end
    end
  end
end
