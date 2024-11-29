unit TestUnitHelp;

interface

uses
  TestFramework,
  uUnitHelp,
  System.Classes;

type
  TestTUnitHelp = class(TTestCase)
  strict private
    FUnitHelp: TUnitHelp;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestStringToList;
    procedure TestListToString;
  end;

implementation

procedure TestTUnitHelp.SetUp;
begin
  FUnitHelp := TUnitHelp.Create;
end;

procedure TestTUnitHelp.TearDown;
begin
  FUnitHelp.Free;
  FUnitHelp := nil;
end;

procedure TestTUnitHelp.TestStringToList;
var
  ReturnValue: TStrings;
  AString: string;
begin
  // TODO: Setup method call parameters
  ReturnValue := FUnitHelp.StringToList(AString);
  // TODO: Validate method results
end;

procedure TestTUnitHelp.TestListToString;
var
  ReturnValue: string;
  AList: TStrings;
begin
  // TODO: Setup method call parameters
  ReturnValue := FUnitHelp.ListToString(AList);
  // TODO: Validate method results
end;

initialization
  // Register any test cases with the test runner
  RegisterTest(TestTUnitHelp.Suite);
end.

