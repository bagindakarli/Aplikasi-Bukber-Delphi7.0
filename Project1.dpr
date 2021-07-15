program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {ftiket};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tftiket, ftiket);
  Application.Run;
end.
