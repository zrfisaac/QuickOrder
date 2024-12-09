unit uMenuProduct;

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
  cxContainer, cxEdit, cxLabel, Vcl.ExtCtrls, dxPanel, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxTextEdit, dxBarBuiltInMenu, cxMaskEdit, cxDBEdit, cxScrollBox, cxPC,
  Vcl.Menus, Vcl.StdCtrls, cxButtons;

type
  TMenuProduct = class(TModelForm)
    pcMain: TcxPageControl;
    tsSearch: TcxTabSheet;
    pnSearch: TdxPanel;
    dbgGridSearch: TcxGrid;
    dbgGridSearchView: TcxGridDBTableView;
    dbgGridLevel_cl_name: TcxGridDBColumn;
    dbgGridSearchLevel: TcxGridLevel;
    pnSearchText: TdxPanel;
    lbSearchText: TcxLabel;
    edSearchText: TcxTextEdit;
    tsRecord: TcxTabSheet;
    sbRecord: TcxScrollBox;
    pnName: TdxPanel;
    lbName: TcxLabel;
    dbName: TcxDBTextEdit;
    pnId: TdxPanel;
    lbId: TcxLabel;
    dbId: TcxDBTextEdit;
    pnAddress: TdxPanel;
    lbDescription: TcxLabel;
    dbDescription: TcxDBTextEdit;
    pnPrice: TdxPanel;
    lbPrice: TcxLabel;
    dbPrice: TcxDBMaskEdit;
    pnFooter: TdxPanel;
    btNew: TcxButton;
    btEdit: TcxButton;
    btDelete: TcxButton;
    btSave: TcxButton;
    btCancel: TcxButton;
    procedure btNewClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btSaveClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure dbgGridSearchViewDblClick(Sender: TObject);
    procedure edSearchTextKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
  MenuProduct: TMenuProduct;

implementation

uses
  uDataMain;

{$R *.dfm}

{ TMenuProduct }

procedure TMenuProduct.btCancelClick(Sender: TObject);
begin
  inherited;
  Self.Cancel;
end;

procedure TMenuProduct.btDeleteClick(Sender: TObject);
begin
  inherited;
    Self.Delete;
end;

procedure TMenuProduct.btEditClick(Sender: TObject);
begin
  inherited;
    Self.Edit;
end;

procedure TMenuProduct.btNewClick(Sender: TObject);
begin
  inherited;
  Self.New;
end;

procedure TMenuProduct.btSaveClick(Sender: TObject);
begin
  inherited;
  Self.Save;
end;

procedure TMenuProduct.Cancel;
begin
  if not(Self.IsSearch) then
  begin
    DataMain.fdtProduct.Cancel;
    Self.Screen;
  end;
end;

function TMenuProduct.Check: Boolean;
var
  AMessage: TStrings;
begin
  AMessage := TStringList.Create;
  Result := False;
  if (Self.dbName.Text = '') then
    AMessage.Add('The Name field is required!');
  if (Self.dbPrice.Text = '') then
    AMessage.Add('The Price field is required!');
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

procedure TMenuProduct.dbgGridSearchViewDblClick(Sender: TObject);
begin
  inherited;
  Self.Edit;
end;

procedure TMenuProduct.Delete;
begin
  with (DataMain) do
  begin
    if (Self.IsSearch)
    and not(Self.IsEmpty) then
    begin
      try
        fdConnection.StartTransaction;
        fdtProductDelete.ParamByName('cl_product').AsInteger := fdtProduct.FieldByName('cl_product').AsInteger;
        fdtProductDelete.ExecSQL;
        fdConnection.Commit;
        fdtProduct.Close;
        fdtProduct.Open;
      except
        on e: Exception do
        begin
        end;
      end;
    end;
  end;
end;

procedure TMenuProduct.Edit;
begin
  if (Self.IsSearch) then
  begin
    DataMain.fdtProduct.Edit;
    Self.Screen;
  end;
end;

procedure TMenuProduct.edSearchTextKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  DataMain.fdtProduct.Filtered := False;
  DataMain.fdtProduct.Filter := 'UPPER(cl_name) like ' + QuotedStr('%' + UpperCase(Self.edSearchText.Text) + '%');
  DataMain.fdtProduct.Filtered := True;
end;

procedure TMenuProduct.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Self.pnSearch.Parent := TWinControl(Self.pnBack.Owner);
  Self.sbRecord.Parent := TWinControl(Self.sbRecord.Owner);
end;

function TMenuProduct.GetIsEdit: Boolean;
begin
  Result := (DataMain.fdtProduct.State in [dsEdit]);
end;

function TMenuProduct.GetIsEmpty: Boolean;
begin
  Result := DataMain.fdtProduct.IsEmpty;
end;

function TMenuProduct.GetIsNew: Boolean;
begin
  Result := (DataMain.fdtProduct.State in [dsInsert]);
end;

function TMenuProduct.GetIsSearch: Boolean;
begin
  Result := not(DataMain.fdtProduct.State in [dsInsert, dsEdit]);
end;

procedure TMenuProduct.New;
begin
  if (Self.IsSearch) then
  begin
    DataMain.fdtProduct.Insert;
    Self.Screen;
  end;
end;

procedure TMenuProduct.Save;
begin
  with (DataMain) do
  begin
    if not(Self.IsSearch) then
    begin
      fdTransaction.StartTransaction;
      try
        fdtProduct.Post;
        fdtProduct.ApplyUpdates(0);
        fdTransaction.Commit;
        Self.Screen;
      except
        fdTransaction.Rollback;
        raise;
      end;
    end;
  end;
end;

procedure TMenuProduct.Screen;
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
    Self.sbRecord.Parent := Self.pnBack;
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

procedure TMenuProduct.Start;
begin
  inherited;
  Self.Screen;
end;

end.
