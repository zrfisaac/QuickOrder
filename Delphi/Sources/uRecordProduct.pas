// # [ zrfisaac ]

// # [ about ]
// # - author : Isaac Caires
// # . - email : zrfisaac@gmail.com
// # . - site : zrfisaac.github.io

// # [ delphi12 ]
unit uRecordProduct;

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
  uModelRoutine, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.Mask,
  Vcl.DBCtrls;

type
  TRecordProduct = class(TModelRoutine)
    tsSearch: TTabSheet;
    tsEdit: TTabSheet;
    pnSearch: TPanel;
    pnEdit: TPanel;
    pnSearchName: TPanel;
    lbSearchName: TLabel;
    edSearchName: TEdit;
    btSearchName: TBitBtn;
    dbgSearch: TDBGrid;
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
  end;

var
  RecordProduct: TRecordProduct;

implementation

{$R *.dfm}

end.
