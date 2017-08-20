unit circle.compute;

interface

type TCircle = class
  class function ComputeRay(const arrow: double; const cord: double): double;
  class function ComputeArrow(const ray: double; const cord: double): double;
  class function ComputeCord(const ray: double; const arrow: double): double;
end;

implementation

{ TCircle }

class function TCircle.ComputeArrow(const ray, cord: double): double;
begin
  result := 0;
  if ray > 0 then
      result := ray * (1 - sqrt(1 - (cord*cord)/(4*ray*ray)));
end;

class function TCircle.ComputeCord(const ray, arrow: double): double;
begin
  result := 0;
  if ray >= arrow then
      result := sqrt(4*arrow*(2*ray-arrow));
end;

class function TCircle.ComputeRay(const arrow, cord: double): double;
begin
  result := 0;
  if arrow > 0 then
    result := (arrow/2) + ((cord*cord)/(8*arrow));
end;

end.
