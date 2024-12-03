unit uMenuClient;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModelForm;

type
  TMenuClient = class(TModelForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MenuClient: TMenuClient;

implementation

{$R *.dfm}

end.
