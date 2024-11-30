// # [ zrfisaac ]

// # [ about ]
// # - author : Isaac Caires
// # . - email : zrfisaac@gmail.com
// # . - site : zrfisaac.github.io

// # [ delphi12 ]
unit uRoutineOrder;

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
  uModelRoutine, Vcl.Mask, Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TRoutineOrder = class(TModelRoutine)
    tsMain: TTabSheet;
    pnMain: TPanel;
    pnEditName: TPanel;
    lbEditName: TLabel;
    DBGrid1: TDBGrid;
    DBLookupComboBox1: TDBLookupComboBox;
    Panel1: TPanel;
    Label1: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
  end;

var
  RoutineOrder: TRoutineOrder;

implementation

{$R *.dfm}

end.
