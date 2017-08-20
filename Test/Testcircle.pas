unit Testcircle;
{

  Cas de test DUnit Delphi
  ------------------------
  Cette unité contient une classe cas de test squelette générée par l'expert Cas de test.
  Modifiez le code généré pour configurer et appeler correctement les méthodes de l'unité 
  en cours de test.

}

interface

uses
  TestFramework,
  circle.compute,
  SysUtils
  ;

type
  // Méthodes de test pour la classe TCircle

  TestTCircle = class(TTestCase)
  strict private
    FCircle: TCircle;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestComputeRay;
    procedure TestComputeArrow;
    procedure TestComputeCord;
  end;

implementation

procedure TestTCircle.SetUp;
begin
  FCircle := TCircle.Create;
end;

procedure TestTCircle.TearDown;
begin
  FCircle.Free;
  FCircle := nil;
end;

procedure TestTCircle.TestComputeRay;
var
  ReturnValue: Double;
  cord: Double;
  arrow: Double;
  msg: string;
begin
  // TODO: Configurer les paramètres d'appel des méthodes
  arrow := 100;
  cord := 200;
  ReturnValue := FCircle.ComputeRay(arrow, cord);
  // TODO: Valider les résultats des méthodes
  msg := format('The return value must be 100 insteadof %f', [ReturnValue]);
  CheckEquals(100,ReturnValue,msg);
end;

procedure TestTCircle.TestComputeArrow;
var
  ReturnValue: Double;
  cord: Double;
  ray: Double;
  msg: string;
begin
  // TODO: Configurer les paramètres d'appel des méthodes
  ray := 100;
  cord := 200;
  ReturnValue := FCircle.ComputeArrow(ray, cord);
  // TODO: Valider les résultats des méthodes
  msg := format('The return value must be 100 insteadof %f', [ReturnValue]);
  CheckEquals(100,ReturnValue,msg);
end;

procedure TestTCircle.TestComputeCord;
var
  ReturnValue: Double;
  arrow: Double;
  ray: Double;
  msg: string;
begin
  // TODO: Configurer les paramètres d'appel des méthodes
  ray := 100;
  arrow := 100;
  ReturnValue := FCircle.ComputeCord(ray, arrow);
  // TODO: Valider les résultats des méthodes
  msg := format('The return value must be 200 insteadof %f', [ReturnValue]);
  CheckEquals(200,ReturnValue,msg);
end;

initialization
  // Recenser tous les cas de test avec le lanceur de test
  RegisterTest(TestTCircle.Suite);
end.

