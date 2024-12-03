unit uMenuReport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModelForm, frxSmartMemo, frCoreClasses,
  frxClass;

type
  TMenuReport = class(TModelForm)
    frxReport: TfrxReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MenuReport: TMenuReport;

implementation

{$R *.dfm}

end.
