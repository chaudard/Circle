library Circle;

{ Remarque importante concernant la gestion de mémoire de DLL : ShareMem doit
  être la première unité de la clause USES de votre bibliothèque ET de votre projet
  (sélectionnez Projet-Voir source) si votre DLL exporte des procédures ou des
  fonctions qui passent des chaînes en tant que paramètres ou résultats de fonction.
  Cela s'applique à toutes les chaînes passées de et vers votre DLL --même celles
  qui sont imbriquées dans des enregistrements et classes. ShareMem est l'unité
  d'interface pour le gestionnaire de mémoire partagée BORLNDMM.DLL, qui doit
  être déployé avec vos DLL. Pour éviter d'utiliser BORLNDMM.DLL, passez les
  informations de chaînes avec des paramètres PChar ou ShortString. }

uses
  ShareMem,
  SysUtils,
  Classes,
  circle.compute in 'circle.compute.pas';

{$R *.res}

////////////////////////////////////////////////////////////////////////////////
function ComputeRay(const arrow: double; const cord: double): double; stdcall;
begin
  result := TCircle.ComputeRay(arrow, cord);
end;

function ComputeArrow(const ray: double; const cord: double): double; stdcall;
begin
  result := TCircle.ComputeArrow(ray, cord);
end;

function ComputeCord(const ray: double; const arrow: double): double; stdcall;
begin
  result := TCircle.ComputeCord(ray, arrow);
end;
////////////////////////////////////////////////////////////////////////////////

exports ComputeRay;
exports ComputeArrow;
exports ComputeCord;

begin
end.
