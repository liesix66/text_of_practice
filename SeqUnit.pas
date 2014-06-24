unit SeqUnit;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  MainForm;

type
  TSeqForm = class(TForm)
    Memo1: TMemo;
    Label1: TLabel;
    Edit1: TEdit;
    ChkBtn: TButton;
    ClearBtn: TButton;
    BubbleSortBtn: TButton;
    ExitBtn: TButton;
    ReveBtn: TButton;
    BackBtn: TButton;
    CulTimeBtn: TButton;

    procedure ChkBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BubbleSortBtnClick(Sender: TObject);
    procedure ExitBtnClick(Sender: TObject);
    procedure CulTimeBtnClick(Sender: TObject);
    procedure ClearBtnClick(Sender: TObject);
    procedure ReveBtnClick(Sender: TObject);
  private
    memoList : array [1..8] of Integer  ;
    memoCount : integer ;
    hadReve : boolean ;
    maxstring : integer ;
  public
    { Public declarations }
  end;

var
  SeqForm: TSeqForm;

implementation

{$R *.dfm}
procedure TSeqForm.FormCreate(Sender: TObject);
begin
  memoCount := 0 ;
  maxstring := 0 ;
  hadReve := False ;
end;

procedure TSeqForm.ChkBtnClick(Sender: TObject);
Var memo_string : integer ;
Var poserach : integer ;
begin

  for memo_string := 0 to maxstring do
  begin
    poserach := pos(edit1.Text,memo1.Text) ;

    if poserach <> 0 then
    begin
      showmessage('請不要輸入重複的值！' );
      exit ;
    end;
  end;

  Inc(maxstRing);
  Inc(memoCount);

  if memoCount > 8 then
  begin
    showmessage('現在輸入值的已經超過8項了！' );
    exit ;
  end else
  begin
    memo1.Lines.Add(Edit1.Text);
    memolist[memoCount] := StrToInt(Edit1.Text) ;
  end;
end;

procedure TSeqForm.CulTimeBtnClick(Sender: TObject);
Var bforCount, aterCount : integer ;
Var Num : integer ;
Var CulTime : array[1..8] of integer ;
begin
  for bforCount := 1 to 8 do
  begin
    Num := 1 ;
    for aterCount := 1 to 8 do
    begin
      if bforCount > aterCount then
      begin
        if memolist[bforCount] > memolist[aterCount] then
        begin
          //如果前項大於後項，名次就加1
          Inc(Num);
        end;
      end; //不檢查自己
    end;
    //記錄該項的名次
    Cultime[Num] := memolist[bforCount] ;
  end;

  memo1.Lines.Text:= '';

  //開始添加值
  for Num := 1 to 8 do
  begin
    memo1.Lines.ADD(
    IntToStr(Cultime[Num])
    )
  end;

  ReveBtn.Visible := True;
end;

procedure TSeqForm.BubbleSortBtnClick(Sender: TObject);
Var Count : integer ;
Var bforCount, aterCount : integer ;
Var aterVaule, bforVaule : integer ;
begin
  for bforCount := 1 to 8 do
  begin
    for aterCount := 1 to 8 do
    begin
      //不跟自己比較
      if bforCount <> aterCount then
      begin
        bforVaule := memolist[bforCount] ;
        aterVaule := memolist[aterCount] ;
        // 如果後項的數字比較小，前項的數字變成後項
        if memolist[bforCount] < memolist[aterCount] then
        begin
          memolist[bforCount] := aterVaule ;
          memolist[aterCount] := bforVaule ;
        end; //如果後項比較大，不管他
      end;
    end; //N:2~8檢察完畢
  end; //檢察完全部的N

  //將MEMO初始化
  memo1.Lines.Text:= '';

  //開始添加值
  for Count := 1 to 8 do
  begin
    memo1.Lines.ADD(
    IntToStr(memolist[Count])
    )
  end;

  ReveBtn.Visible := True;

end;

procedure TSeqForm.ReveBtnClick(Sender: TObject);
Var listlength, ReveCount : integer ;
Var ReveList : array [1..8] of integer ;
begin
  if hadReve = False then
  begin
    listLength := length(memolist);

    for ReveCount := 1 to length(memoList) do
    begin
      ReveList[ReveCount] := memolist[listlength] ;
      Dec(listLength);
    end;

    memo1.Lines.Text:= '';

    for ReveCount := 1 to length(reveList) do
    begin
      memo1.Lines.Add(
      IntToStr(reveList[ReveCount])
      )
    end;

    hadReve := True ;

  end else
  begin
    for ReveCount := 1 to length(reveList) do
    begin
      memo1.Lines.ADD(
      IntToStr(memolist[ReveCount])
      )
    end;

    hadReve := False ;

  end;

end;

procedure TSeqForm.ExitBtnClick(Sender: TObject);
begin
 edit1.Text := '0';
 memo1.Lines.Text:= '';
 memoCount := 0 ;
 ReveBtn.Visible := False;
 hadReve := False ;
 close;
end;

procedure TSeqForm.ClearBtnClick(Sender: TObject);
begin
 edit1.Text := '0';
 memo1.Lines.Text:= '';
 memoCount := 0 ;
 ReveBtn.Visible := False;
 hadReve := False ;
end;

end.
