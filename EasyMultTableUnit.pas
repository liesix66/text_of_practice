unit EasyMultTableUnit;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  MainForm;

type
  TEasyMultTableForm = class(TForm)
    ListBox1: TListBox;
    Edit1: TEdit;
    Label1: TLabel;
    CalculateBtn: TButton;
    ClearBtn: TButton;
    ExitBtn: TButton;
    Label2: TLabel;
    Edit2: TEdit;
    procedure CalculateBtnClick(Sender: TObject);
    procedure ClearBtnClick(Sender: TObject);
    procedure ExitBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EasyMultTableForm: TEasyMultTableForm;

implementation

{$R *.dfm}

procedure TEasyMultTableForm.CalculateBtnClick(Sender: TObject);
Var listBoxNum : integer ;
Var MultCount : integer ;
begin
  for listBoxNum := 0 to 8 do
  begin
    if listbox1.Selected[listBoxNum] then
    begin
      MultCount := StrToInt( Edit1.Text ) * ( listboxNum + 1 );
      Edit2.Text:= IntToStr( MultCount );
    end
  end;

end;

procedure TEasyMultTableForm.ClearBtnClick(Sender: TObject);
begin
  Edit1.Text := '0';
  Edit2.Text := '0';
end;

procedure TEasyMultTableForm.ExitBtnClick(Sender: TObject);
begin
  close;
end;

end.
