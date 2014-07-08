unit SeqSerchUnit;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  MainForm;

type
  TSeqSerchForm = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    ListBox1: TListBox;
    Label2: TLabel;
    Label3: TLabel;
    Edit2: TEdit;
    CheckBtn: TButton;
    ClearBtn: TButton;
    ExitBtn: TButton;
    Label4: TLabel;
    Label5: TLabel;
    Edit3: TEdit;
    Label6: TLabel;
    Edit4: TEdit;
    procedure CheckBtnClick(Sender: TObject);
    procedure ClearBtnClick(Sender: TObject);
    procedure ExitBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SeqSerchForm: TSeqSerchForm;

implementation

{$R *.dfm}

procedure TSeqSerchForm.CheckBtnClick(Sender: TObject);
const MaxCount = 88 ;
const Maxlist = 0 ;
Var FibNum, InputNum, ListCount : integer ;
Var FibNum1, FibNum2, FibNumRam : Int64 ;
begin
  InputNum := StrToInt(Edit1.Text);
  FibNum1 := 0 ;
  FibNum2 := 1 ;

  for ListCount := 0 to MaxList do
  begin
    if not listbox1.Selected[listcount] then
    begin
      ShowMessage('�п�ܷQ�n���D�o�ƦC');
      Exit;
    end;
  end;

  if listbox1.Selected[0] then
  begin
    //�T�{�ƭȤ��|�L�j
    if InputNum > MaxCount then
    begin
      ShowMessage('�z��J���ƭȶW�L�ثe�i�䴩���W����');
      Exit;
    end;

    //����������0���M��1�������G
    if InputNum = 0 then
    begin
      Edit2.Text := '0';
      Exit;
    end;

    if InputNum = 1 then
    begin
      Edit2.Text := '1';
      Exit;
    end;


    if InputNum > 1 then
    begin
      for FibNum := 0 to InputNum do
      begin
        FibNumRam := FibNum1 + FibNum2 ;
        FibNum1 := FibNum2 ;
        FibNum2 := FibNumRam ;

        Edit2.Text := IntToStr(FibNumRam);
      end;

      FibNum1 := 0 ;
      FibNum2 := 1 ;

      for FibNum := 0 to InputNum + 1 do
      begin
        FibNumRam := FibNum1 + FibNum2 ;
        FibNum1 := FibNum2 ;
        FibNum2 := FibNumRam ;

        Edit3.Text := IntToStr(FibNumRam);
      end;

      Edit4.Text := FloatToStr(StrToFloat(Edit3.Text) / StrToFloat(Edit2.Text));

    end;
    //�O���p�⧹��
  end;

end;

procedure TSeqSerchForm.ClearBtnClick(Sender: TObject);
begin
  edit1.Text := '0' ;
  edit2.Text := '0' ;
end;

procedure TSeqSerchForm.ExitBtnClick(Sender: TObject);
begin
  close;
end;

end.
