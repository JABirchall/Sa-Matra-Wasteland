_fnc_create_land_target = {
	private ["_0e","_unit_type"];
	_0e = _this select 0;
	_unit_type = _this select 1;
	_0nq = if (count(_this) >2) then {_this select 2}else{0};
	_is_new = false;
	if (_0e == -1) then {_0e = (count PG_get(land_targets));_is_new = true};
	_core = PG_get(core);
	_05a = getDir _core;
	_pos = getPos _core;
	_tdist = PG_get(target_props) select 0;
	_tspeed = PG_get(target_props) select 1;
	_tdir = PG_get(target_props) select 2;
	_grp = createGroup PG_get(opfor);
	_grp copyWaypoints PG_get(target_grp);
	_pos = if (PG_get(target_mode)<2) then {
		[(_pos select 0)+(_tdist+20)*sin(_05a),(_pos select 1)+(_tdist+20)*cos(_05a),0];
	}else{
		waypointPosition ((waypoints _grp) select 0)
	};
	
	
	_0cf = objNull;
	if (_unit_type isKindOf "Man") then {
		_0cf = _grp createUnit [_unit_type,_pos,[],0.1,"NONE"];
		switch PG_get(target_mode) do {
			case 2: {//land AI

				};
			default {
					_0cf setBehaviour "CARELESS"; 
					_0cf disableAI "PATHPLAN";
					_0cf disableAI "MOVE";
					_0cf doWatch _core;
					_0cf stop true;
			};
		};
		_0cf allowFleeing 0; 
		_0cf disableAI "TARGET";
		_0cf disableAI "AUTOTARGET";
//		_0cf disableAI "ANIM";
		_0cf setCombatMode "BLUE";
		switch (_0e%4) do {
			case 0: {_0cf setUnitPos "UP"};
			case 1: {_0cf setUnitPos "MIDDLE"};
			case 2: {_0cf setUnitPos "DOWN"};
			default {_0cf setUnitPos "UP"};
		};
	}else{
		_0cf = createVehicle [_unit_type, _pos, [], 0, "NONE"];
		[_0cf,_grp] call PG_get(fnc_create_crew);
		_0cf setCombatMode "BLUE";
		_0cf engineOn true;
		if !(_0cf isKindOf "Plane") then {_0cf flyInHeight 5;};
	};
	_0cf setDir _tdir;
	{_0cf removeMagazine _x} forEach magazines _0cf;
	group player reveal _0cf;
	//hint on hit
	_0cf addEventHandler["hit","hintSilent format['""%1"" hit, damage:%2',getText(configFile >> 'cfgVehicles' >> typeof (_this select 0) >> 'displayName'),ceil((_this select 2)*100)/100]; [4,_this] call c_proving_ground_fnc_statistics"]; 
	//hint when killed
	_0cf addEventHandler["killed","hintSilent format['""%1"" killed',getText(configFile >> 'cfgVehicles' >> typeof (_this select 0) >> 'displayName')];[5,_this] call c_proving_ground_fnc_statistics"];


	//hint format ["%1",[_0e,_trgname]];

	_target = [_0cf,_unit_type,_grp,_0nq];
	PG_set_arr(LAND_TARGETS,_0e,_target);
	switch PG_get(target_mode) do {
		case 0: {//land static
				if (_is_new) then {
					[] call PG_get(fnc_calc_offsets);
				}else{
					[0,_0e] call PG_get(fnc_move_land_targets);
				};
			};
		case 1: {//land random
				_0cf spawn PG_get(fnc_move_rand_land);
			};
	};
	_0cf
};

_fnc_create_crew = {
	private["_0cf","_07i","_grp","_0ca"];
	_0ca = _this select 0;
	_grp = _this select 1;
	_07i = getArray(configFile >> "cfgVehicles" >> (typeOf _0ca) >> "typicalCargo");
	_target_mode = PG_get(target_mode);

	{
		_0cf = (_grp createUnit [_x,[0,0,0],[],0.1,"NONE"]);
		{_0cf removeMagazine _x} forEach magazines _0cf;
		switch _target_mode do {
			case 2: {//land AI
					_0cf doWatch PG_get(core);
				};
			case 3: {//air AI
				};
			default {
					_0cf disableAI "PATHPLAN";
					_0cf disableAI "MOVE";
					_0cf doWatch PG_get(core);
					_0cf stop true;
			};
		};
		_0cf allowFleeing 0; 
		_0cf disableAI "TARGET";
		_0cf disableAI "AUTOTARGET";
		_0cf setCombatMode "BLUE";
		switch (_forEachIndex) do {
			case 0: {_0cf moveInDriver _0ca};
			case 1: {_0cf moveInGunner _0ca};
			case 2: {_0cf moveInCommander _0ca};
			default {_0cf moveInCargo _0ca};
		};
	} forEach _07i;
};

