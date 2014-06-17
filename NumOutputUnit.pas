unit NumOutputUnit;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  MainForm;

type
  TNumoutputform = class(TForm)
    TriangleNumBtn: TButton;
    ClearBtn: TButton;
    ExitBtn: TButton;
    Label1: TLabel;
    ListBox1: TListBox;
    procedure TriangleNumBtnClick(Sender: TObject);
    procedure ClearBtnClick(Sender: TObject);
    procedure ExitBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Numoutputform: TNumoutputform;

implementation

{$R *.dfm}
procedure TNumoutputform.TriangleNumBtnClick(Sender: TObject);
Var initNum : integer ;
Var countNum : integer ;
begin
  for initNum := 1 to 10 do
  begin
  countNum := initNum * ( initNum +1 ) div 2 ;
  listbox1.Items.Add(IntToStr(countNum));
  end;

end;

procedure TNumoutputform.ClearBtnClick(Sender: TObject);
begin
  listbox1.Items.Clear;
end;

procedure TNumoutputform.ExitBtnClick(Sender: TObject);
begin
  close;
end;


end.
