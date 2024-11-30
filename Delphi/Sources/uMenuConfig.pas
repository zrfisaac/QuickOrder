// # [ zrfisaac ]

// # [ about ]
// # - author : Isaac Caires
// # . - email : zrfisaac@gmail.com
// # . - site : zrfisaac.github.io

// # [ delphi12 ]
unit uMenuConfig;

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
  Vcl.ComCtrls,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  uModelRoutine, Vcl.Buttons;

type
  TMenuConfig = class(TModelRoutine)
    tsGeneral: TTabSheet;
    tsDatabase: TTabSheet;
    pnRodape: TPanel;
    pnRodape02: TPanel;
    pnRodape01: TPanel;
    pnRodape03: TPanel;
    btNovo: TBitBtn;
  public
  end;

var
  MenuConfig: TMenuConfig;

implementation

{$R *.dfm}

end.
