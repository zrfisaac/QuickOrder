object MenuMain: TMenuMain
  Left = 0
  Top = 0
  Caption = 'MenuMain'
  ClientHeight = 480
  ClientWidth = 660
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  NavigationControl = dxNavBar
  TextHeight = 15
  object dxNavBar: TdxNavBar
    Left = 0
    Top = 0
    Width = 210
    Height = 480
    Align = alLeft
    ActiveGroupIndex = 0
    TabOrder = 0
    View = 21
    OptionsBehavior.Common.AllowExpandAnimation = True
    OptionsView.HamburgerMenu.NavigationPaneMode = npmNone
    ExplicitLeft = -6
    object dxNavBarClient: TdxNavBarGroup
      Caption = 'Client'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      OptionsExpansion.AllowMultipleGroupExpansion = False
      OptionsExpansion.Expandable = False
      OptionsExpansion.Expanded = False
      OptionsExpansion.ShowExpandButton = False
      OnClick = dxNavBarClientClick
      Links = <>
    end
    object dxNavBarProduct: TdxNavBarGroup
      Caption = 'Product'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      OptionsExpansion.AllowMultipleGroupExpansion = False
      OptionsExpansion.Expandable = False
      OptionsExpansion.Expanded = False
      OptionsExpansion.ShowExpandButton = False
      OnClick = dxNavBarProductClick
      Links = <>
    end
    object dxNavBarOrder: TdxNavBarGroup
      Caption = 'Order'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      OptionsExpansion.AllowMultipleGroupExpansion = False
      OptionsExpansion.Expandable = False
      OptionsExpansion.Expanded = False
      OptionsExpansion.ShowExpandButton = False
      OnClick = dxNavBarOrderClick
      Links = <>
    end
    object dxNavBarReport: TdxNavBarGroup
      Caption = 'Report'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      OptionsExpansion.AllowMultipleGroupExpansion = False
      OptionsExpansion.Expandable = False
      OptionsExpansion.Expanded = False
      OptionsExpansion.ShowExpandButton = False
      OnClick = dxNavBarReportClick
      Links = <>
    end
    object dxNavBarConfig: TdxNavBarGroup
      Caption = 'Configuration'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      OptionsExpansion.AllowMultipleGroupExpansion = False
      OptionsExpansion.Expandable = False
      OptionsExpansion.Expanded = False
      OptionsExpansion.ShowExpandButton = False
      OnClick = dxNavBarConfigClick
      Links = <>
    end
  end
  object dxLayoutControl: TdxLayoutControl
    Left = 210
    Top = 0
    Width = 450
    Height = 480
    Align = alClient
    TabOrder = 1
    LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
    object dxLayoutControlGroup_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      Hidden = True
      ShowBorder = False
      Index = -1
    end
  end
  object dxSkinController: TdxSkinController
    NativeStyle = False
    ScrollbarMode = sbmHybrid
    SkinName = 'Office2019Colorful'
    Left = 256
    Top = 72
  end
  object dxLookAndFeel: TdxLayoutLookAndFeelList
    Left = 256
    Top = 16
    object dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
end
