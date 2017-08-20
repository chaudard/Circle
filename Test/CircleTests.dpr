program CircleTests;
{

  Projet de test DUnit Delphi
  ---------------------------
  Ce projet contient le framework de test DUnit et les lanceurs de test de l'interface graphique ou de la console.
  Ajoutez "CONSOLE_TESTRUNNER"  l'entre des dfinitions conditionnelles des options du projet
  afin d'utiliser le lanceur de test de la console.  Sinon, le lanceur de test GUI sera utilis
  par dfaut.

}

{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

uses
  Forms,
  TestFramework,
  GUITestRunner,
  TextTestRunner,
  Testcircle in 'Testcircle.pas';

{$R *.RES}

begin
  Application.Initialize;
  if IsConsole then
    with TextTestRunner.RunRegisteredTests do
      Free
  else
    GUITestRunner.RunRegisteredTests;
end.

