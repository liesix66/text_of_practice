program Project1;

uses
  Vcl.Forms,
  MainForm in 'MainForm.pas' {SixPractice},
  EasyNumCalUnit in 'EasyNumCalUnit.pas' {EasyNumCalForm},
  EasyCircleCalUnit in 'EasyCircleCalUnit.pas' {EasyCircleCalForm},
  CutNumVauleUnit in 'CutNumVauleUnit.pas' {CutNumVauleForm},
  EasyTaxesTrialUnit in 'EasyTaxesTrialUnit.pas' {EasyTaxesTrialForm},
  EasyTempConverUnit in 'EasyTempConverUnit.pas' {EasyTempConverForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TSixPractice, SixPractice);
  Application.CreateForm(TEasyNumCalForm, EasyNumCalForm);
  Application.CreateForm(TEasyCircleCalForm, EasyCircleCalForm);
  Application.CreateForm(TCutNumVauleForm, gCutNumVauleForm);
  Application.CreateForm(TEasyTaxesTrialForm, gEasyTaxesTrialForm);
  Application.CreateForm(TEasyTempConverForm, gEasyTempConverForm);
  Application.Run;
end.