_fnc_create_air_target = {
	_0e = _this select 0;
	_04c = _this select 1;
	_03e = count PG_get(air_targets);
	if (_0e == -1) then {_0e = _03e;};
	
		
	_core = PG_get(core);
	_tdist = PG_get(target_props) select 0;
	_tspeed = PG_get(target_props) select 1;
	_tdir = PG_get(target_props) select 2;
	_05a = getDir _core;
	_pos = getPos _core;
	_0ca = createVehicle [_04c, [0,0,1000], [], 0, "FLY"];
	_grp = createGroup PG_get(opfor);
	_0ca setDir _05a; 
	_0ca setPos [_pos select 0,_pos select 1,10]; 
	_0ca engineOn true;
	_0ca setVelocity [80*sin(_05a),80*cos(_05a),10];
	[_0ca,_grp] call PG_get(fnc_create_crew);
	_0ca addEventHandler ["IncomingMissile","(_this select 0) fire [""CMFlareLauncher"",""Burst""]"];
	_target = [_0ca,_04c,_grp];
	PG_set_arr(AIR_TARGETS,_0e,_target);
	group player reveal _0ca;
	_grp copyWaypoints PG_get(air_target_grp);
	_0ca flyInHeight 300;

	_0ca addEventHandler["hit","hintSilent format['""%1"" hit\ndamage:%2\ncrew status: %3',getText(configFile >> 'cfgVehicles' >> typeof (_this select 0) >> 'displayName'),ceil((_this select 2)*100)/100,[(_this select 0)] call {_07i = crew (_this select 0);_crew_stat = [];{_crew_stat set [count _crew_stat, damage _x]} forEach _07i;_crew_stat}]; "]; 
	_0ca addEventHandler["killed","hintSilent format['""%1"" killed',getText(configFile >> 'cfgVehicles' >> typeof (_this select 0) >> 'displayName')];"];

	_0ca
};

_fnc_move_land_targets = {
	_04a = _this select 0;
	_move_only = _this select 1;//change position only of selected unit index, -1 - change position of all units
	_core = PG_get(core);
	_tdist = PG_get(target_props) select 0;
	_tspeed = PG_get(target_props) select 1;
	_tdir = PG_get(target_props) select 2;
	_05a = getDir _core;
	_pos = getPos _core;
	_land_targets = if (_move_only>-1) then {[PG_get(land_targets) select _move_only]}else{PG_get(land_targets)};

	{//change unit position
		_target = _x;
		_0cf = _target select 0;
		_side_offset = _04a + (_target select 3);
		_05c = [(_pos select 0)+_side_offset*sin(_05a+90)+_tdist*sin(_05a),(_pos select 1)+_side_offset*cos(_05a+90)+_tdist*cos(_05a),0];
		_0cf setPos _05c;
		_0cf setDir _tdir;
	} forEach _land_targets;;
};

_fnc_calc_offsets = {
	_land_targets = PG_get(land_targets);
	_core = PG_get(CORE);
	_05a = getDir _core;
	_pos = getPos _core;
	_center_offset = 0;
	_prev_size = 0;
	_betweenArray = [];
	{//calculate side offsets
		_0cf = _x select 0;
		_0in = _x select 1;
		_0h = switch true do {
			case (_0in isKindOf "man"): {1};
			case (_0in isKindOf "air"): {12};
			default {3+abs(5*sin(_05a-_tdir))};
		};
		_between = _0h + _prev_size;
		_center_offset = _center_offset + _0h;
		_betweenArray set [count _betweenArray,_between];
		_prev_size = _0h;
	} forEach _land_targets;
	_side_offset = - _center_offset;
	_new_land_targets = [];
	{
		_between = _betweenArray select _forEachIndex;
		_side_offset = _side_offset + _between;
		_new_land_targets set [_forEachIndex,[_x select 0,_x select 1,_x select 2,_side_offset]];
	} forEach _land_targets;
	PG_set(land_targets,_new_land_targets);
	[0,-1] call PG_get(fnc_move_land_targets);
};

_fnc_move_rand_land = {
	_0cf = _this;
	_props = PG_get(target_props);
	_tdist = _props select 0;
	_tdir = _props select 2;
	_core = PG_get(core);
	_05a = getDir _core;
	_pos = getPos _core;
	_rprops = PG_get(target_props_rand);
	_rdist = _rprops select 0;
	_rspeed = _rprops select 1;
	_rdir = _rprops select 2;
	_PG_tdist = _0cf getVariable "PG_tdist";
	switch true do {
		case ((_PG_tdist select 0)==_tdist): {};//do nothing
		default {//it is new unit or _tdist changed
			_cdist = _tdist -_rdist + random(2*_rdist);
			_08d = _tdir -_rdir + random(2*_rdir);
			_side_offset = -20+random(40);
			_05c = [(_pos select 0)+_side_offset*sin(_05a+90)+_cdist*sin(_05a),(_pos select 1)+_side_offset*cos(_05a+90)+_cdist*cos(_05a),0];
			_0cf setPos _05c;
			_0cf setDir _08d;
			if (_rspeed!=0) then {
				_04a = _side_offset;
				_delay = 0.03;
				_shift_inc = (random(_rspeed)*_delay);
				if (random(2)>1) then {_shift_inc = -_shift_inc};
				while {((alive _0cf)&&(PG_get(target_props_rand) select 1) != 0)&&(PG_get(target_mode) == 1)} do {
					sleep _delay;
					_04a = _04a + _shift_inc;
					if (abs(_04a)>20) then {_shift_inc = -_shift_inc};
					_05c = [(_pos select 0)+_04a*sin(_05a+90)+_cdist*sin(_05a),(_pos select 1)+_04a*cos(_05a+90)+_cdist*cos(_05a),0];
					_0cf setPos _05c;
				};
			};
		};
	};
};

