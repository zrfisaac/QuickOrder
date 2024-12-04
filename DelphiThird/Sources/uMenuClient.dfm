inherited MenuClient: TMenuClient
  Caption = 'MenuClient'
  StyleElements = [seFont, seClient, seBorder]
  TextHeight = 15
  inherited pnBack: TdxPanel
    inherited pnTitle: TdxPanel
      inherited lbTitle: TcxLabel
        AnchorX = 331
        AnchorY = 20
      end
    end
    object pcMain: TcxPageControl
      Left = 0
      Top = 41
      Width = 622
      Height = 398
      Align = alClient
      TabOrder = 1
      Properties.ActivePage = tsRecord
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 394
      ClientRectLeft = 4
      ClientRectRight = 618
      ClientRectTop = 26
      object tsSearch: TcxTabSheet
        Caption = 'tsSearch'
        ImageIndex = 0
        object dxPanel2: TdxPanel
          Left = 0
          Top = 311
          Width = 614
          Height = 57
          Align = alBottom
          TabOrder = 0
        end
      end
      object tsRecord: TcxTabSheet
        Caption = 'tsRecord'
        ImageIndex = 1
        object sbRecord: TcxScrollBox
          Left = 0
          Top = 0
          Width = 614
          Height = 368
          Align = alClient
          Color = clGray
          ParentColor = False
          TabOrder = 0
          object pnDatabaseServer: TdxPanel
            Left = 0
            Top = 57
            Width = 612
            Height = 57
            Align = alTop
            TabOrder = 0
            ExplicitTop = 8
            DesignSize = (
              610
              55)
            object lbDatabaseServer: TcxLabel
              Left = 3
              Top = 3
              Caption = 'Name'
              TabOrder = 0
            end
            object edRecordName: TcxTextEdit
              Left = 3
              Top = 28
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 1
              Width = 604
            end
          end
          object dxPanel1: TdxPanel
            Left = 0
            Top = 0
            Width = 612
            Height = 57
            Align = alTop
            TabOrder = 1
            ExplicitTop = 8
            DesignSize = (
              610
              55)
            object cxLabel1: TcxLabel
              Left = 3
              Top = 3
              Caption = 'Id'
              TabOrder = 0
            end
            object edRecordId: TcxTextEdit
              Left = 3
              Top = 28
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 1
              Width = 604
            end
          end
          object dxPanel3: TdxPanel
            Left = 0
            Top = 114
            Width = 612
            Height = 57
            Align = alTop
            TabOrder = 2
            ExplicitLeft = 3
            ExplicitTop = 177
            DesignSize = (
              610
              55)
            object cxLabel2: TcxLabel
              Left = 3
              Top = 3
              Caption = 'Description'
              TabOrder = 0
            end
            object mkRecordDescription: TcxTextEdit
              Left = 3
              Top = 28
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 1
              Width = 604
            end
          end
          object dxPanel4: TdxPanel
            Left = 0
            Top = 171
            Width = 612
            Height = 57
            Align = alTop
            TabOrder = 3
            ExplicitLeft = 3
            ExplicitTop = 250
            DesignSize = (
              610
              55)
            object cxLabel3: TcxLabel
              Left = 3
              Top = 3
              Caption = 'Description'
              TabOrder = 0
            end
            object edRecordPrice: TcxMaskEdit
              Left = 3
              Top = 28
              Anchors = [akLeft, akTop, akRight]
              Properties.MaskKind = emkRegExprEx
              Properties.EditMask = '\d+(\.([1-9]\d|0)0)?'
              TabOrder = 1
              Width = 604
            end
          end
        end
      end
    end
  end
end
