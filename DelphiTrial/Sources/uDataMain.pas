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
    fdtClient: TFDTable;
    fdtProduct: TFDTable;
    dtsClient: TDataSource;
    dtsProduct: TDataSource;
    fduClient: TFDUpdateSQL;
    fduProduct: TFDUpdateSQL;
    fdtClientcl_client: TFDAutoIncField;
    fdtClientcl_name: TStringField;
    fdtClientcl_address: TStringField;
    fdtClientcl_phone: TStringField;
    fdtClientcl_email: TStringField;
    fdtProductcl_product: TFDAutoIncField;
    fdtProductcl_name: TStringField;
    fdtProductcl_description: TStringField;
    fdtProductcl_price: TFMTBCDField;
    fdtClientDelete: TFDQuery;
    fdtProductDelete: TFDQuery;
    fdpReport: TFDStoredProc;
    dtsReport: TDataSource;
    fdLinkMssql: TFDPhysMSSQLDriverLink;
    fdConnection: TFDConnection;
    fdTransaction: TFDTransaction;
    fdQuery: TFDQuery;
    fdpOrderId: TFDStoredProc;
    fdtItem: TFDMemTable;
    dtsItem: TDataSource;
    fdtItemfdtItemProductId: TIntegerField;
    fdtItemfdtItemProductName: TStringField;
    fdtItemfdtItemProductQuantity: TIntegerField;
    fdtItemfdtItemProductPrice: TFloatField;
    fdtItemfdtItemProductValue: TFloatField;
    fdtItemAdd: TFDQuery;
    fdpReportorder_id: TFDAutoIncField;
    fdpReportorder_date: TSQLTimeStampField;
    fdpReportorder_value: TFMTBCDField;
    fdpReportorder_item_id: TFDAutoIncField;
    fdpReportorder_item_price: TFMTBCDField;
    fdpReportorder_item_quantity: TIntegerField;
    fdpReportorder_item_value: TFMTBCDField;
    fdpReportproduct_name: TStringField;
    fdpReportclient_name: TStringField;
    fdStart: TFDQuery;
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
