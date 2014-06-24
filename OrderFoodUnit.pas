unit OrderFoodUnit;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  MainForm, Vcl.Samples.Spin;

type
  TOrderFoodForm = class(TForm)
    Label1: TLabel;
    SpinEdit1: TSpinEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    SpinEdit5: TSpinEdit;
    SpinEdit6: TSpinEdit;
    SpinEdit7: TSpinEdit;
    CulcalBtn: TButton;
    Label14: TLabel;
    procedure CulcalBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OrderFoodForm: TOrderFoodForm;

implementation

{$R *.dfm}

procedure TOrderFoodForm.CulcalBtnClick(Sender: TObject);
begin
  Edit8.Text := IntToStr((
    StrToInt(Edit1.Text) * SpinEdit1.Value
   +StrToInt(Edit2.Text) * SpinEdit2.Value
   +StrToInt(Edit3.Text) * SpinEdit3.Value
   +StrToInt(Edit4.Text) * SpinEdit4.Value
   +StrToInt(Edit5.Text) * SpinEdit5.Value
   +StrToInt(Edit6.Text) * SpinEdit6.Value
   +StrToInt(Edit7.Text) * SpinEdit7.Value
   ) * 130 div 100
   );
end;

end.
