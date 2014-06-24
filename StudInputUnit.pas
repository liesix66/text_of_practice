unit StudInputUnit;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  MainForm, Vcl.Samples.Spin;
type
  TstudString = record
    Name : String ;
    Form : String ;
    entryear : String;
  end;
type
  TstrCount = array [1..8] of TstudString ;
  TStudInputForm = class(TForm)
    Memo1: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    SpinEdit1: TSpinEdit;
    Edit2: TEdit;
    ChkBtn: TButton;
    ClearBtn: TButton;
    LoadBtn: TButton;
    SaveBtn: TButton;
    OpenDialog1: TOpenDialog;
    Memo2: TMemo;
    procedure ChkBtnClick(Sender: TObject);
    procedure ClearBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LoadBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
  private
    { Private declarations }
    strCount : integer ;
  public
    { Public declarations }
  end;

var
  StudInputForm: TStudInputForm;
  strcounter : Tstrcount ;

implementation

{$R *.dfm}

procedure TStudInputForm.FormCreate(Sender: TObject);
begin
  strCount := 0 ;
end;

procedure TStudInputForm.ChkBtnClick(Sender: TObject);
begin
  if edit1.Text = '' then
  begin
    showmessage('請輸入名字');
    exit;
  end;

  if edit2.Text = '' then
  begin
    showmessage('請輸入來自於哪裡');
    exit;
  end;

  if strCount > 8 then
  begin
    showmessage('存儲資料超過上限');
    exit;
  end;

  strcounter[strcount].Name := Edit1.Text ;
  strcounter[strcount].Form := Edit2.Text ;
  strcounter[strcount].entryear := IntToStr(Spinedit1.Value);

  memo1.Lines.Add('學生姓名為：' + strcounter[strcount].Name );
  memo1.Lines.Add('學生來自於：' + strcounter[strcount].Form );
  memo1.Lines.Add('進入年度為：' + strcounter[strcount].Form + '年' );

  Inc(StrCount);

end;

procedure TStudInputForm.LoadBtnClick(Sender: TObject);
Var fileName : string ;
Var openDialog : TOpenDialog;
Var chkdata : integer ;
begin
  openDialog := TopenDialog.Create(self);
  openDialog.Options := [ofFileMustExist];
  openDialog.Filter := 'Text files|*.txt';

  If Opendialog1.Execute Then
  begin
    fileName := openDialog.FileName;
  end;
  Memo2.Lines.LoadFromFile(Opendialog1.FileName);

  chkdata := pos('學生姓名',Memo2.Lines.Text);

  if chkdata <> 0 then
  begin
    Memo1.Lines.Text := Memo2.Lines.Text ;
  end else
  begin
    showmessage('沒有相符合的資料');
    Memo1.Lines.Text := '' ;
    Exit ;
  end;

end;

procedure TStudInputForm.SaveBtnClick(Sender: TObject);
Var SaveFind : Tmemorystream;
Var hadString : integer ;
begin
  hadString  := pos('學生姓名',Memo1.Lines.Text);

  if hadString <> 0 then

  begin
  SaveFind := TMemoryStream.Create;
  Memo1.Lines.SaveToStream(SaveFind);
  SaveFind.SaveToFile('C:\StudentData.txt');
  SaveFind.Free;
  Showmessage('已將檔案存至C:\StudentData.txt');
  end else
  begin
    showmessage('沒有任何資料，不進行儲存');
    exit;
  end;

end;

procedure TStudInputForm.ClearBtnClick(Sender: TObject);
begin
  edit1.Text := ' ' ;
  edit2.Text := ' ' ;
  memo1.Lines.Text := ' ' ;
  strCount := 0 ;
end;

end.
