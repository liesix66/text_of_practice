unit WordSeqUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TWordSeqForm = class(TForm)
    Memo1: TMemo;
    Edit1: TEdit;
    Label1: TLabel;
    BtnSeq: TButton;
    BtnRev: TButton;
    BtnClear: TButton;
    BtnExit: TButton;
    BtnInput: TButton;
    procedure BtnInputClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnClearClick(Sender: TObject);
    procedure BtnSeqClick(Sender: TObject);
  private
    { Private declarations }
    memocount : integer ;
  public
    { Public declarations }
  end;

var
  WordSeqForm: TWordSeqForm;
  gStringList : TstringList ;

implementation

{$R *.dfm}

procedure TWordSeqForm.FormCreate(Sender: TObject);
begin
  memocount := 0 ;
  gStringList:=TStringList.Create ;
  gStringList.Sorted := True ;
end;

procedure TWordSeqForm.BtnClearClick(Sender: TObject);
begin
  memo1.Lines.Clear;
  gStringList.Free;
  edit1.Text := '' ;
end;

procedure TWordSeqForm.BtnInputClick(Sender: TObject);
Var word : string ;
begin
  word :=   edit1.Text ;

  if word = '' then
  begin
    showmessage('請輸入字串') ;
    exit ;
  end else
  begin
    if memocount > 10 then
    begin
      showmessage('目前最大只支援10個字唷' );
      exit ;
    end else
    begin
      gStringList.Add(word) ;
      memo1.Lines.Add(word);
      Inc(memocount);
    end;
  end;
end;


procedure TWordSeqForm.BtnSeqClick(Sender: TObject);
begin
  memo1.Lines.Clear;
  gStringList.Duplicates := dupaccept ;
  gStringList.Sort;
  memo1.Lines.AddStrings(gStringList);
end;

end.
