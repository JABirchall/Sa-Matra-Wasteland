#include "defs.hpp"
//diag_log "get_current_magazines";
_0ca = GET_SELECTED_VEHICLE;
_current_magazines = [];
_index_turret = GET_SELECTED_TURRET;
if (((_0ca isKindOf "Plane")or(_0ca isKindOf "Helicopter"))and(_index_turret select 0 < 1)and(2 > lbSize GET_CTRL(balca_loader_turret_list_IDC))) then {
	_current_magazines = magazines _0ca;
	//_current_magazines = _0ca magazinesTurret _index_turret;
}else{
	if ((_index_turret select 0 == -1)and(_0ca isKindOf "Car")) then {
		_current_magazines = [];
	}else{
		_current_magazines = _0ca magazinesTurret _index_turret;
	};
};
//diag_log "get_current_magazines end";
_current_magazines