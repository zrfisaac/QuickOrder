unit uMenuMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs,
  cxControls, cxGraphics, cxLookAndFeelPainters, cxLookAndFeels,
  dxSkinsCore, cxContainer, cxEdit, dxNavBar, cxClasses,
  dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  dxSkinsForm, dxSkinsFluentDesignForm, dxSkinOffice2019Colorful, dxUIAClasses,
  dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinWXI,
  dxSkinXmas2008Blue, dxCore, dxNavBarBase, dxNavBarCollns, System.Actions,
  Vcl.ActnList, dxLayoutControlAdapters, Vcl.ExtCtrls, cxGeometry,
  dxFramedControl, dxPanel, dxStatusBar;

type
  TMenuMain = class(TdxFluentDesignForm)
    dxNavBar: TdxNavBar;
    dxSkinController: TdxSkinController;
    dxLookAndFeel: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    dxNavBarClient: TdxNavBarGroup;
    dxNavBarProduct: TdxNavBarGroup;
    dxNavBarOrder: TdxNavBarGroup;
    dxNavBarReport: TdxNavBarGroup;
    dxNavBarConfig: TdxNavBarGroup;
    pnBack: TdxPanel;
    sbStatus: TdxStatusBar;
    procedure dxNavBarClientClick(Sender: TObject);
    procedure dxNavBarProductClick(Sender: TObject);
    procedure dxNavBarOrderClick(Sender: TObject);
    procedure dxNavBarReportClick(Sender: TObject);
    procedure dxNavBarConfigClick(Sender: TObject);
    procedure dxFluentDesignFormCreate(Sender: TObject);
    procedure dxFluentDesignFormShow(Sender: TObject);
  private
    FMenu: TForm;
  public
    procedure Clean;
    procedure Menu(AClass: TComponentClass; var AReference); overload;
    procedure Menu(var AReference; AClass: TComponentClass); overload;
    procedure Modal(AClass: TComponentClass);
    procedure Screen;
  end;

var
  MenuMain: TMenuMain;

implementation

uses
  // .\Sources
  uDataMain,
  uMenuAbout,
  uMenuClient,
  uMenuConfig,
  uMenuProduct,
  uMenuReport,
  uMenuOrder,
  uModelForm,
  uUnitConfig,
  uUnitHelp;

{$R *.dfm}

procedure TMenuMain.Clean;
begin
  if (Assigned(FMenu)) then
    TModelForm(FMenu).pnBack.Parent := TWinControl(TModelForm(FMenu).pnBack.Owner);
  Self.FMenu := nil;
end;

procedure TMenuMain.dxFluentDesignFormCreate(Sender: TObject);
begin
  if not Assigned(DataMain) then
    DataMain := TDataMain.Create(Application);
  if not Assigned(MenuConfig) then
    MenuConfig := TMenuConfig.Create(Application);
end;

procedure TMenuMain.dxFluentDesignFormShow(Sender: TObject);
begin
  MenuConfig.Connnect;
  if not(MenuConfig.Status) then
    Self.Menu(TMenuConfig, MenuConfig);
end;

procedure TMenuMain.dxNavBarClientClick(Sender: TObject);
begin
  Self.Menu(TMenuClient, MenuClient);
end;

procedure TMenuMain.dxNavBarConfigClick(Sender: TObject);
begin
  Self.Menu(TMenuConfig, MenuConfig);
end;

procedure TMenuMain.dxNavBarOrderClick(Sender: TObject);
begin
  Self.Menu(TMenuOrder, MenuOrder);
end;

procedure TMenuMain.dxNavBarProductClick(Sender: TObject);
begin
  Self.Menu(TMenuProduct, MenuProduct);
end;

procedure TMenuMain.dxNavBarReportClick(Sender: TObject);
begin
  Self.Menu(TMenuReport, MenuReport);
end;

procedure TMenuMain.Menu(AClass: TComponentClass; var AReference);
var
  AInstance: TModelForm;
begin
  if (AClass.InheritsFrom(TModelForm)) then
  begin
    if not(Assigned(TModelForm(AReference))) then
    begin
      AInstance := TModelForm(AClass.NewInstance);
      TModelForm(AReference) := AInstance;
      AInstance.Create(Application);
      AInstance.Start;
    end;
    AInstance := TModelForm(AReference);
    FMenu := TForm(AInstance);
    if (AInstance.Check) then
    begin
      Self.Clean;
      AInstance.pnBack.Parent := Self.pnBack;
    end;
  end;
end;

procedure TMenuMain.Menu(var AReference; AClass: TComponentClass);
begin
  Self.Menu(AClass, AReference);
end;

procedure TMenuMain.Modal(AClass: TComponentClass);
var
  AInstance: TForm;
begin
  if (AClass.InheritsFrom(TForm)) then
  begin
    AInstance := TForm(AClass.NewInstance);
    AInstance.Create(Application);
    AInstance.ShowModal;
    AInstance.Free;
  end;
end;

procedure TMenuMain.Screen;
begin
  Self.dxNavBarClient.Visible := MenuConfig.Status;
  Self.dxNavBarProduct.Visible := MenuConfig.Status;
  Self.dxNavBarOrder.Visible := MenuConfig.Status;
  Self.dxNavBarReport.Visible := MenuConfig.Status;
end;

end.

