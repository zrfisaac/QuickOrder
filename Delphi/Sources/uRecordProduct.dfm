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
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitHeight = 320
      end
    end
  end
end
