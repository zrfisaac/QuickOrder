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
  Vcl.Buttons,
  uModelRoutine;

type
  TMenuConfig = class(TModelRoutine)
    tsGeneral: TTabSheet;
    tsDatabase: TTabSheet;
    pnGeneral: TPanel;
    pnGeneralFooter: TPanel;
    pnGeneralFooter02: TPanel;
    pnGeneralFooter01: TPanel;
    pnGeneralFooter03: TPanel;
    btGeneralClose: TBitBtn;
    sbGeneral: TScrollBox;
    pnDatabase: TPanel;
    pnDatabaseFooter: TPanel;
    pnDatabaseFooter02: TPanel;
    pnDatabaseFooter01: TPanel;
    pnDatabaseFooter03: TPanel;
    btDatabaseClose: TBitBtn;
    pnDatabaseType: TPanel;
    lbDatabaseType: TLabel;
    cbDatabaseType: TComboBox;
    pnDatabaseConfig: TPanel;
    pcDatabaseConfig: TPageControl;
    tsDatabaseFiredacMysql: TTabSheet;
    pnDatabaseFiredacMysql: TPanel;
    cv: TScrollBox;
    tsDatabaseAdoMssql: TTabSheet;
    pnDatabaseAdoMssql: TPanel;
    sbDatabaseAdoMssql: TScrollBox;
    Panel1: TPanel;
    Label1: TLabel;
    edTipo: TEdit;
    Panel2: TPanel;
    Label2: TLabel;
    Edit1: TEdit;
    Panel3: TPanel;
    Label3: TLabel;
    Edit2: TEdit;
    Panel4: TPanel;
    Label4: TLabel;
    Edit3: TEdit;
    Panel5: TPanel;
    Label5: TLabel;
    Edit4: TEdit;
    Panel6: TPanel;
    Label6: TLabel;
    Edit5: TEdit;
    Panel7: TPanel;
    Label7: TLabel;
    Edit6: TEdit;
    Panel8: TPanel;
    Label8: TLabel;
    Edit7: TEdit;
    Panel9: TPanel;
    ckGeneralRememberWindow: TCheckBox;
    btDatabaseConnection: TBitBtn;
  public
  end;

var
  MenuConfig: TMenuConfig;

implementation

uses
  uDataMain;

{$R *.dfm}

end.
