unit EasyTaxesTrialUnit;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  MainForm;

const Maxrank = 4;
const rank : array[0..4] of Integer = ( 4400000, 2350000, 1170000, 520000, 0 );
const ranktag : array[0..4] of
      String = ( '第五階距', '第四階距', '第三階距', '第二階距', '第一階距' );
const tariff : array[0..4] of Integer = ( 40, 30, 20, 12, 5) ;
const gap : array[0..5] of Integer = ( 0, 805000, 365000, 130000, 36400,0);

type
  TEasyTaxesTrialForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    CauculateBtn: TButton;
    Edit1: TEdit;
    ClearBtn: TButton;
    ExitBtn: TButton;
    procedure CauculateBtnClick(Sender: TObject);
    procedure ClearBtnClick(Sender: TObject);
    procedure ExitBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  gEasyTaxesTrialForm: TEasyTaxesTrialForm;

implementation

{$R *.dfm}

procedure TEasyTaxesTrialForm.CauculateBtnClick(Sender: TObject);
Var salary, count, rankFlag, byemoney : integer ;
Var output : String ;
begin
  rankFlag := 0 ;
  salary := StrToInt(Edit1.Text);

  for count := 0 to Maxrank do
  begin
    if rank[count] - (salary-1) > 0 then
    begin

    end else
    begin
      output := ranktag[count];
      rankFlag := count ;
      Edit2.Text  := output ;
      break ;
    end;
  end;

  byemoney := salary * tariff[rankflag] div 100 - gap[rankflag+1] ;
  if byemoney < 0 then
  begin
    byemoney := 0 ;
  end;

  Edit3.Text := IntToStr(byemoney);

end;

procedure TEasyTaxesTrialForm.ClearBtnClick(Sender: TObject);
begin
  Edit1.Text := '0' ;
  Edit2.Text := ' ' ;
  Edit3.Text := '0' ;
end;

procedure TEasyTaxesTrialForm.ExitBtnClick(Sender: TObject);
begin
  close;
end;

end.
