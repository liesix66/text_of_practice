unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TSixPractice = class(TForm)
    EasyNumCalBtn: TButton;
    EasyCircleCalBtn: TButton;
    CutNumVauleBtn2: TButton;
    EasyTaxesTrialBtn: TButton;
    EasyTempConverBtn: TButton;
    procedure EasyNumCalBtnClick(Sender: TObject);
    procedure EasyCircleCalBtnClick(Sender: TObject);
    procedure CutNumVauleBtn2Click(Sender: TObject);
    procedure EasyTaxesTrialBtnClick(Sender: TObject);
    procedure EasyTempConverBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SixPractice: TSixPractice;

implementation

{$R *.dfm}

uses
EasyNumCalUnit, EasyCircleCalUnit, CutNumVauleUnit ,EasyTaxesTrialUnit,
EasyTempConverUnit;

procedure TSixPractice.EasyCircleCalBtnClick(Sender: TObject);
begin
  EasyCircleCalForm.ShowModal;
end;

procedure TSixPractice.EasyNumCalBtnClick(Sender: TObject);
begin
  EasyNumCalForm.ShowModal;
end;

procedure TSixPractice.EasyTaxesTrialBtnClick(Sender: TObject);
begin
  gEasyTaxesTrialForm.showModal;
end;

procedure TSixPractice.EasyTempConverBtnClick(Sender: TObject);
begin
  gEasyTempConverForm.ShowModal;
end;

procedure TSixPractice.CutNumVauleBtn2Click(Sender: TObject);
begin
  gCutNumVauleForm.ShowModal;
end;


end.
