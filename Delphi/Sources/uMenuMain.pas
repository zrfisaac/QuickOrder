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
    procedure FormShow(Sender: TObject);
    procedure acAboutExecute(Sender: TObject);
    procedure acConfigExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FMenu: TForm;
  public
    procedure Clean;
    procedure Menu(AClass: TComponentClass; var AReference); overload;
    procedure Menu(var AReference; AClass: TComponentClass); overload;
    procedure Modal(AClass: TComponentClass);
  end;

var
  MenuMain: TMenuMain;

implementation

uses
  // .\Sources
  uDataMain,
  uMenuAbout,
  uUnitHelp;

{$R *.dfm}

procedure TMenuMain.acAboutExecute(Sender: TObject);
begin
  inherited;
  TMenuAbout.Start;
end;

procedure TMenuMain.acConfigExecute(Sender: TObject);
begin
  inherited;
  DataMain.Debug;
end;

procedure TMenuMain.Clean;
begin
  if (Assigned(FMenu)) then
    TModelForm(FMenu).pnBack.Parent := TWinControl(TModelForm(FMenu).pnBack.Owner);
  Self.FMenu := nil;
end;

procedure TMenuMain.FormCreate(Sender: TObject);
begin
  inherited;
  // Title
  Self.Caption := Application.Title;

  // Version
  if (Self.sbFooter.Panels.Count > 0) then
    Self.sbFooter.Panels[0].Text := UnitHelp.Version;

  // DataModule
  if not Assigned(DataMain) then
    DataMain := TDataMain.Create(Application);
end;

procedure TMenuMain.FormShow(Sender: TObject);
begin
  inherited;
  Self.Caption := Application.Title;
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

end.

