/*
	ArmA 3 Wasteland
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	Special build for Dwarden
	ESABQIEXHTFRGOFR
*/
private["_06f","_02j","_03j","_04j","_i","_j","_k","_05j","_0zc"];
_06f=+(_this select 0);
_02j={_this};
if((count _this)>1)then{
	if((typeName(_this select 1))=="CODE")then{
		_02j=_this select 1;
	}else{
		_02j=compile(_this select 1);
	};
};
//_03j=count _06f;
_03j=0;
_04j=[3501671,1355339,543749,213331,84801,27901,11969,4711,1968,815,271,111,41,13,4,1];
//for "_k" from 0 to((count _04j)-1)do{
for "_k" from 0 to 15 do{
	_05j=_04j select _k;
	for[{_i=_05j},{_i<_03j},{_i=_i+1}]do{
		_0zc=_06f select _i;
		_j=_i;
		while{(_j>=_05j)}do{
			if(!(((_06f select(_j-_05j))call _02j)>(_0zc call _02j)))exitWith{};
			_06f set[_j,(_06f select(_j-_05j))];
			_j=_j-_05j;
		};
		_06f set[_j,_0zc];
	};
};
_06f