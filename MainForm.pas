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
    EasyNumlistCalBtn2: TButton;
    NumOutputBtn: TButton;
    EasyMultTable: TButton;
    SeqSrachBtn: TButton;
    PlanetSerchBtn: TButton;
    FontsChangeBtn: TButton;
    SeqBtn: TButton;
    OrderFoodBtn: TButton;
    procedure EasyNumCalBtnClick(Sender: TObject);
    procedure EasyCircleCalBtnClick(Sender: TObject);
    procedure CutNumVauleBtn2Click(Sender: TObject);
    procedure EasyTaxesTrialBtnClick(Sender: TObject);
    procedure EasyTempConverBtnClick(Sender: TObject);
    procedure EasyNumlistCalBtn2Click(Sender: TObject);
    procedure NumOutputBtnClick(Sender: TObject);
    procedure EasyMultTableClick(Sender: TObject);
    procedure SeqSrachBtnClick(Sender: TObject);
    procedure PlanetSerchBtnClick(Sender: TObject);
    procedure FontsChangeBtnClick(Sender: TObject);
    procedure SeqBtnClick(Sender: TObject);
    procedure OrderFoodBtnClick(Sender: TObject);
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
EasyTempConverUnit, EasyNumlistCalUnit, NumOutputUnit, EasyMultTableUnit,
SeqSerchUnit, PlanetComBoxUnit, FontsChangeUnit, SeqUnit,
OrderFoodUnit;

procedure TSixPractice.EasyCircleCalBtnClick(Sender: TObject);
begin
  EasyCircleCalForm.ShowModal;
end;

procedure TSixPractice.EasyMultTableClick(Sender: TObject);
begin
  EasyMultTableForm.ShowModal;
end;

procedure TSixPractice.EasyNumCalBtnClick(Sender: TObject);
begin
  EasyNumCalForm.ShowModal;
end;

procedure TSixPractice.EasyNumlistCalBtn2Click(Sender: TObject);
begin
  EasyNumListCalForm.ShowModal;
end;

procedure TSixPractice.EasyTaxesTrialBtnClick(Sender: TObject);
begin
  EasyTaxesTrialForm.showModal;
end;

procedure TSixPractice.EasyTempConverBtnClick(Sender: TObject);
begin
  EasyTempConverForm.ShowModal;
end;

procedure TSixPractice.FontsChangeBtnClick(Sender: TObject);
begin
  FontsChangeForm.ShowModal;
end;

procedure TSixPractice.NumOutputBtnClick(Sender: TObject);
begin
  NumOutputForm.ShowModal;
end;

procedure TSixPractice.OrderFoodBtnClick(Sender: TObject);
begin
  OrderFoodForm.ShowModal;
end;

procedure TSixPractice.PlanetSerchBtnClick(Sender: TObject);
begin
  PlanetComboxForm.ShowModal;
end;

procedure TSixPractice.SeqBtnClick(Sender: TObject);
begin
  SeqForm.showModal;
end;

procedure TSixPractice.SeqSrachBtnClick(Sender: TObject);
begin
  SeqSerchForm.ShowModal;
end;

procedure TSixPractice.CutNumVauleBtn2Click(Sender: TObject);
begin
  CutNumVauleForm.ShowModal;
end;


end.
