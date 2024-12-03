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
  Vcl.ActnList;

type
  TMenuMain = class(TdxFluentDesignForm)
    dxNavBar: TdxNavBar;
    dxSkinController: TdxSkinController;
    dxLayoutControlGroup_Root: TdxLayoutGroup;
    dxLayoutControl: TdxLayoutControl;
    dxLookAndFeel: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    dxNavBarClient: TdxNavBarGroup;
    dxNavBarProduct: TdxNavBarGroup;
    dxNavBarOrder: TdxNavBarGroup;
    dxNavBarReport: TdxNavBarGroup;
    dxNavBarConfig: TdxNavBarGroup;
    procedure dxNavBarClientClick(Sender: TObject);
    procedure dxNavBarProductClick(Sender: TObject);
    procedure dxNavBarOrderClick(Sender: TObject);
    procedure dxNavBarReportClick(Sender: TObject);
    procedure dxNavBarConfigClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MenuMain: TMenuMain;

implementation

uses
  uDataMain;

{$R *.dfm}

procedure TMenuMain.dxNavBarClientClick(Sender: TObject);
begin
//
ShowMessage('AA')
end;

procedure TMenuMain.dxNavBarConfigClick(Sender: TObject);
begin
//
end;

procedure TMenuMain.dxNavBarOrderClick(Sender: TObject);
begin
//
end;

procedure TMenuMain.dxNavBarProductClick(Sender: TObject);
begin
//
end;

procedure TMenuMain.dxNavBarReportClick(Sender: TObject);
begin
//
end;

end.
