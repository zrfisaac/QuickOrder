// # [ zrfisaac ]

// # [ about ]
// # - author : Isaac Caires
// # . - email : zrfisaac@gmail.com
// # . - site : zrfisaac.github.io

// # [ delphi12 ]
unit uModelForm;

interface

uses
  // Delphi
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls;

type
  TModelForm = class(TForm)
    pnBack: TPanel;
  public
    function Check: Boolean; virtual;
    procedure Start; virtual;
  end;

var
  ModelForm: TModelForm;

implementation

{$R *.dfm}

{ TModelForm }

function TModelForm.Check: Boolean;
begin
  // Virtual Method
  Result := True;
end;

procedure TModelForm.Start;
begin
  // Virtual Method
end;

end.

