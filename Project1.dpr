program Project1;

uses
  Vcl.Forms,
  MainForm in 'MainForm.pas' {SixPractice},
  EasyNumCalUnit in 'EasyNumCalUnit.pas' {EasyNumCalForm},
  EasyCircleCalUnit in 'EasyCircleCalUnit.pas' {EasyCircleCalForm},
  CutNumVauleUnit in 'CutNumVauleUnit.pas' {CutNumVauleForm},
  EasyTaxesTrialUnit in 'EasyTaxesTrialUnit.pas' {EasyTaxesTrialForm},
  EasyTempConverUnit in 'EasyTempConverUnit.pas' {EasyTempConverForm},
  EasyNumlistCalUnit in 'EasyNumlistCalUnit.pas' {EasyNumlistCalForm},
  CommonUnit in 'CommonUnit.pas',
  NumOutputUnit in 'NumOutputUnit.pas' {Numoutputform};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TSixPractice, SixPractice);
  Application.CreateForm(TEasyNumCalForm, EasyNumCalForm);
  Application.CreateForm(TEasyCircleCalForm, EasyCircleCalForm);
  Application.CreateForm(TCutNumVauleForm, CutNumVauleForm);
  Application.CreateForm(TEasyTaxesTrialForm, EasyTaxesTrialForm);
  Application.CreateForm(TEasyTempConverForm, EasyTempConverForm);
  Application.CreateForm(TEasyNumlistCalForm, EasyNumlistCalForm);
  Application.CreateForm(TNumoutputform, Numoutputform);
  Application.Run;
end.
