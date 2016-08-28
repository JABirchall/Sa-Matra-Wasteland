#include "defs.hpp"
//diag_log "restore_loadout";
_0ca = GET_SELECTED_VEHICLE;
_04c = GET_SELECTED_DATA(balca_loader_vehicle_list_IDC);

//hull
_current_magazines = [];
_default_magazines_hull = getArray(configFile >> "CfgVehicles" >> _04c >> "magazines");
if ((_0ca isKindOf "Plane")or(_0ca isKindOf "Helicopter")or(_0ca isKindOf "Car")) then {
	_current_magazines = magazines _0ca;
	{_0ca removeMagazine _x;} forEach _current_magazines;
	{_0ca addMagazine _x;} forEach _default_magazines_hull;
}else{
	_current_magazines = _0ca magazinesTurret [-1];
	{_0ca removeMagazineTurret [_x,-1];} forEach _current_magazines;
	{_0ca addMagazineTurret [_x,-1];} forEach _default_magazines_hull;
};
//diag_log "restore_loadout_1";
//turrets
_0hl= configFile >> "CfgVehicles" >> _04c >> "Turrets";
for "_i" from 0 to (count _0hl)-1 do {
	_turret = _0hl select _i;
	_0o = _0ca weaponsTurret [_i];


	if !(isNil {_0o select 0}) then
	{
		_current_magazines = _0ca magazinesTurret [_i];
		_default_magazines = getArray(_turret >> "magazines");
		{_0ca removeMagazineTurret [_x,[_i]];} forEach _current_magazines;
		{_0ca addMagazineTurret [_x,[_i]];} forEach _default_magazines;
	};
	_subturrets = _turret >> "Turrets";
	for "_j" from 0 to (count _0hl)-1 do {
		_turret = _subturrets select _j;
		_0o = _0ca weaponsTurret [_i,_j];
		if !(isNil {_0o select 0}) then
		{
			_current_magazines = _0ca magazinesTurret [_i,_j];
			_default_magazines = getArray(_turret >> "magazines");
			{_0ca removeMagazineTurret [_x,[_i,_j]];} forEach _current_magazines;
			{_0ca addMagazineTurret [_x,[_i,_j]];} forEach _default_magazines;
		};
	};
};

[] call GFNC(fill_current_magazines_list);
//diag_log "restore_loadout_end";