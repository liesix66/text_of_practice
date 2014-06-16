unit EasyTempConverUnit;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  MainForm;

type
  TEasyTempConverForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    FCheckBtn: TRadioButton;
    CCheckbtn: TRadioButton;
    ExitBtn: TButton;
    procedure Button1Click(Sender: TObject);
    procedure ExitBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  gEasyTempConverForm : TEasyTempConverForm;

implementation

{$R *.dfm}

procedure TEasyTempConverForm.Button1Click(Sender: TObject);
Var inputTemperature : Single ;
begin
  if ( Edit2.Text = '' ) then
  begin
    showmessage('叫块计');
    exit ;
  end else
  begin
    inputTemperature := StrToFloat(Edit2.Text);
  end;

  if CCheckBtn.Checked = true then
  begin
    inputTemperature :=  inputTemperature / 5 * 9  + 32 ;
    Edit1.Text := '瞷地ん放' + FloatToStrF(inputTemperature,ffFixed,8,2);
  end;

  if FCheckBtn.Checked = true then
  begin
    inputTemperature := (inputTemperature - 32) / 9 * 5 ;
    Edit1.Text := '瞷尼ん放' + FloatToStrF(inputTemperature,ffFixed,8,2) + '';
  end;



end;

procedure TEasyTempConverForm.ExitBtnClick(Sender: TObject);
begin
  close;
end;

end.
