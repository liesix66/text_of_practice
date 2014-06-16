unit EasyCircleCalUnit;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  MainForm, Vcl.StdCtrls;


const pi = 3.1415926;

type
  TEasyCircleCalForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    CalculateBtn: TButton;
    ExitBtn: TButton;
    procedure CalculateBtnClick(Sender: TObject);
    procedure ExitBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EasyCircleCalForm: TEasyCircleCalForm;

implementation

{$R *.dfm}

procedure TEasyCircleCalForm.CalculateBtnClick(Sender: TObject);
Var radius, area, circumference: Single ;
begin

  if ( Edit1.Text = '' ) then
  begin
    showmessage('½Ð¿é¤J¼Æ¦r');
    exit ;
  end else
  begin
    radius := StrToFloat(Edit1.Text);
  end;

  area := radius * radius * pi;
  circumference:= 2 * radius * pi;

  edit2.Text := FloatToStr(area);
  edit3.Text := FloatToStr(circumference);

end;

procedure TEasyCircleCalForm.ExitBtnClick(Sender: TObject);
begin
  close;
end;

end.
