#include "defs.hpp"

_0ca = GET_SELECTED_VEHICLE;
_0ml = GET_SELECTED_DATA(balca_loader_current_magazines_IDC);
_index_turret = GET_SELECTED_TURRET;
if (((_0ca isKindOf "Plane")or(_0ca isKindOf "Helicopter"))and(_index_turret select 0 < 1)) then {
	_0ca removeMagazine _0ml
}else{
	_0ca removeMagazineTurret [_0ml,_index_turret];
};
[] call GFNC(fill_current_magazines_list);