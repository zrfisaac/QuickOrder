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
    pcMain: TPageControl;
    imHeader: TImage;
    lbHeader: TLabel;
  end;

var
  ModelRoutine: TModelRoutine;

implementation

{$R *.dfm}

end.
