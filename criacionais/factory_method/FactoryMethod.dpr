program FactoryMethod;

uses
  Vcl.Forms,
  FactoryMethod.Principal in 'FactoryMethod.Principal.pas' {Form1},
  FactoryMethod.Fabrica.Transporte in 'FactoryMethod.Fabrica.Transporte.pas',
  FactoryMethod.Transporte.Rodoviario in 'FactoryMethod.Transporte.Rodoviario.pas',
  FactoryMethod.Transporte.Aeroviario in 'FactoryMethod.Transporte.Aeroviario.pas',
  FactoryMethod.Interfaces in 'FactoryMethod.Interfaces.pas',
  FactoryMethod.Transporte.Aquaviario in 'FactoryMethod.Transporte.Aquaviario.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
