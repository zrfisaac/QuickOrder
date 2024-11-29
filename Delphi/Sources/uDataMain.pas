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
  Vcl.Dialogs,
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
  Data.Win.ADODB,
  FireDAC.Phys.MySQLDef,
  FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat,
  FireDAC.Phys.SQLiteDef,
  FireDAC.Phys.SQLite,
  FireDAC.Phys.MySQL;

type
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
    fdLkMysql: TFDPhysMySQLDriverLink;
    fdLkSqlite: TFDPhysSQLiteDriverLink;
  public
    procedure Debug;
  end;

var
  DataMain: TDataMain;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDataMain }

procedure TDataMain.Debug;
begin
  // https://www.connectionstrings.com/sql-server/

  // dbExpress
   (*
  try
    with (Self.exConDatabase) do
    begin
      Close;
      DriverName := 'MSSQL';
      Params.Values['HostName'] := 'localhost';
      Params.Values['Database'] := 'master';
      Params.Values['UserName'] := 'sa';
      Params.Values['Password'] := 'ABcd!@34';
      Params.Values['Port'] := '1433';
      Params.Values['Encrypt'] := 'False';
      Params.Values['ConnectionTimeout'] := '30';
      Params.Values['IntegratedSecurity'] := 'False';
      Open;
      ShowMessage('Success!');
    end;
  except
    on E: Exception do
    begin
      ShowMessage('Error : ' + E.Message);
    end;
  end;
  // *)

  // dbExpress
   (*
  try
    with (Self.exConDatabase) do
    begin
      Close;
      DriverName := 'MSSQL';
      Params.Values['HostName'] := 'localhost';
      Params.Values['Database'] := 'master';
      Params.Values['UserName'] := 'sa';
      Params.Values['Password'] := 'ABcd!@34';
      Params.Values['Port'] := '1433';
      Params.Values['Encrypt'] := 'False';
      Params.Values['ConnectionTimeout'] := '30';
      Params.Values['IntegratedSecurity'] := 'False';
      Open;
      ShowMessage('Success!');
    end;
  except
    on E: Exception do
    begin
      ShowMessage('Error : ' + E.Message);
    end;
  end;
  // *)

  // ADO - SQLNCLI10
   (*
  try
    with (Self.adConDatabase) do
    begin
      Close;
      ConnectionString := ''
        + 'Provider=SQLNCLI10;'
        + 'Server=localhost;'
        + 'Database=master;'
        + 'Uid=sa;'
        + 'Pwd=ABcd!@34;'
      ;
      Open;
      ShowMessage('Success!');
    end;
  except
    on E: Exception do
    begin
      ShowMessage('Error : ' + E.Message);
    end;
  end;
  // *)

  // ADO - SQL Native Client - SQL Native Client 9.0 ODBC Driver
   (*
  try
    with (Self.adConDatabase) do
    begin
      Close;
      ConnectionString := ''
        + 'Driver={SQL Native Client};'
        + 'Server=localhost;'
        + 'Database=master;'
        + 'Uid=sa;'
        + 'Pwd=ABcd!@34;'
      ;
      Open;
      ShowMessage('Success!');
    end;
  except
    on E: Exception do
    begin
      ShowMessage('Error : ' + E.Message);
    end;
  end;
  // *)

  // ADO - SQL Server - Microsoft SQL Server ODBC Driver
   (*
  try
    with (Self.adConDatabase) do
    begin
      Close;
      ConnectionString := ''
        + 'Driver={SQL Server};'
        + 'Server=localhost;'
        + 'Database=master;'
        + 'Uid=sa;'
        + 'Pwd=ABcd!@34;;'
        + 'Trusted_Connection=Yes;'
      ;
      Open;
      ShowMessage('Success!');
    end;
  except
    on E: Exception do
    begin
      ShowMessage('Error : ' + E.Message);
    end;
  end;
  // *)
end;

end.
