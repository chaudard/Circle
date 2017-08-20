unit circleUnit;

interface

// with stdcall, the order of parameters is from right to left.
// So, we have to invert the parameters order compared to Circle.dll
function ComputeRay(const cord: double; const arrow: double): double; external 'Circle.dll';
function ComputeArrow(const cord: double; const ray: double): double; external 'Circle.dll';
function ComputeCord(const arrow: double; const ray: double): double; external 'Circle.dll';

implementation

end.
