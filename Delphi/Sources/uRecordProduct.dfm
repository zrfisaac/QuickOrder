inherited RecordProduct: TRecordProduct
  Caption = 'RecordProduct'
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
        ActivePage = tsEdit
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
            Height = 298
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
              ExplicitTop = 8
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
              Height = 233
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
            Height = 298
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
              Height = 298
              Align = alClient
              Color = clGray
              ParentColor = False
              TabOrder = 0
              ExplicitLeft = 168
              ExplicitTop = 80
              ExplicitWidth = 185
              ExplicitHeight = 41
              object pnEditName: TPanel
                Left = 0
                Top = 0
                Width = 572
                Height = 65
                Align = alTop
                ParentBackground = False
                TabOrder = 0
                ExplicitTop = 8
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
                ExplicitTop = 73
                DesignSize = (
                  572
                  65)
                object Label1: TLabel
                  Left = 12
                  Top = 8
                  Width = 60
                  Height = 15
                  Caption = 'Description'
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
                  Width = 26
                  Height = 15
                  Caption = 'Price'
                end
                object DBEdit2: TDBEdit
                  Left = 12
                  Top = 29
                  Width = 157
                  Height = 23
                  Anchors = [akLeft, akTop, akRight]
                  TabOrder = 0
                end
              end
            end
          end
        end
      end
    end
  end
end
