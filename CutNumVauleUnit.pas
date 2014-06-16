unit CutNumVauleUnit;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  MainForm;

type
  TCutNumVauleForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    CalculateBtn: TButton;
    ClearBtn: TButton;
    ExitBtn: TButton;
    procedure CalculateBtnClick(Sender: TObject);
    procedure ClearBtnClick(Sender: TObject);
    procedure ExitBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  gCutNumVauleForm: TCutNumVauleForm;

implementation

{$R *.dfm}


procedure TCutNumVauleForm.CalculateBtnClick(Sender: TObject);
Var inputNum1, inputNum2, inputNum3 : Single ;
Var sum : Single ;
Var getFloatVaule : integer ;
begin
  getFloatVaule := StrToInt(Edit5.Text);
  inputNum1 := StrToFloat(Edit1.Text);
  inputNum2 := StrToFloat(Edit2.Text);
  inputNum3 := StrToFloat(Edit3.Text);

  sum := inputNum1 + inputNum2 + inputNum3 ;

  Edit4.Text := FloatToStrF(sum,ffFixed,8,getFloatVaule);

end;

procedure TCutNumVauleForm.ClearBtnClick(Sender: TObject);
begin
  Edit1.Text := '0' ;
  Edit2.Text := '0' ;
  Edit3.Text := '0' ;
  Edit4.Text := '0' ;
  Edit5.Text := '2' ;
end;

procedure TCutNumVauleForm.ExitBtnClick(Sender: TObject);
begin
  close ;
end;

end.
