unit uModelForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TModelForm = class(TForm)
    pnBack: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ModelForm: TModelForm;

implementation

{$R *.dfm}

end.
