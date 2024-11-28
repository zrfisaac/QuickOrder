// # [ zrfisaac ]

// # [ about ]
// # - author : Isaac Caires
// # . - email : zrfisaac@gmail.com
// # . - site : zrfisaac.github.io

// # [ delphi12 ]
unit uMenuMain;

interface

uses
  // Delphi
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  System.ImageList,
  System.Actions,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.ComCtrls,
  Vcl.ImgList,
  Vcl.Menus,
  Vcl.ActnList,
  // .\Sources
  uModelForm;

type
  TMenuMain = class(TModelForm)
    sbFooter: TStatusBar;
    miMenu: TMainMenu;
    ilMenu: TImageList;
    acMenu: TActionList;
    miHelp: TMenuItem;
    miAbout: TMenuItem;
    miConfig: TMenuItem;
    miRecord: TMenuItem;
    miReport: TMenuItem;
    miMain: TMenuItem;
    miOrder: TMenuItem;
    miRecordProduct: TMenuItem;
    miRecordClient: TMenuItem;
    acOrder: TAction;
    acRecordProduct: TAction;
    acRecordClient: TAction;
    acAbout: TAction;
    acConfig: TAction;
    acRecord: TAction;
    acMain: TAction;
    acHelp: TAction;
    procedure FormShow(Sender: TObject);
    procedure acAboutExecute(Sender: TObject);
    procedure acConfigExecute(Sender: TObject);
    procedure acOrderExecute(Sender: TObject);
    procedure acRecordProductExecute(Sender: TObject);
    procedure acRecordClientExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  end;

var
  MenuMain: TMenuMain;

implementation

uses
  // .\Sources
  uDataMain,
  uMenuAbout;

{$R *.dfm}

procedure TMenuMain.acAboutExecute(Sender: TObject);
begin
  inherited;
  TfrmMenuAbout.Start;
end;

procedure TMenuMain.acConfigExecute(Sender: TObject);
begin
  inherited;
  DataMain.Debug;
end;

procedure TMenuMain.acOrderExecute(Sender: TObject);
begin
  inherited;
  //
end;

procedure TMenuMain.acRecordClientExecute(Sender: TObject);
begin
  inherited;
  //
end;

procedure TMenuMain.acRecordProductExecute(Sender: TObject);
begin
  inherited;
  //
end;

procedure TMenuMain.FormCreate(Sender: TObject);
begin
  inherited;
  if not Assigned(DataMain) then
    DataMain := TDataMain.Create(Application);
end;

procedure TMenuMain.FormShow(Sender: TObject);
begin
  inherited;
  Self.Caption := Application.Title;
end;

end.
