unit CommonUnit;

interface
type
  TCommon = class( Tobject )

  function getStringCount( memostring : String):integer;
  function getchkString(_Str : String):Boolean;
 //procedure chkString( _Str : String , _text : String);

  end;

Var
  gCom : TCommon ;

implementation

function TCommon.getchkString(_Str: string) : Boolean ;
Var ChkVaule : Integer ;
Var _Text : String ;
begin
  Result := False ;

  ChkVaule := pos( _Str, _Text);
  if ChkVaule > 0 then
  begin
    Result := true ;
  end else
  begin
    Result := False ;
  end;
end;

function TCommon.getStringCount(memostring: string):integer;
Var _SearchString : String ;
Var _stringVaule : Integer ;
Var _CountString : Integer;
begin
  result := 0 ;
  _stringVaule := 0 ;

  _CountString := 0 ;

  if _CountString =  0 then
  begin
    _stringVaule := pos( _searchString, memostring);
  end;


  if _stringVaule > 0 then
  begin
    Inc( _CountString);
    Result := _CountString ;
  end;

end;


end.
