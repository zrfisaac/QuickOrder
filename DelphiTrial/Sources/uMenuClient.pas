unit uMenuClient;

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
  cxContainer, cxEdit, cxLabel, Vcl.ExtCtrls, dxPanel, dxBarBuiltInMenu,
  cxScrollBox, cxPC, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData,
  cxTextEdit, cxMaskEdit, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxInplaceContainer, cxVGrid, cxDBVGrid, cxDBEdit, Vcl.Menus, Vcl.StdCtrls,
  cxButtons{zrfisaac};

type
  TMenuClient = class(TModelForm)
    pcMain: TcxPageControl;
    tsSearch: TcxTabSheet;
    tsRecord: TcxTabSheet;
    sbRecord: TcxScrollBox;
    pnDatabaseServer: TdxPanel;
    lbDatabaseServer: TcxLabel;
    dxPanel1: TdxPanel;
    cxLabel1: TcxLabel;
    dxPanel3: TdxPanel;
    cxLabel2: TcxLabel;
    dxPanel4: TdxPanel;
    cxLabel3: TcxLabel;
    pnSearch: TdxPanel;
    dbgGridSearch: TcxGrid;
    dbgGridSearchView: TcxGridDBTableView;
    dbgGridLevel_cl_name: TcxGridDBColumn;
    dbgGridSearchLevel: TcxGridLevel;
    pnSearchText: TdxPanel;
    lbSearchText: TcxLabel;
    edSearchText: TcxTextEdit;
    dxPanel5: TdxPanel;
    cxLabel4: TcxLabel;
    dbId: TcxDBTextEdit;
    dbName: TcxDBTextEdit;
    dbAddress: TcxDBTextEdit;
    dbPhone: TcxDBMaskEdit;
    dbEmail: TcxDBMaskEdit;
    pnFooter: TdxPanel;
    btNew: TcxButton;
    btEdit: TcxButton;
    btDelete: TcxButton;
    btSave: TcxButton;
    btCancel: TcxButton;
    procedure edSearchTextKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgGridSearchViewDblClick(Sender: TObject);
    procedure btNewClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btSaveClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
  private
    function GetIsEdit: Boolean;
    function GetIsEmpty: Boolean;
    function GetIsNew: Boolean;
    function GetIsSearch: Boolean;
  public
    procedure Cancel;
    function Check: Boolean;
    procedure Delete;
    procedure Edit;
    property IsEdit: Boolean read GetIsEdit;
    property IsEmpty: Boolean read GetIsEdit;
    property IsNew: Boolean read GetIsNew;
    property IsSearch: Boolean read GetIsSearch;
    procedure New;
    procedure Save;
    procedure Screen;
    procedure Start; override;
  end;

var
  MenuClient: TMenuClient;

implementation

uses
  uDataMain;

{$R *.dfm}

{ TMenuClient }

procedure TMenuClient.btCancelClick(Sender: TObject);
begin
  inherited;
  Self.Cancel;
end;

procedure TMenuClient.btDeleteClick(Sender: TObject);
begin
  inherited;
  Self.Delete;
end;

procedure TMenuClient.btEditClick(Sender: TObject);
begin
  inherited;
  Self.Edit;
end;

procedure TMenuClient.btNewClick(Sender: TObject);
begin
  inherited;
  Self.New;
end;

procedure TMenuClient.btSaveClick(Sender: TObject);
begin
  inherited;
  if (Self.Check) then
    Self.Save;
end;

procedure TMenuClient.Cancel;
begin
  if not(Self.IsSearch) then
  begin
    DataMain.fdtClient.Cancel;
    Self.Screen;
  end;
end;

function TMenuClient.Check: Boolean;
var
  AMessage: TStrings;
begin
  AMessage := TStringList.Create;
  Result := False;
  if (Self.dbName.Text = '') then
    AMessage.Add('The Name field is required!');
  if (AMessage.Text = '') then
    Result := True
  else
  begin
    Application.MessageBox(
      PChar(AMessage.Text),
      PChar('Warning!'),
      MB_OK + MB_ICONWARNING
    );
  end;
  AMessage.Free;
