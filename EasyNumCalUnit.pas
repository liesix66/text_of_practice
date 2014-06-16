unit EasyNumCalUnit;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  MainForm;

type
  TEasyNumCalForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    CalculateBtn: TButton;
    Edit3: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    ExitBtn: TButton;
    ClearBtn: TButton;
    limitNumBtn: TButton;
    Label7: TLabel;
    procedure CalculateBtnClick(Sender: TObject);
    procedure ExitBtnClick(Sender: TObject);
    procedure ClearBtnClick(Sender: TObject);
    procedure limitNumBtnClick(Sender: TObject);
  private
    m_limitNum : boolean ;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EasyNumCalForm: TEasyNumCalForm;

implementation

{$R *.dfm}

procedure TEasyNumCalForm.CalculateBtnClick(Sender: TObject);
Var InputNum1, InputNum2, ResultNum1, ResultNum2, ResultNum3 : Integer;
begin
  //maybe here cant key
  InputNum1 := 0 ;
  InputNum2 := 0 ;

   //check have number
  if edit1.Text = '' then
  begin
    showmessage ('請輸入數字') ;
    exit ;
  end
  else
  if edit2.Text = '' then
  begin
    showmessage ('請輸入數字') ;
    exit ;
  end;

  if edit1.Text <> '' then
  if edit2.Text <> '' then
  begin
    InputNum1 := StrToInt(edit1.Text) ;
    InputNum2 := StrToInt(edit2.Text) ;
  end;

  if m_LimitNum = true then
  begin
    if ( InputNum1 < 100 )  or ( InputNum1 > 1000 ) then
    begin
      showmessage ('請輸入三位正整數');
      exit ;
    end;
    if ( InputNum2 < 100 )  or ( InputNum2 > 1000 ) then
    begin
      showmessage ('請輸入三位正整數');
      exit ;
    end;
  end;

  if ( InputNum2 <> 0 ) then
  begin
    ResultNum1 := InputNum1 + InputNum2 ;
    ResultNum2 := InputNum1 * InputNum2 ;
    ResultNum3 := InputNum1 div InputNum2 ;

    Edit3.Text := IntToStr(ResultNum1) ;
    Edit4.Text := IntToStr(ResultNum2) ;
    Edit5.Text := IntToStr(ResultNum3) ;
  end else
  begin
    ResultNum1 := InputNum1 + InputNum2 ;
    ResultNum2 := InputNum1 * InputNum2 ;

    Edit3.Text := IntToStr(ResultNum1) ;
    Edit4.Text := IntToStr(ResultNum2) ;
    Edit5.Text := '除數不能為0'
  end;

end;

procedure TEasyNumCalForm.ClearBtnClick(Sender: TObject);
begin
    Edit1.Text := '' ;
    Edit2.Text := '' ;
    Edit3.Text := '' ;
    Edit4.Text := '' ;
    Edit5.Text := '' ;

    m_limitNum := False;
    Label7.Caption := '';
end;

procedure TEasyNumCalForm.ExitBtnClick(Sender: TObject);
begin
  close;
end;

procedure TEasyNumCalForm.limitNumBtnClick(Sender: TObject);
begin
  m_limitNum := True;
  Label7.Caption := '現在數字只能輸入3位正整數';
end;

end.
