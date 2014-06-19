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
    Label3: TLabel;
    Memo1: TMemo;
    Edit3: TEdit;
    SerchBtn: TButton;
    procedure CalculateBtnClick(Sender: TObject);
    procedure ClearBtnClick(Sender: TObject);
    procedure ExitBtnClick(Sender: TObject);
    procedure SerchBtnClick(Sender: TObject);
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

procedure TEasyMultTableForm.SerchBtnClick(Sender: TObject);
Var listChoose : integer ;
Var inputNum : integer ;
Var CountNum : integer ;
begin
  inputNum := StrToInt(Edit3.Text);

  for  listchoose := 0 to 8 do
  begin
  if listbox1.Selected[listchoose] then
    begin
      //0
      if inputNum = 0 then
        begin
          showmessage('�п�J0�H�~���Ʀr');
          exit;
        end;
      //1
      if inputNum = 1 then
        begin
          Memo1.lines.Text:= IntToStr(Listchoose+1) +'*'+'0' ;
        end;
      //other
      if inputNum > 1 then
      begin
        CountNum := InputNum mod (Listchoose+1);
        if CountNum = 0 then
        begin
          CountNum := inputNum div (listchoose+1);
          Memo1.Lines.Text := IntToStr(Listchoose+1) + '*' + IntToStr(CountNum);
        end else
        begin
          Memo1.Lines.Text := '���ƵL�k�Q�㰣�A�п�J�i�H�Q�㰣���Ʀr';
        end;

      end;

      end;
  end;

end;

end.
