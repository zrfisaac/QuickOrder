inherited RoutineOrder: TRoutineOrder
  Caption = 'RoutineOrder'
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
        ActivePage = tsMain
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 584
        ExplicitHeight = 328
        object tsMain: TTabSheet
          Caption = 'Main'
          object pnMain: TPanel
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
            object pnEditName: TPanel
              Left = 0
              Top = 0
              Width = 576
              Height = 65
              Align = alTop
              ParentBackground = False
              TabOrder = 0
              ExplicitTop = 8
              object lbEditName: TLabel
                Left = 12
                Top = 8
                Width = 31
                Height = 15
                Caption = 'Client'
              end
              object DBLookupComboBox1: TDBLookupComboBox
                Left = 12
                Top = 29
                Width = 549
                Height = 23
                TabOrder = 0
              end
            end
            object DBGrid1: TDBGrid
              Left = 0
              Top = 130
              Width = 576
              Height = 168
              Align = alClient
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = 'Segoe UI'
              TitleFont.Style = []
            end
            object Panel1: TPanel
              Left = 0
              Top = 65
              Width = 576
              Height = 65
              Align = alTop
              ParentBackground = False
              TabOrder = 2
              ExplicitLeft = -3
              ExplicitTop = 116
              object Label1: TLabel
                Left = 12
                Top = 8
                Width = 42
                Height = 15
                Caption = 'Product'
              end
              object DBLookupComboBox2: TDBLookupComboBox
                Left = 12
                Top = 29
                Width = 549
                Height = 23
                TabOrder = 0
              end
            end
          end
        end
      end
    end
  end
end
