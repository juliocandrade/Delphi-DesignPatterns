program AbstractFactory;

uses
  Vcl.Forms,
  AbstractFactory.Principal in 'AbstractFactory.Principal.pas' {Form1},
  AbstractFactory.Interfaces in 'AbstractFactory.Interfaces.pas',
  AbstractFactory.Mesa.Jantar.Rustic in 'AbstractFactory.Mesa.Jantar.Rustic.pas',
  AbstractFactory.Mesa.Jantar.Modern in 'AbstractFactory.Mesa.Jantar.Modern.pas',
  AbstractFactory.Cadeira.Jantar.Modern in 'AbstractFactory.Cadeira.Jantar.Modern.pas',
  AbstractFactory.Cadeira.Jantar.Rustic in 'AbstractFactory.Cadeira.Jantar.Rustic.pas',
  AbstractFactory.FabricaConjuntoJantar.Rustic in 'AbstractFactory.FabricaConjuntoJantar.Rustic.pas',
  AbstractFactory.FabricaConjuntoJantar.Modern in 'AbstractFactory.FabricaConjuntoJantar.Modern.pas',
  AbstractFactory.FabricaConjuntoJantar in 'AbstractFactory.FabricaConjuntoJantar.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
