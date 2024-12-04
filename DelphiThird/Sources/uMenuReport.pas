unit uMenuReport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModelForm, frxSmartMemo, frCoreClasses,
  frxClass, cxGraphics, dxUIAClasses, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinWXI,
  dxSkinXmas2008Blue, cxGeometry, dxFramedControl, cxContainer, cxEdit, cxLabel,
  Vcl.ExtCtrls, dxPanel, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxTextEdit,
  cxScrollBox, frDPIAwareControls, frxDPIAwareBaseControls, frxPreview;

type
  TMenuReport = class(TModelForm)
    frxReport: TfrxReport;
    pnDatabaseFooter: TdxPanel;
    btPreview: TcxButton;
    sbDatabase: TcxScrollBox;
    pnDatabaseServer: TdxPanel;
    lbDatabaseServer: TcxLabel;
    edDatabaseServer: TcxTextEdit;
    pnDatabaseDatabase: TdxPanel;
    lbDatabaseDatabase: TcxLabel;
    edDatabaseDatabase: TcxTextEdit;
    procedure btPreviewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MenuReport: TMenuReport;

implementation

{$R *.dfm}

procedure TMenuReport.btPreviewClick(Sender: TObject);
begin
  inherited;
  Self.frxReport.PrepareReport();
  if (Self.frxReport.PreviewPages.Count > 0) then
    Self.frxReport.ShowPreparedReport();
end;

end.
