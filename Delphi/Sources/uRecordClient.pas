// # [ zrfisaac ]

// # [ about ]
// # - author : Isaac Caires
// # . - email : zrfisaac@gmail.com
// # . - site : zrfisaac.github.io

// # [ delphi12 ]
unit uRecordClient;

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
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.Buttons,
  Vcl.Mask,
  Vcl.DBCtrls,
  uModelRoutine;

type
  TRecordClient = class(TModelRoutine)
    tsSearch: TTabSheet;
    tsEdit: TTabSheet;
    pnSearch: TPanel;
    pnSearchName: TPanel;
    lbSearchName: TLabel;
    edSearchName: TEdit;
    btSearchName: TBitBtn;
    dbgSearch: TDBGrid;
    pnEdit: TPanel;
    sbEdit: TScrollBox;
    pnEditName: TPanel;
    lbEditName: TLabel;
    dbEditName: TDBEdit;
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Panel2: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    pnDatabaseFooter: TPanel;
    pnDatabaseFooter02: TPanel;
    pnDatabaseFooter01: TPanel;
    btDatabaseConnection: TBitBtn;
    pnDatabaseFooter03: TPanel;
    btDatabaseClose: TBitBtn;
  end;

var
  RecordClient: TRecordClient;

implementation

{$R *.dfm}

end.
