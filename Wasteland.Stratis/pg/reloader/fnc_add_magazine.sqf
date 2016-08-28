#include "defs.hpp"
_0ca = GET_SELECTED_VEHICLE;
_0ml = GET_SELECTED_DATA(balca_loader_compatible_magazines_IDC);
_cap = [] call GFNC(get_capacity);
_index_turret = GET_SELECTED_TURRET;
if (((_cap select 0)+getNumber(configFile>>"CfgMagazines">>_0ml>>"count") <= _cap select 1)or(BALCA_RELOADER_DEBUG)) then {
	if (((_0ca isKindOf "Plane")or(_0ca isKindOf "Helicopter"))and(_index_turret select 0 < 1)) then {
			_0ca addMagazine _0ml;
			_magazine_not_compatible = true;
			{if (_0ml in getArray(configFile>>"CfgWeapons">>_x>>"magazines")) then
				{_magazine_not_compatible = false;};
			} forEach (weapons _0ca);
			//diag_log ["_magazine_not_compatible",_magazine_not_compatible];
			if (_magazine_not_compatible) then {
				{{	if ((_magazine_not_compatible)&&(_0ml in (getArray(configFile>>"CfgWeapons">>_x>>"magazines")))) then {
						_magazine_not_compatible = false;
						//diag_log format ["weapon %1",_x];
						_0ca addWeapon _x;
						//diag_log format ["weapon added %1",_x];
					};
				} forEach _x;} forEach CHANGABLE_WEAPONS;
			};
	}else{
			_0ca addMagazineTurret [_0ml,GET_SELECTED_TURRET];
	};
};
[] call GFNC(fill_current_magazines_list);