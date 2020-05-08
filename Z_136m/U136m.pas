unit U136m;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Unit136m, StdCtrls;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    OpenDialog1: TOpenDialog;
    Zapmass1: TMenuItem;
    Manual1: TMenuItem;
    Random1: TMenuItem;
    Write1: TMenuItem;
    Result1: TMenuItem;
    Open1: TMenuItem;
    Close1: TMenuItem;
    Delete1: TMenuItem;
    OpenTxt1: TMenuItem;
    ipfile1: TMenuItem;
    xtfile1: TMenuItem;
    tipfile1: TMenuItem;
    oTxtFile1: TMenuItem;
    Memo1: TMemo;
    otipfile1: TMenuItem;
    Inmemo1: TMenuItem;
    procedure OpenTxt1Click(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
    procedure xtfile1Click(Sender: TObject);
    procedure Manual1Click(Sender: TObject);
    procedure oTxtFile1Click(Sender: TObject);
    procedure Inmemo1Click(Sender: TObject);
    procedure Random1Click(Sender: TObject);
    procedure otipfile1Click(Sender: TObject);
    procedure tipfile1Click(Sender: TObject);
    procedure ipfile1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  dm: DinMas;     //имя динамического массива
  fDM: Tipfile;   //файловая переменная для работы с типизир файлом
  ftxt: text;
  n:word;
  r,s: string;

implementation

{$R *.dfm}

procedure TForm1.OpenTxt1Click(Sender: TObject);
 var  s:string; 
begin
   if not OpenDialog1.Execute then exit;
  s:= OpenDialog1.FileName;
  AssignFile(ftxt,s);
  Append(ftxt);
end;

procedure TForm1.Delete1Click(Sender: TObject);
begin
SetLength(dm,0);
end;

procedure TForm1.xtfile1Click(Sender: TObject);
begin
CloseFile(ftxt);
end;

procedure TForm1.Manual1Click(Sender: TObject);
begin
ZapMassHand(dm);
end;

procedure TForm1.oTxtFile1Click(Sender: TObject);
begin
WriteMassText(dm,ftxt);
end;


procedure TForm1.Inmemo1Click(Sender: TObject);
begin
  ResultText(dm,r);
  WriteResText(r, ftxt);
end;

procedure TForm1.Random1Click(Sender: TObject);
begin
   ZapMassRandom(dm);
end;

procedure TForm1.otipfile1Click(Sender: TObject);
begin
   WriteMassTipFile(dm,ftxt);
end;

procedure TForm1.tipfile1Click(Sender: TObject);
begin
   CloseFile(fDM);
end;

procedure TForm1.ipfile1Click(Sender: TObject);
begin
    if not OpenDialog1.Execute then exit;
  s:= OpenDialog1.FileName;
  AssignFile(fDM,s);
  rewrite(fDM);
end;

end.
