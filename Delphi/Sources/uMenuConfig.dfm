inherited MenuConfig: TMenuConfig
  Caption = 'MenuConfig'
  StyleElements = [seFont, seClient, seBorder]
  TextHeight = 15
  inherited pnBack: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited pnHeader: TPanel
      StyleElements = [seFont, seClient, seBorder]
      inherited lbHeader: TLabel
        Width = 550
        Height = 31
        StyleElements = [seFont, seClient, seBorder]
      end
    end
  end
end
