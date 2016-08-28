#include "defs.hpp"
disableSerialization;
_0e = _this select 0 select 1;

_0ca = GET_SELECTED_VEHICLE;
_04c = GET_SELECTED_DATA(balca_loader_vehicle_list_IDC);
_0dg = GET_CTRL(balca_loader_weapon_list_IDC) lbData _0e;
_default_magazines = getArray(configFile >> "CfgVehicles" >> _04c >> "Turrets" >> "MainTurret" >> "magazines");
_compatible_magazines = getArray(configFile>>"CfgWeapons">>_0dg>>"magazines");

if ((_0ca isKindOf "Plane")or(_0ca isKindOf "Helicopter")) then {
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
};


lbClear GET_CTRL(balca_loader_compatible_magazines_IDC);
{	
	_display_name = (getText(configFile >> "CfgMagazines" >> _x >> "displayName"));
	if (_display_name=="") then {
		GET_CTRL(balca_loader_compatible_magazines_IDC) lbAdd _x;
	} else {
		GET_CTRL(balca_loader_compatible_magazines_IDC) lbAdd _display_name;
	};
	GET_CTRL(balca_loader_compatible_magazines_IDC) lbSetData [(lbSize GET_CTRL(balca_loader_compatible_magazines_IDC))-1,_x];
} forEach _compatible_magazines;

GET_CTRL(balca_loader_compatible_magazines_IDC) lbSetCurSel 0;