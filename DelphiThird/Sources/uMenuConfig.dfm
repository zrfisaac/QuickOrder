inherited MenuConfig: TMenuConfig
  Caption = 'MenuConfig'
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
      Properties.ActivePage = tsDatabase
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 394
      ClientRectLeft = 4
      ClientRectRight = 618
      ClientRectTop = 26
      object tsDatabase: TcxTabSheet
        Caption = 'tsDatabase'
        ImageIndex = 0
        object sbDatabase: TcxScrollBox
          Left = 0
          Top = 0
          Width = 614
          Height = 320
          Align = alClient
          Color = clGray
          ParentColor = False
          TabOrder = 0
          object pnDatabaseServer: TdxPanel
            Left = 0
            Top = 0
            Width = 612
            Height = 57
            Align = alTop
            TabOrder = 0
            DesignSize = (
              610
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
            Width = 612
            Height = 57
            Align = alTop
            TabOrder = 1
            DesignSize = (
              610
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
          object pnDatabaseUser: TdxPanel
            Left = 0
            Top = 114
            Width = 612
            Height = 57
            Align = alTop
            TabOrder = 2
            DesignSize = (
              610
              55)
            object lbDatabaseUser: TcxLabel
              Left = 3
              Top = 3
              Caption = 'User'
              TabOrder = 0
            end
            object edDatabaseUser: TcxTextEdit
              Left = 3
              Top = 28
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 1
              Text = 'sa'
              Width = 604
            end
          end
          object pnDatabasePassword: TdxPanel
            Left = 0
            Top = 171
            Width = 612
            Height = 57
            Align = alTop
            TabOrder = 3
            DesignSize = (
              610
              55)
            object lbDatabasePassword: TcxLabel
              Left = 3
              Top = 3
              Caption = 'Password'
              TabOrder = 0
            end
            object edDatabasePassword: TcxTextEdit
              Left = 3
              Top = 28
              Anchors = [akLeft, akTop, akRight]
              Properties.PasswordChar = '#'
              TabOrder = 1
              Text = 'ABcd!@34'
              Width = 604
            end
          end
        end
        object pnDatabaseFooter: TdxPanel
          Left = 0
          Top = 320
          Width = 614
          Height = 48
          Align = alBottom
          TabOrder = 1
          object btDatabaseConnection: TcxButton
            Left = 8
            Top = 8
            Width = 81
            Height = 25
            Caption = 'Connection'
            TabOrder = 0
            OnClick = btDatabaseConnectionClick
          end
        end
      end
    end
  end
end