end;

procedure TMenuClient.dbgGridSearchViewDblClick(Sender: TObject);
begin
  inherited;
  Self.Edit;
end;

procedure TMenuClient.Delete;
begin
  with (DataMain) do
  begin
    if (Self.IsSearch)
    and not(Self.IsEmpty) then
    begin
      try
        fdConnection.StartTransaction;
        fdtClientDelete.ParamByName('cl_client').AsInteger := fdtClient.FieldByName('cl_client').AsInteger;
        fdtClientDelete.ExecSQL;
        fdConnection.Commit;
        fdtClient.Close;
        fdtClient.Open;
      except
        on e: Exception do
        begin

        end;
      end;
    end;
  end;
end;

procedure TMenuClient.Edit;
begin
  if (Self.IsSearch) then
  begin
    DataMain.fdtClient.Edit;
    Self.Screen;
  end;
end;

procedure TMenuClient.edSearchTextKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  DataMain.fdtClient.Filtered := False;
  DataMain.fdtClient.Filter := 'UPPER(cl_name) like ' + QuotedStr('%' + UpperCase(Self.edSearchText.Text) + '%');
  DataMain.fdtClient.Filtered := True;
end;

procedure TMenuClient.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Self.pnSearch.Parent := TWinControl(Self.pnBack.Owner);
  Self.sbRecord.Parent := TWinControl(Self.sbRecord.Owner);
end;

function TMenuClient.GetIsEdit: Boolean;
begin
  Result := (DataMain.fdtClient.State in [dsEdit]);
end;

function TMenuClient.GetIsEmpty: Boolean;
begin
  Result := DataMain.fdtClient.IsEmpty;
end;

function TMenuClient.GetIsNew: Boolean;
begin
  Result := (DataMain.fdtClient.State in [dsInsert]);
end;

function TMenuClient.GetIsSearch: Boolean;
begin
  Result := not(DataMain.fdtClient.State in [dsInsert, dsEdit]);
end;

procedure TMenuClient.New;
begin
  if (Self.IsSearch) then
  begin
    DataMain.fdtClient.Insert;
    Self.Screen;
  end;
end;

procedure TMenuClient.Save;
begin
  with (DataMain) do
  begin
    if not(Self.IsSearch) then
    begin
      fdTransaction.StartTransaction;
      try
        fdtClient.Post;
        fdtClient.ApplyUpdates(0);
        fdTransaction.Commit;
        Self.Screen;
      except
        fdTransaction.Rollback;
        raise;
      end;
    end;
  end;
end;

procedure TMenuClient.Screen;
begin
  Self.pcMain.Parent := nil;
  Self.btNew.Enabled := False;
  Self.btEdit.Enabled := False;
  Self.btDelete.Enabled := False;
  Self.btSave.Enabled := False;
  Self.btCancel.Enabled := False;
  Self.pnSearch.Parent := TWinControl(Self.pnBack.Owner);
  Self.sbRecord.Parent := TWinControl(Self.sbRecord.Owner);
  if (Self.IsSearch) then
  begin
    Self.pnSearch.Parent := Self.pnBack;
    Self.btNew.Enabled := True;
    Self.btEdit.Enabled := not(Self.IsEmpty);
    Self.btDelete.Enabled := not(Self.IsEmpty);
  end
  else if (Self.IsNew) then
  begin
    Self.btSave.Enabled := True;
    Self.btCancel.Enabled := True;
  end
  else if (Self.IsEdit) then
  begin
    Self.sbRecord.Parent := Self.pnBack;
    Self.btSave.Enabled := True;
    Self.btCancel.Enabled := True;
  end;
end;

procedure TMenuClient.Start;
begin
  inherited;
  Self.Screen;
end;

end.
