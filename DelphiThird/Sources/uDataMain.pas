unit uDataMain;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Phys.MSSQLDef, FireDAC.Stan.Intf,
  FireDAC.Phys, FireDAC.Phys.ODBCBase, FireDAC.Phys.MSSQL, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TDataMain = class(TDataModule)
    fdLinkMssql: TFDPhysMSSQLDriverLink;
    fdConnection: TFDConnection;
    fdTransaction: TFDTransaction;
    fdQuery: TFDQuery;
  end;

var
  DataMain: TDataMain;

resourcestring
  RsSqlPrepareCreate = 'IF NOT EXISTS (SELECT TOP 1 NULL FROM SYS.DATABASES WHERE NAME = ''%s'') CREATE DATABASE %s;';
  RsSqlPrepareDestroy = 'IF EXISTS (SELECT TOP 1 NULL FROM SYS.DATABASES WHERE NAME = ''%s'') DROP DATABASE %s;';
  RsSqlPrepareTest = 'SELECT TOP 1 NULL FROM SYS.DATABASES WHERE NAME = ''%s'';';

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
