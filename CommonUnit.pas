unit CommonUnit;

interface
type
  TCommon = class( Tobject )

  function CalculateFibonacci( _firstNum , _secNum : int64) : int64 ;
  function Calculategoldenratio( _firstNum , _secNum : int64) : real ;
  end;

Var
  gCom : TCommon ;

implementation

function TCommon.CalculateFibonacci( _firstNum , _secNum : int64) : int64 ;
begin
  result := _firstNum + _secNum ;
end;

function TCommon.Calculategoldenratio( _firstNum , _secNum : int64) : real ;
begin
  result := _secNum / _firstNum ;
end;


end.
