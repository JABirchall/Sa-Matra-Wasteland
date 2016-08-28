#include "defs.hpp"
#define GET_DISPLAY (findDisplay balca_debug_VC_IDD)
#define GET_CTRL(a) (GET_DISPLAY displayCtrl ##a)
#define GET_SELECTED_DATA(a) ([##a] call {_0yk = _this select 0;_selection = (lbSelection GET_CTRL(_0yk) select 0);if (isNil {_selection}) then {_selection = 0};(GET_CTRL(_0yk) lbData _selection)})
#define KINDOF_ARRAY(a,b) [##a,##b] call {_0ca = _this select 0;_09g = _this select 1;_res = false; {if (_0ca isKindOf _x) exitwith { _res = true };} forEach _09g;_res}

_0ta = _this select 0;
_04c = _this select 1;
if(isNil{_04c}) then {_04c = -1;};
switch (_0ta) do {
case 0: {

		_kindOf = ["tank"];
		_filter = [];
		switch (_04c) do {
			case 0: {_kindOf = ["staticWeapon"];};
			case 1: {_kindOf = ["car","Motorcycle"];_filter = ["Truck_F","Wheeled_APC_F"];};
			case 2: {_kindOf = ["Truck_F"];};
			case 3: {_kindOf = ["Wheeled_APC_F","Tracked_APC"];};
			case 4: {_kindOf = ["tank"];_filter = ["Wheeled_APC_F", "Tracked_APC"];};
			case 5: {_kindOf = ["helicopter"];_filter = ["ParachuteBase"];};
			case 6: {_kindOf = ["plane"];_filter = ["ParachuteBase"];};
			case 7: {_kindOf = ["ship"];};
			default {_kindOf = ["tank"];_filter = [];};
		};
		_cfgvehicles = configFile >> "cfgVehicles";
		lbClear GET_CTRL(balca_VC_vehlist_IDC);
		for "_i" from 0 to (count _cfgvehicles)-1 do {
			_0fd = _cfgvehicles select _i;
			if (isClass _0fd) then {
				_04c = configName(_0fd);
				if ((getNumber(_0fd >> "scope")==2)and(getText(_0fd >> "picture")!="")and(KINDOF_ARRAY(_04c,_kindOf))and!(KINDOF_ARRAY(_04c,_filter))) then {
					GET_CTRL(balca_VC_vehlist_IDC) lbAdd (getText(_0fd >> "displayName"));
					GET_CTRL(balca_VC_vehlist_IDC) lbSetData [(lbSize GET_CTRL(balca_VC_vehlist_IDC))-1,_04c];
					GET_CTRL(balca_VC_vehlist_IDC) lbSetPicture [(lbSize GET_CTRL(balca_VC_vehlist_IDC))-1,getText(_0fd >> "picture")];
				};
			};
		};
		lbSort GET_CTRL(balca_VC_vehlist_IDC);
	};
case 1: {
		_04c = GET_SELECTED_DATA(balca_VC_vehlist_IDC);
		GET_CTRL(balca_VC_vehicle_shortcut_IDC) ctrlSetText (getText(configFile >> "CfgVehicles" >> _04c >> "picture"));
		_0fd = (configFile >> "CfgVehicles" >> _04c);
		_0dn = getText(_0fd >> "displayName");
		_armor = getNumber(_0fd >> "armor");
		_maxSpeed = getNumber(_0fd >> "maxSpeed");
		_0o =  getArray(_0fd >> "weapons");
		_0r = getArray(_0fd >> "magazines");
		_0hl= (_0fd >> "Turrets");
		for "_i" from 0 to (count _0hl)-1 do {
			_turret = _0hl select _i;
			_0o = _0o + getArray(_turret >> "weapons");
			_0r = _0r + getArray(_turret >> "magazines");
			_subturrets = _turret >> "Turrets";
			for "_j" from 0 to (count _subturrets)-1 do {
				_turret = _subturrets select _j;
				_0o = _0o + getArray(_turret >> "weapons");
				_0r = _0r + getArray(_turret >> "magazines");
			};
		};
		_lb = parseText "<br/>";
		_0pr = composeText [str configName(_0fd),_lb,
			"DisplayName: ",str _0dn,_lb,
			"Armor: ", str _armor,_lb,
			"MaxSpeed: ", str _maxSpeed,_lb,
			"Weapons: ", str _0o,_lb,
			"Magazines: ", str _0r,_lb];
		GET_CTRL(balca_VC_veh_info_IDC) ctrlSetStructuredText _0pr;
	};
case 2: {
		_old_veh = PG_get(VEH);
		_core = PG_get(CORE);
		_05a = getDir _core;
		_pos = getPos _core;
		_04c = GET_SELECTED_DATA(balca_VC_vehlist_IDC);
		deleteVehicle _old_veh;
		_0ca = createVehicle [_04c, _pos, [], 0, "CAN_COLLIDE"];
		_0ca setDir _05a;
		PG_set(VEH,_0ca);
	};

case 3: {
		_05a = getdir player;
		_pos = getPos player;
		_pos = [(_pos select 0)+20*sin(_05a),(_pos select 1)+20*cos(_05a),0];
		_04c = GET_SELECTED_DATA(balca_VC_vehlist_IDC);
		_old_veh = nearestObjects [_pos, ["AllVehicles"], 5];
		{deleteVehicle _x} forEach _old_veh;
		_0ca = createVehicle [_04c, _pos, [], 0, "CAN_COLLIDE"];
		_0ca setDir _05a;
	};

case 4: {//class to clipboard
	copyToClipboard (""""+GET_SELECTED_DATA(balca_VC_vehlist_IDC)+"""");
	};

case 5: {//detailed info to clipboard
	copyToClipboard ctrlText GET_CTRL(balca_VC_veh_info_IDC);
	};
}
