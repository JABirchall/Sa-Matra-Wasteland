#include "defs.hpp"
disableSerialization;

_0ca = GET_SELECTED_VEHICLE;
_04c = GET_SELECTED_DATA(balca_loader_vehicle_list_IDC);
_index_turret = GET_SELECTED_TURRET;
_0dg = GET_SELECTED_DATA(balca_loader_weapon_list_IDC);
_default_magazines = [];
_current_magazines = [];
_compatible_magazines = getArray(configFile>>"CfgWeapons">>_0dg>>"magazines");


if ((_0ca isKindOf "Plane")||(_0ca isKindOf "Helicopter")) then {
	{	if (_0dg in _x) then {
			{_compatible_magazines = _compatible_magazines + getArray(configFile>>"CfgWeapons">>_x>>"magazines");
			}forEach _x;
		};
	} forEach CHANGABLE_WEAPONS;
	_0r = [];
	{if !(_x in _0r) then {
	_0r = _0r + [_x];
	}} forEach _compatible_magazines;
	_compatible_magazines = _0r;
	_default_magazines = getArray(configFile >> "CfgVehicles" >> _04c >> "magazines");
	if (isClass(configFile >> "CfgVehicles" >> _04c >> "Turrets" >> "MainTurret")) then {
		_default_magazines =_default_magazines + getArray(configFile >> "CfgVehicles" >> _04c >> "Turrets" >> "MainTurret" >> "magazines");
	};
	_current_magazines = magazines _0ca;
}else{
	if (count(configFile >> "CfgVehicles" >> _04c >> "Turrets") > 0) then {
		_current_magazines = GET_CURRENT_MAGAZINES_TURRET;
		_0hl = configFile >> "CfgVehicles" >> _04c >> "Turrets";
		_turret = _0hl select (_index_turret select 0);
		if (isNil {_index_turret select 1}) then {
				_default_magazines = getArray(_turret >> "magazines");
		}else{
			_subturrets = _turret >> "Turrets";
			_turret = _subturrets select (_index_turret select 1);
			_default_magazines = getArray(_turret >> "magazines");
		};
	};
};

_capacity_current = 0;
{	if (_x in _compatible_magazines) then {
		_capacity_current = _capacity_current + getNumber(configFile>>"CfgMagazines">>_x>>"count");
	};
} forEach _current_magazines;

_capacity_max = 0;
{if ((_compatible_magazines find _x)>-1) then {
_capacity_max = _capacity_max + getNumber(configFile>>"CfgMagazines">>_x>>"count");
};} forEach _default_magazines;

if (_0ca isKindOf "StaticWeapon") then {_capacity_max = (_capacity_max*5) max 30};
_0na = [_capacity_current,_capacity_max];
//diag_log format ["%1",_0na];
_0na

