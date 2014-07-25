program practicesix;

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
  NumOutputUnit in 'NumOutputUnit.pas' {Numoutputform},
  EasyMultTableUnit in 'EasyMultTableUnit.pas' {EasyMultTableForm},
  SeqSerchUnit in 'SeqSerchUnit.pas' {SeqSerchForm},
  PlanetComboxUnit in 'PlanetComboxUnit.pas' {PlanetComBoxForm},
  FontsChangeUnit in 'FontsChangeUnit.pas' {FontsChangeForm},
  SeqUnit in 'SeqUnit.pas' {SeqForm},
  OrderFoodUnit in 'OrderFoodUnit.pas' {OrderFoodForm},
  StudInputUnit in 'StudInputUnit.pas' {StudInputForm},
  StringAddPassUnit in 'StringAddPassUnit.pas' {StringAddPassForm},
  WordSeqUnit in 'WordSeqUnit.pas' {WordSeqForm},
  CheckDateUnit in 'CheckDateUnit.pas' {ChkDateForm};

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
  Application.CreateForm(TEasyMultTableForm, EasyMultTableForm);
  Application.CreateForm(TSeqSerchForm, SeqSerchForm);
  Application.CreateForm(TPlanetComBoxForm, PlanetComBoxForm);
  Application.CreateForm(TFontsChangeForm, FontsChangeForm);
  Application.CreateForm(TSeqForm, SeqForm);
  Application.CreateForm(TOrderFoodForm, OrderFoodForm);
  Application.CreateForm(TStudInputForm, StudInputForm);
  Application.CreateForm(TStringAddPassForm, StringAddPassForm);
  Application.CreateForm(TWordSeqForm, WordSeqForm);
  Application.CreateForm(TChkDateForm, ChkDateForm);
  Application.Run;
end.
