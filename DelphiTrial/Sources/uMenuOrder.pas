unit uMenuOrder;

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
  dxScrollbarAnnotations, Data.DB, cxDBData, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxDBEdit, cxSpinEdit, Vcl.Menus, Vcl.StdCtrls,
  cxButtons;

type
  TMenuOrder = class(TModelForm)
    pnSearch: TdxPanel;
    dbgGridSearch: TcxGrid;
    dbgGridSearchView: TcxGridDBTableView;
    dbgGridSearchfdtItemProductName: TcxGridDBColumn;
    dbgGridSearchLevel: TcxGridLevel;
    pnSearchText: TdxPanel;
    lbSearchText: TcxLabel;
    dxPanel1: TdxPanel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    pnFooter: TdxPanel;
    btSave: TcxButton;
    edClient: TcxLookupComboBox;
    edProduct: TcxLookupComboBox;
    edAmount: TcxSpinEdit;
    edValue: TcxTextEdit;
    btAdd: TcxButton;
    dbgGridSearchfdtItemProductQuantity: TcxGridDBColumn;
    dbgGridSearchfdtItemProductPrice: TcxGridDBColumn;
    dbgGridSearchfdtItemProductValue: TcxGridDBColumn;
    procedure edAmountPropertiesChange(Sender: TObject);
    procedure btAddClick(Sender: TObject);
    procedure btSaveClick(Sender: TObject);
  private
  public
    procedure Cancel;
    function CheckItem: Boolean;
    function CheckOrder: Boolean;
    procedure Save;
    procedure Screen;
    procedure Start; override;
  end;

var
  MenuOrder: TMenuOrder;

implementation

uses
  uDataMain;

{$R *.dfm}

{ TMenuOrder }

procedure TMenuOrder.btAddClick(Sender: TObject);
begin
  inherited;
  if (Self.CheckItem) then
  begin
    with (DataMain) do
    begin
      fdtitem.Insert;
      fdtitem.FieldByName('fdtItemProductId').AsInteger := Self.edProduct.EditValue[0];
      fdtitem.FieldByName('fdtItemProductName').AsString := Self.edProduct.Text;
      fdtitem.FieldByName('fdtItemProductQuantity').AsInteger := Self.edAmount.Value;
      fdtitem.FieldByName('fdtItemProductPrice').AsFloat := Self.edProduct.EditValue[1];
      fdtitem.FieldByName('fdtItemProductValue').AsFloat := Self.edProduct.EditValue[1] * Self.edAmount.Value;
      fdtitem.Post;
    end;
  end;
end;

procedure TMenuOrder.btSaveClick(Sender: TObject);
begin
  inherited;
  Self.Save;
end;

procedure TMenuOrder.Cancel;
begin

end;

function TMenuOrder.CheckItem: Boolean;
var
  AMessage: TStrings;
begin
  AMessage := TStringList.Create;
  Result := False;
  if (Self.edClient.Text = '') then
    AMessage.Add('The Client is required!');
  if (Self.edProduct.Text = '') then
    AMessage.Add('The Product is required!');
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

function TMenuOrder.CheckOrder: Boolean;
var
  AMessage: TStrings;
begin
  AMessage := TStringList.Create;
  Result := False;
  if (DataMain.fdtItem.RecordCount < 1) then
    AMessage.Add('Ensure that the grid contains at least one item before proceeding!');
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

procedure TMenuOrder.edAmountPropertiesChange(Sender: TObject);
begin
  inherited;
  if (Self.edAmount.Value > 0) then
    Self.edValue.Text := '$ ' + FormatFloat('##0.00', Self.edProduct.EditValue[1] * Self.edAmount.Value)
  else if (Self.edAmount.Value < 0) then
    Self.edAmount.Value := 0;
end;

procedure TMenuOrder.Save;
var
  AOrderId: Integer;
begin
  inherited;
  if (Self.CheckOrder) then
  begin
    AOrderId := -1;
    with (DataMain) do
    begin
      fdpOrderId.Close;
      fdpOrderId.ParamByName('@P_CLIENT').AsInteger := Self.edClient.EditValue;
      fdpOrderId.Open;
      AOrderId := fdpOrderId.FieldByName('order_id').AsInteger;
      fdpOrderId.Close;
      fdtItem.First;
      while not(fdtItem.Eof) do
      begin
        fdConnection.StartTransaction;
        fdtItemAdd.ParamByName('cl_order').AsInteger := AOrderId;
        fdtItemAdd.ParamByName('cl_product').AsInteger := fdtitem.FieldByName('fdtItemProductId').AsInteger;
        fdtItemAdd.ParamByName('cl_quantity').AsInteger := fdtitem.FieldByName('fdtItemProductQuantity').AsInteger;
        fdtItemAdd.ParamByName('cl_price').AsFloat := fdtitem.FieldByName('fdtItemProductPrice').AsFloat;
        fdtItemAdd.ExecSQL;
        fdConnection.Commit;
        fdtItem.Next;
      end;
      fdtItem.Close;
      fdtItem.Open;
    end;
  end;
end;

procedure TMenuOrder.Screen;
begin

end;

procedure TMenuOrder.Start;
begin
  inherited;
  with (DataMain) do
  begin
    fdtItem.Close;
    fdtItem.Open;
  end;
  Self.Screen;
end;

end.
