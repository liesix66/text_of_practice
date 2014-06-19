unit FontsChangeUnit;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  MainForm;

type
  TFontsChangeForm = class(TForm)
    ListBox1: TListBox;
    Label1: TLabel;
    Memo1: TMemo;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    CheckBtn: TButton;
    ExitBtn: TButton;
    procedure CheckBtnClick(Sender: TObject);
    procedure ExitBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FontsChangeForm: TFontsChangeForm;

implementation

{$R *.dfm}

procedure TFontsChangeForm.CheckBtnClick(Sender: TObject);
const Maxfonts = 3 ;
Var fontsItem : integer  ;
begin
  for fontsItem := 0 to Maxfonts do
  begin
    if listbox1.Selected[fontsItem] then
    case fontsItem of
    0:
    begin
      Memo1.Font.Name := '細明體' ;
      Memo1.Lines.Text:=Edit1.Text;
    end;
    1:
    begin
      Memo1.Font.Name := '新細明體' ;
      Memo1.Lines.Text:=Edit1.Text;
    end;
    2:
    begin
      Memo1.Font.Name := '微軟正黑體' ;
      Memo1.Lines.Text:=Edit1.Text;
    end;
    3:
    begin
      Memo1.Font.Name := '標楷體' ;
      Memo1.Lines.Text:=Edit1.Text;
    end;

    end;
  end;

end;

procedure TFontsChangeForm.ExitBtnClick(Sender: TObject);
begin
  close ;
end;

end.
