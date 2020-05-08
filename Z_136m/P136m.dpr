program P136m;

uses
  Forms,
  U136m in 'U136m.pas' {Form1},
  Unit136m in 'Unit136m.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
