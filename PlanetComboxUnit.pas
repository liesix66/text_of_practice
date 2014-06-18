unit PlanetComboxUnit;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  MainForm;

type
  TPlanetComBoxForm = class(TForm)
    ComboBox1: TComboBox;
    Memo1: TMemo;
    Label1: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PlanetComBoxForm: TPlanetComBoxForm;

implementation

{$R *.dfm}

procedure TPlanetComBoxForm.Button1Click(Sender: TObject);
begin
  // Can make Btn Vissable be False

  case Combobox1.ItemIndex of
    0 :
    begin
      memo1.Lines.Clear;
      memo1.Lines.Add('');
    end;
    1 :
    begin
      memo1.Lines.Clear;
      memo1.Lines.Add('地球');
    end;
    2 :
    begin
      memo1.Lines.Clear;
      memo1.Lines.Add('金星');
    end;
    3 :
    begin
      memo1.Lines.Clear;
      memo1.Lines.Add('木星');
    end;
    4 :
    begin
      memo1.Lines.Clear;
      memo1.Lines.Add('水星');
    end;
    5 :
    begin
      memo1.Lines.Clear;
      memo1.Lines.Add('火星');
    end;
    6 :
    begin
      memo1.Lines.Clear;
      Memo1.Lines.Add('土星');
    end;
    7 :
    begin
      memo1.Lines.Clear;
      memo1.Lines.Add('天王星');
    end;
    8 :
    begin
      memo1.Lines.Clear;
      memo1.Lines.Add('海王星');
    end;
    9 :
    begin
      memo1.Lines.Clear;
      memo1.Lines.Add('冥王星');
    end;
  end;

end;

end.
