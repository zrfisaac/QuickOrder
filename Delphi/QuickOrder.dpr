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
  uMenuAbout in 'Sources\uMenuAbout.pas' {frmMenuAbout},
  uModelRoutine in 'Sources\uModelRoutine.pas' {ModelRoutine};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Quick Order';
  Application.CreateForm(TMenuMain, MenuMain);
  Application.CreateForm(TfrmMenuAbout, frmMenuAbout);
  Application.CreateForm(TModelRoutine, ModelRoutine);
  Application.Run;
end.
