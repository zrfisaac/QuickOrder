inherited RecordClient: TRecordClient
  Caption = 'RecordClient'
  StyleElements = [seFont, seClient, seBorder]
  TextHeight = 15
  inherited pnBack: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited pnHeader: TPanel
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 582
      inherited lbHeader: TLabel
        Width = 550
        Height = 31
        StyleElements = [seFont, seClient, seBorder]
      end
    end
    inherited pnBody: TPanel
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 0
      ExplicitTop = 33
      ExplicitWidth = 582
      ExplicitHeight = 320
      inherited pcBody: TPageControl
        Height = 286
        ActivePage = tsSearch
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 584
        ExplicitHeight = 328
        object tsSearch: TTabSheet
          Caption = 'tsSearch'
          object pnSearch: TPanel
            Left = 0
            Top = 0
            Width = 576
            Height = 256
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitLeft = 168
            ExplicitTop = 40
            ExplicitWidth = 185
            ExplicitHeight = 41
            object pnSearchName: TPanel
              Left = 0
              Top = 0
              Width = 576
              Height = 65
              Align = alTop
              ParentBackground = False
              TabOrder = 0
              DesignSize = (
                576
                65)
              object lbSearchName: TLabel
                Left = 12
                Top = 8
                Width = 32
                Height = 15
                Caption = 'Name'
              end
              object edSearchName: TEdit
                Left = 12
                Top = 29
                Width = 461
                Height = 23
                Anchors = [akLeft, akTop, akRight]
                TabOrder = 0
              end
              object btSearchName: TBitBtn
                Left = 486
                Top = 24
                Width = 75
                Height = 25
                Caption = 'Search'
                Enabled = False
                TabOrder = 1
              end
            end
            object dbgSearch: TDBGrid
              Left = 0
              Top = 65
              Width = 576
              Height = 191
              Align = alClient
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = 'Segoe UI'
              TitleFont.Style = []
            end
          end
        end
        object tsEdit: TTabSheet
          Caption = 'tsEdit'
          ImageIndex = 1
          object pnEdit: TPanel
            Left = 0
            Top = 0
            Width = 576
            Height = 256
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitLeft = 168
            ExplicitTop = 40
            ExplicitWidth = 185
            ExplicitHeight = 41
            object sbEdit: TScrollBox
              Left = 0
              Top = 0
              Width = 576
              Height = 256
              Align = alClient
              Color = clGray
              ParentColor = False
              TabOrder = 0
              ExplicitHeight = 298
              object pnEditName: TPanel
                Left = 0
                Top = 0
                Width = 572
                Height = 65
                Align = alTop
                ParentBackground = False
                TabOrder = 0
                DesignSize = (
                  572
                  65)
                object lbEditName: TLabel
                  Left = 12
                  Top = 8
                  Width = 32
                  Height = 15
                  Caption = 'Name'
                end
                object dbEditName: TDBEdit
                  Left = 12
                  Top = 29
                  Width = 549
                  Height = 23
                  Anchors = [akLeft, akTop, akRight]
                  TabOrder = 0
                end
              end
              object Panel1: TPanel
                Left = 0
                Top = 65
                Width = 572
                Height = 65
                Align = alTop
                ParentBackground = False
                TabOrder = 1
                ExplicitLeft = -11
                ExplicitTop = 160
                DesignSize = (
                  572
                  65)
                object Label1: TLabel
                  Left = 12
                  Top = 8
                  Width = 42
                  Height = 15
                  Caption = 'Address'
                end
                object DBEdit1: TDBEdit
                  Left = 12
                  Top = 29
                  Width = 549
                  Height = 23
                  Anchors = [akLeft, akTop, akRight]
                  TabOrder = 0
                end
              end
              object Panel2: TPanel
                Left = 0
                Top = 130
                Width = 572
                Height = 65
                Align = alTop
                ParentBackground = False
                TabOrder = 2
                ExplicitTop = 226
                DesignSize = (
                  572
                  65)
                object Label2: TLabel
                  Left = 12
                  Top = 8
                  Width = 34
                  Height = 15
                  Caption = 'Phone'
                end
                object Label3: TLabel
                  Left = 215
                  Top = 8
                  Width = 29
                  Height = 15
                  Caption = 'Email'
                end
                object DBEdit2: TDBEdit
                  Left = 12
                  Top = 29
                  Width = 197
                  Height = 23
                  TabOrder = 0
                end
                object DBEdit3: TDBEdit
                  Left = 215
                  Top = 29
                  Width = 346
                  Height = 23
                  Anchors = [akLeft, akTop, akRight]
                  TabOrder = 1
                end
              end
            end
          end
        end
      end
      object pnDatabaseFooter: TPanel
        Left = 0
        Top = 286
        Width = 584
        Height = 42
        Align = alBottom
        TabOrder = 1
        ExplicitTop = 256
        ExplicitWidth = 576
        object pnDatabaseFooter02: TPanel
          Left = 486
          Top = 1
          Width = 10
          Height = 40
          Align = alRight
          BevelOuter = bvNone
          Color = clFuchsia
          ParentBackground = False
          TabOrder = 0
          Visible = False
        end
        object pnDatabaseFooter01: TPanel
          Left = 1
          Top = 1
          Width = 485
          Height = 40
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object btDatabaseConnection: TBitBtn
            Left = 6
            Top = 8
            Width = 67
            Height = 25
            Caption = 'New'
            Enabled = False
            TabOrder = 0
          end
        end
        object pnDatabaseFooter03: TPanel
          Left = 496
          Top = 1
          Width = 87
          Height = 40
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 2
          object btDatabaseClose: TBitBtn
            Left = 6
            Top = 8
            Width = 75
            Height = 25
            Caption = 'Close'
            Enabled = False
            TabOrder = 0
          end
        end
      end
    end
  end
end
