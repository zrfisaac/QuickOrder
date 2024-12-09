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
  cxScrollBox, frDPIAwareControls, frxDPIAwareBaseControls, frxPreview,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxMaskEdit, cxDropDownEdit, cxCalendar,
  frxDBSet, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TMenuReport = class(TModelForm)
    frxReport: TfrxReport;
    pnDatabaseFooter: TdxPanel;
    btPreview: TcxButton;
    sbDatabase: TcxScrollBox;
    pnDatabaseServer: TdxPanel;
    lbDatabaseServer: TcxLabel;
    pnPeriod: TdxPanel;
    lbPeriod: TcxLabel;
    edPeriodBegin: TcxDateEdit;
    edPeriodEnd: TcxDateEdit;
    Label1: TLabel;
    fxdReport: TfrxDBDataset;
    edClient: TcxTextEdit;
    procedure btPreviewClick(Sender: TObject);
  public
    procedure Start; override;
  end;

var
  MenuReport: TMenuReport;

implementation

uses
  uDataMain;

{$R *.dfm}

procedure TMenuReport.btPreviewClick(Sender: TObject);
begin
  inherited;
  DataMain.fdpReport.Close;
  DataMain.fdpReport.ParamByName('@P_CLIENT').AsString := Self.edClient.Text;
  DataMain.fdpReport.ParamByName('@P_DATE_BEGIN').AsString := FormatDateTime('yyyy-MM-dd',Self.edPeriodBegin.Date);
  DataMain.fdpReport.ParamByName('@P_DATE_END').AsString := FormatDateTime('yyyy-MM-dd',Self.edPeriodEnd.Date);
  DataMain.fdpReport.Open;
  Self.frxReport.PrepareReport();
  if (Self.frxReport.PreviewPages.Count > 0) then
    Self.frxReport.ShowPreparedReport();
  DataMain.fdpReport.Close;
end;

procedure TMenuReport.Start;
begin
  inherited;
  Self.edPeriodBegin.Date := Now;
  Self.edPeriodEnd.Date := Now;
end;

end.
