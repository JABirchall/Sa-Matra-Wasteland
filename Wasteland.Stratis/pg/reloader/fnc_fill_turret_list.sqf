#include "defs.hpp"
disableSerialization;
_0ca = GET_SELECTED_VEHICLE;
_04c = GET_SELECTED_DATA(balca_loader_vehicle_list_IDC);
GET_CTRL(balca_loader_vehicle_shortcut_IDC) ctrlSetText (getText(configFile >> "CfgVehicles" >> typeOf(_0ca) >> "picture"));


lbClear GET_CTRL(balca_loader_turret_list_IDC);
_default_magazines = getArray(configFile >> "CfgVehicles" >> _04c >> "magazines");
//hull
_0o = _0ca weaponsTurret [-1];
if ((_0o select 0)!="FakeWeapon") then
{
	GET_CTRL(balca_loader_turret_list_IDC) lbAdd "Hull";
	GET_CTRL(balca_loader_turret_list_IDC) lbSetValue [(lbSize GET_CTRL(balca_loader_turret_list_IDC))-1,-1];
};
if (isClass(configFile >> "CfgVehicles" >> _04c >> "Turrets")) then {
	_0hl = (configFile >> "CfgVehicles" >> _04c >> "Turrets");
	for "_i" from 0 to ((count _0hl)-1) do {
		_turret = _0hl select _i;
		_0o = _0ca weaponsTurret [_i];

		if !(isNil {_0o select 0}) then
		{
			GET_CTRL(balca_loader_turret_list_IDC) lbAdd getText(_turret >> "gunnerName");
			GET_CTRL(balca_loader_turret_list_IDC) lbSetValue [(lbSize GET_CTRL(balca_loader_turret_list_IDC))-1,_i];
			_default_magazines = _default_magazines +  getArray(_turret >> "magazines");
		};
		_subturrets = _turret >> "Turrets";
		for "_j" from 0 to (count _subturrets)-1 do {
			_turret = _subturrets select _j;
			_0o = _0ca weaponsTurret [_i,_j];
			if !(isNil {_0o select 0}) then
			{
				GET_CTRL(balca_loader_turret_list_IDC) lbAdd getText(_turret >> "gunnerName");
				GET_CTRL(balca_loader_turret_list_IDC) lbSetValue [(lbSize GET_CTRL(balca_loader_turret_list_IDC))-1,-2-_i*10-_j];
				_default_magazines = _default_magazines +  getArray(_turret >> "magazines");
			};
		};
	};
}else{};
lbClear GET_CTRL(balca_loader_default_loadout_IDC);
{	
	_display_name = (getText(configFile >> "CfgMagazines" >> _x >> "displayName"));
	if (_display_name=="") then {
		GET_CTRL(balca_loader_default_loadout_IDC) lbAdd str _x;
	} else {
		GET_CTRL(balca_loader_default_loadout_IDC) lbAdd _display_name;
	};
	GET_CTRL(balca_loader_default_loadout_IDC) lbSetData [(lbSize GET_CTRL(balca_loader_default_loadout_IDC))-1,_x];
} forEach _default_magazines;

GET_CTRL(balca_loader_turret_list_IDC) lbSetCurSel 0;

[] call GFNC(fill_weapon_list);