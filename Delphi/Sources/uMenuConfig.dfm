inherited MenuConfig: TMenuConfig
  Caption = 'MenuConfig'
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
        ActivePage = tsGeneral
        ExplicitLeft = 1
        ExplicitTop = 5
        ExplicitWidth = 584
        ExplicitHeight = 328
        object tsGeneral: TTabSheet
          Caption = 'General'
          object pnRodape: TPanel
            Left = 0
            Top = 256
            Width = 576
            Height = 42
            Align = alBottom
            TabOrder = 0
            ExplicitTop = 391
            ExplicitWidth = 622
            object pnRodape02: TPanel
              Left = 478
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
            object pnRodape01: TPanel
              Left = 1
              Top = 1
              Width = 477
              Height = 40
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
            end
            object pnRodape03: TPanel
              Left = 488
              Top = 1
              Width = 87
              Height = 40
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 2
              object btNovo: TBitBtn
                Left = 6
                Top = 8
                Width = 75
                Height = 25
                Caption = 'Novo'
                Enabled = False
                TabOrder = 0
              end
            end
          end
        end
        object tsDatabase: TTabSheet
          Caption = 'Database'
          ImageIndex = 1
        end
      end
    end
  end
end
