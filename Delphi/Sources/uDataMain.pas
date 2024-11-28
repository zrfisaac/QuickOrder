// # [ zrfisaac ]

// # [ about ]
// # - author : Isaac Caires
// # . - email : zrfisaac@gmail.com
// # . - site : zrfisaac.github.io

// # [ delphi12 ]
unit uDataMain;

interface

uses
  // Delphi
  System.SysUtils,
  System.Classes,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.VCLUI.Wait,
  Vcl.Forms,
  Data.DB,
  FireDAC.Comp.Client,
  FireDAC.Stan.Param,
  FireDAC.DatS,
  FireDAC.DApt.Intf,
  FireDAC.DApt,
  FireDAC.Comp.DataSet,
  FireDAC.Phys.ODBCBase, // Basic ODBC support
  FireDAC.Phys.ODBCWrapper, // ODBC with wrapper functionality
  FireDAC.Phys.ODBCCli, // ODBC client connection
  FireDAC.Phys.MSSQLMeta,
  Data.FMTBcd,
  Data.SqlExpr,
  Data.Win.ADODB;

type
  TFDPhysODBCDriverLink = class(TFDPhysODBCBaseDriverLink);


  TDataMain = class(TDataModule)
    fdTraDatabase: TFDTransaction;
    fdConDatabase: TFDConnection;
    fdTabProduct: TFDTable;
    fdUpdProduct: TFDUpdateSQL;
    dtsProduct: TDataSource;
    fdTabClient: TFDTable;
    fdUpdClient: TFDUpdateSQL;
    dtsClient: TDataSource;
    exConDatabase: TSQLConnection;
    adConDatabase: TADOConnection;
    adTabClient: TADOTable;
    adUpdProduct: TADOTable;
    exTabClient: TSQLTable;
    adTabProduct: TSQLTable;
    fdQuery: TFDQuery;
    exQuery: TSQLQuery;
    adQuery: TADOQuery;
  public
    procedure Debug;
  end;

var
  DataMain: TDataMain;

var
  ODBCDriverLink: TFDPhysODBCDriverLink;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDataMain }

procedure TDataMain.Debug;
begin
   {
  with (Self.conDatabase) do
  begin
    ODBCDriverLink := TFDPhysODBCDriverLink.Create(Application);
    ODBCDriverLink.DriverID := 'MSSQL'; // Set the driver to MSSQL
    ODBCDriverLink.ODBCDriver := 'ODBC Driver 17 for SQL Server'; // Specify the ODBC driver for SQL Server
    ODBCDriverLink.ODBCAdvanced := 'CLOC=en_US.CP1252;DLOC=en_US.819'; // Optional, configure locale settings
    Close;
    Params.Values['DriverID'] := 'MSSQL';
    Params.Values['ODBCDriver'] := 'ODBC Driver 17 for SQL Server';
    Params.Values['ODBCAdvanced'] := '';
    Params.Values['Server'] := '127.0.0.1';
    Params.Values['Database'] := 'master';
    Params.Values['User_Name'] := 'sa';
    Params.Values['Password'] := 'Maker@123';
    Open;
    ODBCDriverLink.Free;
  end;
  // }
end;

end.
