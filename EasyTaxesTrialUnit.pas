unit EasyTaxesTrialUnit;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  MainForm;

const Maxrank = 4;
const rank : array[0..4] of Integer = ( 0, 520000, 1170000, 2350000, 4400000 );
const ranktag : array[0..4] of
      String = ( '第一階距', '第二階距', '第三階距', '第四階距', '第五階距' );
const tariff : array[0..4] of Integer = ( 5, 12, 20, 30, 40 ) ;
const gap : array[0..5] of Integer = ( 0, 36400, 130000, 365000, 805000,0);

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
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    procedure CauculateBtnClick(Sender: TObject);
    procedure ClearBtnClick(Sender: TObject);
    procedure ExitBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EasyTaxesTrialForm: TEasyTaxesTrialForm;

implementation

{$R *.dfm}

procedure TEasyTaxesTrialForm.CauculateBtnClick(Sender: TObject);
Var salary, count, rankFlag, byemoney : integer ;
Var output : String ;
begin
  salary := StrToInt(Edit1.Text);

  for count := 0 to Maxrank do
  begin
    if (salary-1) - Rank[count] < 0 then
    begin
      output := ranktag[count-1];
      rankFlag := count -1 ;
      Edit2.Text  := output ;
      break ;
    end else
    begin
      output := ranktag[count];
      rankflag := count ;
      Edit2.Text := output ;
    end;
  end;

  byemoney := salary * tariff[rankflag] div 100 - gap[rankflag] ;

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
