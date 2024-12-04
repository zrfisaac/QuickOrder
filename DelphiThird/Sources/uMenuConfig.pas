unit uMenuConfig;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModelForm, cxGraphics, dxUIAClasses,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinWXI, dxSkinXmas2008Blue, cxGeometry, dxFramedControl,
  cxContainer, cxEdit, dxBarBuiltInMenu, cxScrollBox, cxPC, cxLabel,
  dxPanel, Vcl.ExtCtrls, cxTextEdit, Vcl.Menus, Vcl.StdCtrls, cxButtons;

type
  TMenuConfig = class(TModelForm)
    pcMain: TcxPageControl;
    tsDatabase: TcxTabSheet;
    sbDatabase: TcxScrollBox;
    pnDatabaseServer: TdxPanel;
    pnDatabaseFooter: TdxPanel;
    lbDatabaseServer: TcxLabel;
    edDatabaseServer: TcxTextEdit;
    pnDatabaseDatabase: TdxPanel;
    lbDatabaseDatabase: TcxLabel;
    edDatabaseDatabase: TcxTextEdit;
    pnDatabaseUser: TdxPanel;
    lbDatabaseUser: TcxLabel;
    edDatabaseUser: TcxTextEdit;
    pnDatabasePassword: TdxPanel;
    lbDatabasePassword: TcxLabel;
    edDatabasePassword: TcxTextEdit;
    btDatabaseConnection: TcxButton;
    procedure btDatabaseConnectionClick(Sender: TObject);
  private
    function GetServer: string;
    procedure SetServer(AServer: string);
    function GetDatabase: string;
    procedure SetDatabase(ADatabase: string);
    function GetUser: string;
    procedure SetUser(AUser: string);
    function GetPassword: string;
    procedure SetPassword(APassword: string);
    function GetStatus: Boolean;
  public
    property Server: String read GetServer write SetServer;
    property Database: String read GetDatabase write SetDatabase;
    property User: String read GetUser write SetUser;
    property Password: String read GetPassword write SetPassword;
    property Status: Boolean read GetStatus;

    procedure Alert;
    procedure Connnect;
    procedure Disconnect;
    procedure Load;
    function Prepare: Boolean;
    procedure Save;
    procedure Screen;
  end;

var
  MenuConfig: TMenuConfig;

implementation

uses
  uDataMain,
  uMenuMain,
  uUnitConfig;

{$R *.dfm}

{ TMenuConfig }

procedure TMenuConfig.Alert;
begin

end;

procedure TMenuConfig.btDatabaseConnectionClick(Sender: TObject);
begin
  inherited;
  if (Self.Status) then
    Self.Disconnect
  else
    Self.Connnect;
end;

procedure TMenuConfig.Connnect;
begin
  if (Self.Prepare) then
  begin
    try
      with (DataMain.fdConnection) do
      begin
        Close;
        LoginPrompt := False;
        DriverName := 'MSSQL';
        Params.Clear;
        Params.Values['DriverID'] := 'MSSQL';
        Params.Values['Server'] := Self.Server;
        Params.Values['Database'] := Self.Database;
        Params.Values['User_Name'] := Self.User;
        Params.Values['Password'] := Self.Password;
        Params.Values['OSAuthent'] := 'No';
        Params.Values['Trusted_Connection'] := 'Yes';
        Open;
      end;
    except
      on E: Exception do
      begin
        MessageBox(
           Application.Handle
          ,PChar(E.Message)
          ,PChar('Error!')
          ,MB_OK + MB_ICONERROR
        );
        DataMain.fdConnection.Close;
      end;
    end;
  end;
  Self.Screen;
  MenuMain.Screen;
end;

procedure TMenuConfig.Disconnect;
begin
  DataMain.fdConnection.Close;
  Self.Screen;
  MenuMain.Screen;
end;

function TMenuConfig.GetDatabase: string;
begin
  Result := Self.edDatabaseDatabase.Text;
