program QuickOrder;

uses
  Vcl.Forms,
  uMenuMain in 'Sources\uMenuMain.pas' {MenuMain: TdxFluentDesignForm},
  uDataMain in 'Sources\uDataMain.pas' {DataMain: TDataModule},
  uModelForm in 'Sources\uModelForm.pas' {ModelForm},
  uMenuConfig in 'Sources\uMenuConfig.pas' {MenuConfig},
  uMenuClient in 'Sources\uMenuClient.pas' {MenuClient},
  uMenuOrder in 'Sources\uMenuOrder.pas' {MenuOrder},
  uMenuProduct in 'Sources\uMenuProduct.pas' {MenuProduct},
  uMenuReport in 'Sources\uMenuReport.pas' {MenuReport},
  uUnitConfig in 'Sources\uUnitConfig.pas',
  uUnitHelp in 'Sources\uUnitHelp.pas',
  uMenuAbout in 'Sources\uMenuAbout.pas' {MenuAbout};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Quick Order';
  Application.CreateForm(TMenuMain, MenuMain);
  Application.Run;
end.
