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
  OnClose = dxFluentDesignFormClose
  OnCreate = dxFluentDesignFormCreate
  OnShow = dxFluentDesignFormShow
  NavigationControl = dxNavBar
  TextHeight = 15
  object dxNavBar: TdxNavBar
    Left = 0
    Top = 0
    Width = 113
    Height = 460
    Align = alLeft
    ActiveGroupIndex = 0
    TabOrder = 0
    View = 21
    OptionsBehavior.Common.AllowExpandAnimation = True
    OptionsView.HamburgerMenu.NavigationPaneMode = npmNone
    ExplicitHeight = 452
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
    object dxNavBarAbout: TdxNavBarGroup
      Caption = 'About'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      OptionsExpansion.AllowMultipleGroupExpansion = False
      OptionsExpansion.Expandable = False
      OptionsExpansion.Expanded = False
      OptionsExpansion.ShowExpandButton = False
      OnClick = dxNavBarAboutClick
      Links = <>
    end
  end
  object pnBack: TdxPanel
    Left = 113
    Top = 0
    Width = 547
    Height = 460
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 545
    ExplicitHeight = 452
  end
  object sbStatus: TdxStatusBar
    Left = 0
    Top = 460
    Width = 660
    Height = 20
    Panels = <>
    ExplicitTop = 452
    ExplicitWidth = 658
  end
  object dxSkinController: TdxSkinController
    NativeStyle = False
    ScrollbarMode = sbmHybrid
    SkinName = 'Office2007Green'
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
