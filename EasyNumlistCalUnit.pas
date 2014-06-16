unit EasyNumlistCalUnit;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  MainForm;


type
  TEasyNumlistCalForm = class(TForm)
    NumLookMemo: TMemo;
    Edit1: TEdit;
    Label1: TLabel;
    CalculateBtn: TButton;
    ExitBtn: TButton;
    InputBtn: TButton;
    ClearBtn: TButton;

    procedure FormKeyDown(Sender: TObject; Var Key: Word;Shift: TShiftState);
    procedure InputBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CalculateBtnClick(Sender: TObject);
    procedure ClearBtnClick(Sender: TObject);
    procedure ExitBtnClick(Sender: TObject);
  private
  public
    m_NumSum : integer ;
    m_Average : integer ;
    m_Count : integer ;
  end;

var
  EasyNumlistCalForm: TEasyNumlistCalForm;

implementation

{$R *.dfm}
procedure TEasyNumlistCalForm.FormCreate(Sender: TObject);
begin
  m_NumSum  := 0  ;
  m_Average := 0 ;
  m_Count := 0 ;
end;

procedure  TEasyNumlistCalForm.FormKeyDown(Sender: TObject;
              Var Key: Word;Shift: TShiftState);
begin
  case Key of
    VK_Return :
    if (Edit1.Text <> '' )then
    begin
      Numlookmemo.Lines.Add(Edit1.Text);
      m_NumSum  := StrToInt(Edit1.Text) + m_NumSum;
      Inc(m_Count);
    end;
  end;
end;

procedure TEasyNumlistCalForm.InputBtnClick(Sender: TObject);
begin
   Numlookmemo.Lines.Add(Edit1.Text );
   m_NumSum  := StrToInt(Edit1.Text) + m_NumSum;
   Inc(m_Count);
end;

procedure TEasyNumlistCalForm.CalculateBtnClick(Sender: TObject);
begin
  if m_count > 0 then
  begin
  m_Average := m_NumSum div m_count ;
  Numlookmemo.Lines.Text := (
  '和為'
  + IntToStr(m_NumSum)
  + #13
  + '平均為'
  + IntToStr(m_Average));
  end else
  begin
  showmessage('請輸入數字計算唷');
  exit;
  end;
end;

procedure TEasyNumlistCalForm.ClearBtnClick(Sender: TObject);
begin
  m_NumSum  := 0  ;
  m_Average := 0 ;
  m_Count := 0 ;
  Numlookmemo.Lines.Text := '';
end;

procedure TEasyNumlistCalForm.ExitBtnClick(Sender: TObject);
begin
  close;
end;

end.