end;

function TMenuConfig.GetPassword: string;
begin
  Result := Self.edDatabasePassword.Text;
end;

function TMenuConfig.GetServer: string;
begin
  Result := Self.edDatabaseServer.Text;
end;

function TMenuConfig.GetStatus: Boolean;
begin
  Result := DataMain.fdConnection.Connected;
end;

function TMenuConfig.GetUser: string;
begin
  Result := Self.edDatabaseUser.Text;
end;

procedure TMenuConfig.Load;
var
  AGroup: string;
begin
  AGroup := 'Database';
  Self.Server := Config.Read(AGroup,'Server',Self.Server);
  Self.Database := Config.Read(AGroup,'Database',Self.Database);
  Self.User := Config.Read(AGroup,'User',Self.User);
  Self.Password := Config.Read(AGroup,'Password',Self.Password);
end;

function TMenuConfig.Prepare: Boolean;
var
  AResult: Boolean;
  AExist: Boolean;
begin
  AResult := False;
  AExist := False;
  try
    with (DataMain.fdQuery) do
    begin
      with (DataMain.fdConnection) do
      begin
        Close;
        LoginPrompt := False;
        DriverName := 'MSSQL';
        Params.Clear;
        Params.Values['DriverID'] := 'MSSQL';
        Params.Values['Server'] := Self.Server;
        Params.Values['Database'] := 'master';
        Params.Values['User_Name'] := Self.User;
        Params.Values['Password'] := Self.Password;
        Params.Values['OSAuthent'] := 'No';
        Params.Values['Trusted_Connection'] := 'Yes';
        Open;
      end;
      Close;
      SQL.Text := Format(RsSqlPrepareTest, [Self.Database]);
      Open;
      AExist := not(IsEmpty);
      Close;
      if not(AExist) then
      begin
        SQL.Text := Format(RsSqlPrepareDestroy, [Self.Database, Self.Database]);
        ExecSQL;
        SQL.Text := Format(RsSqlPrepareCreate, [Self.Database, Self.Database]);
        ExecSQL;
      end;
      DataMain.fdConnection.Close;
      AResult := True;
    end;
  except
    on E: Exception do
    begin
      MessageBox(
         Application.Handle
        ,PChar(E.Message)
        ,PChar('Error!')
        ,MB_OK + MB_ICONERROR
      );
    end;
  end;
  Result := AResult;
end;

procedure TMenuConfig.Save;
var
  AGroup: string;
begin
  AGroup := 'Database';
  Config.Write(AGroup,'Server',Self.edDatabaseServer.Text);
  Config.Write(AGroup,'Database',Self.edDatabaseDatabase.Text);
  Config.Write(AGroup,'User',Self.edDatabaseUser.Text);
  Config.Write(AGroup,'Password',Self.edDatabasePassword.Text);
end;

procedure TMenuConfig.Screen;
begin
  Self.edDatabaseServer.Enabled := not(Self.Status);
  Self.edDatabaseDatabase.Enabled := not(Self.Status);
  Self.edDatabaseUser.Enabled := not(Self.Status);
  Self.edDatabasePassword.Enabled := not(Self.Status);
  if (Self.Status) then
  begin
    Self.btDatabaseConnection.Caption := 'Disconnect';
  end
  else
  begin
    Self.btDatabaseConnection.Caption := 'Connnect';
  end;
end;

procedure TMenuConfig.SetDatabase(ADatabase: string);
begin
  Self.edDatabaseDatabase.Text := ADatabase;
end;

procedure TMenuConfig.SetPassword(APassword: string);
begin
  Self.edDatabasePassword.Text := APassword;
end;

procedure TMenuConfig.SetServer(AServer: string);
begin
  Self.edDatabaseServer.Text := AServer;
end;

procedure TMenuConfig.SetUser(AUser: string);
begin
  Self.edDatabaseUser.Text := AUser;
end;

end.
