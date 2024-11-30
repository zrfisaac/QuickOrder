// # [ zrfisaac ]

// # [ about ]
// # - author : Isaac Caires
// # . - email : zrfisaac@gmail.com
// # . - site : zrfisaac.github.io

// # [ delphi12 ]
unit uModelRoutine;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.ComCtrls,
  Vcl.StdCtrls,
  // .\Sources
  uModelForm;

type
  TModelRoutine = class(TModelForm)
    pnHeader: TPanel;
    imHeader: TImage;
    lbHeader: TLabel;
    pnBody: TPanel;
    pcBody: TPageControl;
  private
    FPage: TPanel;
  public
    procedure Page(APage: TPanel);
  end;

var
  ModelRoutine: TModelRoutine;

implementation

{$R *.dfm}

{ TModelRoutine }

procedure TModelRoutine.Page(APage: TPanel);
begin
  Self.pcBody.Visible := False;
  if (Assigned(FPage)) then
    FPage.Parent := TWinControl(FPage.Owner);
  FPage := APage;
  FPage.Parent := Self.pnBody;
end;

end.

