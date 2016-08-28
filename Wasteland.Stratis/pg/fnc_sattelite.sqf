#include "defs.hpp"
_pos = _this select 0;
_pos = [_pos select 0,_pos select 1,-(_pos select 2)];
disableSerialization;

showCinemaBorder false;
//_0pl = "camera" camCreate [_pos select 0,_pos select 1,200];
_0pl = "camera" createVehicleLocal [_pos select 0,_pos select 1,200];
_0pl cameraeffect ["External", "Top"];

_05a = 0;
_pitch = -89;
_fov = 0.7;
_0pl camSetFov 0.7;
_0pl setVectorDirAndUp [[sin(_05a)*cos(_pitch),cos(_05a)*cos(_pitch),sin(_pitch)],[-sin(_05a)*sin(_pitch), -cos(_05a)*sin(_pitch), -cos(_pitch)]];

//titleText["WASD - move, Arrows - rotate, Num-/Num+ - zoom, V - NV, N - normal view, Q - exit","plain down"];
_keyhandler = (findDisplay 46) displayAddEventHandler ["KeyDown", "_this call c_proving_ground_satcam_keyhandler"];
GVAR(balca_satcam) = [_0pl,_keyhandler,[_pos select 0,_pos select 1,200],[_05a,_pitch,_fov]];
GVAR(balca_satcam_mouseHandlerId) = (findDisplay 46) displayAddEventHandler ["MouseMoving", "_this call c_proving_ground_balca_satcam_MouseMovingHandler"];
GVAR(balca_satcam_MouseMovingHandler) = {
	_0jk = _this select 0;
	_05t = _this select 1;
	_06t = _this select 2;

	_balca_satcam = GVAR(balca_satcam);
	_0pl = _balca_satcam select 0;
	_keyhandler = _balca_satcam select 1;
	_0zl = _balca_satcam select 2;
	_05a = (_balca_satcam select 3) select 0;
	_pitch = (_balca_satcam select 3) select 1;
	_fov = (_balca_satcam select 3) select 2;
	_pitch = (_pitch - _06t) min 89 max -89;
	_05a = (_05a + _05t)%360;
	_0pl setVectorDirAndUp [[sin(_05a)*cos(_pitch),cos(_05a)*cos(_pitch),sin(_pitch)],[-sin(_05a)*sin(_pitch), -cos(_05a)*sin(_pitch), -cos(_pitch)]];
	_0pl camCommit 0.01;
	GVAR(balca_satcam) = [_0pl,_keyhandler,_0zl,[_05a,_pitch,_fov]];
};
