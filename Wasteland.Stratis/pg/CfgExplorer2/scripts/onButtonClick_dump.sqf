#include "macros.hpp"
scriptname "onBC_dump.sqf";
private ["_lbIDC", "_outputIDC", "_0h", "_outText", "_crlf"];
_curConfig = CurrentConfig;
hint format ["%1",[_curConfig]];
_lbIDC = 110;
_outputIDC = 113;
_0h = lbSize 110;
_outText = "";
_04d = "	";
_crlf = "
";

_parseEnrty = {
	_entry = _this select 0;
	_needClass = _this select 1;
	_0i = [];
	for "_i" from 0 to (count _entry)-1 do {
		_subEntry = _entry select _i;
		if ((isClass _subEntry)&&_needClass) then {
			_0i set [count _0i,_subEntry];
		};
		if (!(isClass _subEntry)&&!_needClass) then {
			_0i set [count _0i,_subEntry];
		};
	};
	_0i
};

// 
// clear output box
//
ctrlSetText [_outputIDC,""];

//
// iterate throu entries of list box
//
{
	// diag_log text format ["%1", lbtext [_lbIDC,_x]];
	_0l = _x;
	if ((str inheritsFrom _0l)!="") then {
		_outText = _outText + format["class %1 : %2 {",configName _0l,configName inheritsFrom _0l] + _crlf;
	}else{
		_outText = _outText + format["class %1 {",configName _0l] + _crlf;
	};
	

	{
		_Entry = _x;
		_EntryName = configName _Entry;
		_0ia = switch true do {
			case (isNumber _Entry): {[_EntryName,getNumber _Entry]};
			case (isText _Entry): {[_EntryName,""""+getText _Entry+""""]};
			case (isArray _Entry): {[_EntryName+"[]",[getArray _Entry] call GFNC(ArrayToString)]};
			default {nil};
		};
		_0pr = _04d + format["%1 = %2;",_0ia select 0,_0ia select 1];
		_outText = _outText + _0pr + _crlf;
	} forEach ([_0l,false] call _parseEnrty);

	_outText = _outText + "};" + _crlf;
} forEach ([_curConfig,true] call _parseEnrty);
ctrlSetText [_outputIDC,_outText];