PG_set(fnc_create_crew,_fnc_create_crew);
PG_set(fnc_create_land_target,_fnc_create_land_target);
PG_set(fnc_create_air_target,_fnc_create_air_target);
PG_set(fnc_calc_offsets,_fnc_calc_offsets);
PG_set(fnc_move_land_targets,_fnc_move_land_targets);
PG_set(fnc_move_rand_land,_fnc_move_rand_land);

_booster_keyhandler = 
{
	private["_02k","_0gn", "_dikCode", "_04a", "_0vu", "_07k"];
	_0gn = _this select 0;
	_dikCode = _this select 1;
	_04a = _this select 2;
	_0vu = _this select 3;
	_07k = _this select 4;
	_02k = false;
	if (!_04a && !_0vu && !_07k && (_dikCode == 18)&&(vehicle player != player)) then {
			
			_0gn = nil;
			_02k = true;
			_0ca = vehicle player;
			_06k = velocity _0ca;
			_pos = getPos _0ca;
			_05a = getdir _0ca;
			_pitch = acos((vectorUp _0ca) select 2);
			_vel_new = [((_06k select 0) + 10*sin(_05a)),((_06k select 1) + 10*cos(_05a)),((_06k select 2) + 10*sin(_pitch))];
			_0ca setVelocity _vel_new;
		};
	_02k;
};
PG_set(booster_keyhandler,_booster_keyhandler);

pg_inheritsfrom = {
	if(_this select 0 == _this select 1) exitWith {true};
	_0i = false;
	_0j = (if(isNil{_this select 2})then{"CfgWeapons"}else{_this select 2});
	_0k = configFile >> _0j >> (_this select 0);
	for "_i" from 0 to 4 do {
		_0k = inheritsFrom(_0k);
		if(configName(_0k) == _this select 1) exitWith {
			_0i = true;
		};
	};
	_0i
};

_fnc_add_weapon = {
	_0dg = _this select 0;
	_weaponCfg = (configFile >> "cfgWeapons" >> _0dg);
	_0in = getNumber(_weaponCfg >> "type");
	if (_0in in [1,2,4,5]) then {
		{_cWepType = [getNumber(configFile >> "cfgWeapons" >> _x >> "type")];
		if (_cWepType select 0 in [1,5]) then {_cWepType = [1,5];};
		if (_0in in _cWepType) then {
			player removeWeapon _x;
			_current_magazines = magazines player;
			_compatible_magazines = getArray(configFile >> "cfgWeapons" >> _x >> "magazines");
			{if (_x in _compatible_magazines) then {
				player removeMagazine _x;
			};} forEach _current_magazines;
		};} forEach (weapons player);
	};
	_0r = [];
	{
		_0r = _0r + getArray( (if ( _x == "this" ) then { _weaponCfg } else { _weaponCfg >> _x }) >> "magazines")
	} forEach getArray(_weaponCfg >> "muzzles");
	if (count(_0r) > 0) then {
		player addMagazine (_0r select 0);
	};

	switch(true) do {
		case ([_0dg, "Uniform_Base"] call pg_inheritsfrom): {
			player addUniform _0dg;
		};
		case ([_0dg, "Vest_NoCamo_Base"] call pg_inheritsfrom || [_0dg, "Vest_Camo_Base"] call pg_inheritsfrom): {
			player addVest _0dg;
		};
		case ([_0dg, "H_HelmetB"] call pg_inheritsfrom): {
			player addHeadgear _0dg;
		};
		case ([_0dg, "ItemCore"] call pg_inheritsfrom): {
			player addItem _0dg;
		};
		default {
			player addWeapon _0dg;
			player selectWeapon _0dg;
			//remove uncompatible magazines
			_compatible_magazines = [];
			{
				_compatible_magazines = _compatible_magazines + getArray(configFile >> "cfgWeapons" >> _x >> "magazines");
			} forEach (weapons player);
			{if !(_x in _compatible_magazines) then {
				player removeMagazine _x;
			};} forEach (magazines player);
			PG_set(mags,magazines player);
			PG_set(weapons,weapons player);
		};
	};
};
PG_set(fnc_add_weapon,_fnc_add_weapon);