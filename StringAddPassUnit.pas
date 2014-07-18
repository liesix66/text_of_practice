unit StringAddPassUnit;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  MainForm, Vcl.Samples.Spin;

type
  TStringAddPassForm = class(TForm)
    Memo1: TMemo;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    BtnSave: TButton;
    BtnLoad: TButton;
    BtnChk: TButton;
    BtnClear: TButton;
    OpenDialog1: TOpenDialog;
    Memo2: TMemo;
    BtnExit: TButton;
    procedure BtnChkClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnLoadClick(Sender: TObject);
    procedure BtnClearClick(Sender: TObject);
    procedure BtnExitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StringAddPassForm: TStringAddPassForm;

implementation

{$R *.dfm}

procedure TStringAddPassForm.BtnChkClick(Sender: TObject);
Var stringaddPass : String ;
begin
  stringaddPass := Edit2.Text ;
  memo1.Lines.Add(stringaddpass) ;
end;

procedure TStringAddPassForm.BtnClearClick(Sender: TObject);
begin
  memo1.Lines.Text := '';
  edit1.Text := '';
  edit2.Text := '';
end;

procedure TStringAddPassForm.BtnExitClick(Sender: TObject);
begin
  close ;
end;

procedure TStringAddPassForm.BtnLoadClick(Sender: TObject);
Var fileName, password, memo2string : string ;
Var openDialog : TOpenDialog;
Var chkdata , passwordlength : integer ;
begin
  password := edit1.Text;

  openDialog := TopenDialog.Create(self);
  openDialog.Options := [ofFileMustExist];
  openDialog.Filter := 'Text files|*.txt';

  If Opendialog1.Execute Then
  begin
    fileName := openDialog.FileName;
  end else
  begin
    exit ;
  end;

  Memo2.Lines.LoadFromFile(Opendialog1.FileName);

  memo2string := memo2.Lines.Text ;

  if edit1.Text = '' then
  begin
    showmessage('請輸入密碼');
    exit ;
  end else
  begin
    chkdata := pos(password,memo2string);
    if chkdata <> 0 then
    begin
      chkdata := pos('1six'+password,memo2string);
      if chkdata <> 0 then
      begin
        passwordlength := length(password) ;
        Repeat
          chkdata := pos('1six'+password,memo2string);
          delete(memo2string,chkdata,passwordlength + 4);
        Until chkdata = 0;

        memo1.Lines.Clear;
        memo1.Lines.Add(memo2string) ;
      end;


    end else
    begin
      memo2.Lines.Clear;
      showmessage('密碼錯誤了唷，請重新輸入正確密碼');
      edit1.text := '' ;
      exit ;
    end;
  end;

end;

procedure TStringAddPassForm.BtnSaveClick(Sender: TObject);
Var SaveFind : Tmemorystream;
Var passwordString , stringofmemo : String ;
begin
  passwordString := Edit1.Text ;
  stringofmemo := memo1.Lines.Text ;

  if passwordString = '' then
  begin
    showmessage('密碼不得為空');
    exit ;
  end;

  memo1.Lines.Clear;
  memo1.Lines.Add('1six' + passwordstring + stringofmemo);


  SaveFind := TMemoryStream.Create;
  Memo1.Lines.SaveToStream(SaveFind);
  SaveFind.SaveToFile('C:\StringAddpassword.txt');
  SaveFind.Free;

  memo1.Lines.Clear;
  memo1.Lines.Add(stringofmemo);
end;

end.
