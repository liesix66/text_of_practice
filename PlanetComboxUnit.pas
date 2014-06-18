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
      memo1.Lines.Add('�a�y');
    end;
    2 :
    begin
      memo1.Lines.Clear;
      memo1.Lines.Add('���P');
    end;
    3 :
    begin
      memo1.Lines.Clear;
      memo1.Lines.Add('��P');
    end;
    4 :
    begin
      memo1.Lines.Clear;
      memo1.Lines.Add('���P');
    end;
    5 :
    begin
      memo1.Lines.Clear;
      memo1.Lines.Add('���P');
    end;
    6 :
    begin
      memo1.Lines.Clear;
      Memo1.Lines.Add('�g�P');
    end;
    7 :
    begin
      memo1.Lines.Clear;
      memo1.Lines.Add('�Ѥ��P');
    end;
    8 :
    begin
      memo1.Lines.Clear;
      memo1.Lines.Add('�����P');
    end;
    9 :
    begin
      memo1.Lines.Clear;
      memo1.Lines.Add('�ߤ��P');
    end;
  end;

end;

end.
