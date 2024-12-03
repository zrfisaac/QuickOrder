unit uDataMain;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Phys.MSSQLDef, FireDAC.Stan.Intf,
  FireDAC.Phys, FireDAC.Phys.ODBCBase, FireDAC.Phys.MSSQL, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client;

type
  TDataMain = class(TDataModule)
    fdLinkMssql: TFDPhysMSSQLDriverLink;
    fdConnection: TFDConnection;
    fdTransaction: TFDTransaction;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataMain: TDataMain;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
