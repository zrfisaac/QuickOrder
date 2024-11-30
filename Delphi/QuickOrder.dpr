// # [ zrfisaac ]

// # [ about ]
// # - author : Isaac Caires
// # . - email : zrfisaac@gmail.com
// # . - site : zrfisaac.github.io

// # [ delphi12 ]
program QuickOrder;

{$IFDEF DEBUG}
  {$APPTYPE CONSOLE}
{$ENDIF}

uses
  Vcl.Forms,
  uModelForm in 'Sources\uModelForm.pas' {ModelForm},
  uMenuMain in 'Sources\uMenuMain.pas' {MenuMain},
  uDataMain in 'Sources\uDataMain.pas' {DataMain: TDataModule},
  uMenuAbout in 'Sources\uMenuAbout.pas' {MenuAbout},
  uModelRoutine in 'Sources\uModelRoutine.pas' {ModelRoutine},
  uUnitHelp in 'Sources\uUnitHelp.pas',
  uUnitConfig in 'Sources\uUnitConfig.pas',
  uMenuConfig in 'Sources\uMenuConfig.pas' {MenuConfig},
  uRecordProduct in 'Sources\uRecordProduct.pas' {RecordProduct},
  uRecordClient in 'Sources\uRecordClient.pas' {RecordClient},
  uRoutineOrder in 'Sources\uRoutineOrder.pas' {RoutineOrder};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Quick Order';
  Application.CreateForm(TMenuMain, MenuMain);
  Application.CreateForm(TMenuAbout, MenuAbout);
  Application.CreateForm(TModelRoutine, ModelRoutine);
  Application.CreateForm(TMenuConfig, MenuConfig);
  Application.CreateForm(TRecordProduct, RecordProduct);
  Application.CreateForm(TRecordClient, RecordClient);
  Application.CreateForm(TRoutineOrder, RoutineOrder);
  Application.Run;
end.
