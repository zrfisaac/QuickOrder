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
  uUnitHelp in 'Sources\uUnitHelp.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMenuMain, MenuMain);
  Application.CreateForm(TDataMain, DataMain);
  Application.CreateForm(TModelForm, ModelForm);
  Application.CreateForm(TMenuConfig, MenuConfig);
  Application.CreateForm(TMenuClient, MenuClient);
  Application.CreateForm(TMenuOrder, MenuOrder);
  Application.CreateForm(TMenuProduct, MenuProduct);
  Application.CreateForm(TMenuReport, MenuReport);
  Application.Run;
end.
