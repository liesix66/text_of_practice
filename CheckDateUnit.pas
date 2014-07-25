unit CheckDateUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TChkDateForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
    Memo1: TMemo;
    Edit4: TEdit;
    Label4: TLabel;
    Btn2Chk: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Btn2ChkClick(Sender: TObject);
  private
    { Private declarations }
    FUNCTION ChkYear( _year : integer ) : boolean ;
    function chkmonth( _month : integer ) : boolean ;
    function chkdate( _month,_date :integer ) : boolean ;
    function chkLeapyear( _year : integer ) : boolean ;
    function month2word ( _month : integer ) :string ;
  public
    { Public declarations }
  end;

var
  ChkDateForm: TChkDateForm;

implementation

{$R *.dfm}
function Tchkdateform.month2word(_month: Integer) : string ;
begin
  case ( _month ) of
  1 : result := '一月' ;
  2 : result := '二月' ;
  3 : result := '三月' ;
  4 : result := '四月' ;
  5 : result := '五月' ;
  6 : result := '六月' ;
  7 : result := '七月' ;
  8 : result := '八月' ;
  9 : result := '九月' ;
  10 : result := '十月' ;
  11 : result := '十一月' ;
  12 : result := '十二月' ;
  end;
end;

function Tchkdateform.ChkYear(_year: Integer) : boolean;
begin
  if ( _year > 0 ) and ( _year < 3000 ) then
  begin
    result := true ;
  end else
  begin
    resulT := false ;
  end;
end;

function Tchkdateform.chkmonth( _month : integer ) : boolean ;
begin
  if ( _month > 0 ) and  ( _month < 13 ) then
  begin
    result := true ;
  end else
  begin
    resulT := false ;
  end;
end;

function Tchkdateform.chkdate( _month, _date :integer ) : boolean ;
begin
  result := false ;

  case _month of
  1,3,5,7,8,10,12 :
    if ( _date < 31 ) and  ( _date > 0 ) then
    begin
      result := true;
    end else
    begin
      result := false;
    end;
  4,6,9,11 :
    if ( _date < 30 ) and  ( _date > 0 ) then
    begin
      result := true ;
    end else
    begin
      result := false ;
    end;
  2 :
    case chkLeapyear(StrToInt(Edit2.Text)) of
    true :
      if ( _date = 29 ) then
      begin
        result := true ;
      end else
      begin
        result := false ;
      end;
    false :
      if ( _date = 28 ) then
      begin
        result := true ;
      end else
      begin
        result := false ;
      end;
    end;
  end;

end;

function tchkdateform.chkLeapyear(_year: integer) : boolean;
begin
  if ( _year mod 400 = 0 ) then
  begin
    result := true  ;
  end else
  begin
    if ( _year mod 4 = 0 ) then
    begin
      if ( _year mod 100 > 0 ) then
      begin
        result := true  ;
      end else
      begin
        result := false ;
      end;
    end else
    begin
      result := false ;
    end;
  end;

end;

procedure TChkDateForm.FormCreate(Sender: TObject);
begin
  edit1.NumbersOnly := True ;
  edit2.NumbersOnly := True ;
  edit3.NumbersOnly := True ;
end;

procedure TChkDateForm.Btn2ChkClick(Sender: TObject);
var num_date , num_month , num_year : integer ;
Var word : string ;
begin
  word := edit4.text ;

  num_date  := StrToInt(copy(word,0,2));
  num_month := StrToInt(copy(word,3,2));
  num_year  := StrToInt(copy(word,5,4));

  if ( true = chkyear(num_year) ) then
  begin
    if ( true = chkmonth(num_month) ) then
    begin
      if ( true = chkdate(num_month,num_date) ) then
      begin
       memo1.Lines.Text := (
       IntToStr(num_date)
       + ' / '
       + month2word(num_month)
       + ' / '
       + '西元 '
       + IntToStr(num_year)
       + '年' ) ;
      end else
      begin
      showmessage('日期輸入錯誤摟!');
      exit ;
      end;
    end else
    begin
      showmessage('月份輸入錯誤摟!');
      exit ;
    end;
  end else
  begin
    showmessage('年份輸入錯誤摟!');
    exit ;
  end;

end;

procedure TChkDateForm.Button1Click(Sender: TObject);
begin
  if ( true = chkyear(StrToInt(edit1.Text)) ) then
  begin
    if ( true = chkmonth(StrToInt(edit2.Text)) ) then
    begin
      if ( true = chkdate(StrToInt(edit2.Text),StrToInt(edit3.Text)) ) then
      begin
       memo1.Lines.Text := (
       edit3.Text
       + ' / '
       + month2word(StrToInt(edit2.Text))
       + ' / '
       + '西元 '
       + edit1.Text
       + '年' ) ;
      end else
      begin
      showmessage('日期輸入錯誤摟!');
      exit ;
      end;
    end else
    begin
      showmessage('月份輸入錯誤摟!');
      exit ;
    end;
  end else
  begin
    showmessage('年份輸入錯誤摟!');
    exit ;
  end;
end;

end.
