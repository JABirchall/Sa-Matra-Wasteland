#include "defs.hpp"
private ["_0qk","_keyCode","_04a","_0bs","_07k"];
private["_02k","_0gn", "_dikCode", "_04a", "_0vu", "_07k"];
_0gn = _this select 0;
_dikCode = _this select 1;
_04a = _this select 2;
_0vu = _this select 3;
_07k = _this select 4;
_02k = false;


_balca_satcam = GVAR(balca_satcam);
_0pl = _balca_satcam select 0;
_keyhandler = _balca_satcam select 1;
_0zl = _balca_satcam select 2;
_05a = (_balca_satcam select 3) select 0;
_pitch = (_balca_satcam select 3) select 1;
_fov = (_balca_satcam select 3) select 2;

_committime = 0.1;
_movedistance = (switch(true) do {
	case (_04a): {0.1};
	case (_0vu): {_0zl select 2};
	default {(_0zl select 2)/4};
});

switch (_dikCode) do {
	case 17:{	//W
		_02l = [(_0zl select 0) + sin(_05a)*_movedistance,(_0zl select 1) + cos(_05a)*_movedistance,_0zl select 2];
		_0pl camSetPos _02l;
		_0pl camCommit _committime;
		GVAR(balca_satcam) = [_0pl,_keyhandler,_02l,[_05a,_pitch,_fov]];
		};
	case 31:{	//S
		_02l = [(_0zl select 0) - sin(_05a)*_movedistance,(_0zl select 1) - cos(_05a)*_movedistance,_0zl select 2];
		_0pl camSetPos _02l;
		_0pl camCommit _committime;
		GVAR(balca_satcam) = [_0pl,_keyhandler,_02l,[_05a,_pitch,_fov]];
		};
	case 30:{	//A
		_02l = [(_0zl select 0) + sin(_05a-90)*_movedistance,(_0zl select 1) + cos(_05a-90)*_movedistance,_0zl select 2];
		_0pl camSetPos _02l;
		_0pl camCommit _committime;
		GVAR(balca_satcam) = [_0pl,_keyhandler,_02l,[_05a,_pitch,_fov]];
		};
	case 32:{	//D
		_02l = [(_0zl select 0) + sin(_05a+90)*_movedistance,(_0zl select 1) + cos(_05a+90)*_movedistance,_0zl select 2];
		_0pl camSetPos _02l;
		_0pl camCommit _committime;
		GVAR(balca_satcam) = [_0pl,_keyhandler,_02l,[_05a,_pitch,_fov]];
		};
/*	case 200:{	//up
		_pitch = (_pitch + 1) min 89;
		_0pl setVectorDirAndUp [[sin(_05a)*cos(_pitch),cos(_05a)*cos(_pitch),sin(_pitch)],[-sin(_05a)*sin(_pitch), -cos(_05a)*sin(_pitch), -cos(_pitch)]];
		_0pl camCommit _committime;
		GVAR(balca_satcam) = [_0pl,_keyhandler,_0zl,[_05a,_pitch,_fov]];
		};
	case 208:{	//down
		_pitch = (_pitch - 1) max -89;
		_0pl setVectorDirAndUp [[sin(_05a)*cos(_pitch),cos(_05a)*cos(_pitch),sin(_pitch)],[-sin(_05a)*sin(_pitch), -cos(_05a)*sin(_pitch), -cos(_pitch)]];
		_0pl camCommit _committime;
		GVAR(balca_satcam) = [_0pl,_keyhandler,_0zl,[_05a,_pitch,_fov]];
		};
	case 203:{	//left
		_05a = (_05a - 1);
		_0pl setVectorDirAndUp [[sin(_05a)*cos(_pitch),cos(_05a)*cos(_pitch),sin(_pitch)],[-sin(_05a)*sin(_pitch), -cos(_05a)*sin(_pitch), -cos(_pitch)]];
		_0pl camCommit _committime;
		GVAR(balca_satcam) = [_0pl,_keyhandler,_0zl,[_05a,_pitch,_fov]];
		};
	case 205:{	//right
		_05a = (_05a + 1);
		_0pl setVectorDirAndUp [[sin(_05a)*cos(_pitch),cos(_05a)*cos(_pitch),sin(_pitch)],[-sin(_05a)*sin(_pitch), -cos(_05a)*sin(_pitch), -cos(_pitch)]];
		_0pl camCommit _committime;
		GVAR(balca_satcam) = [_0pl,_keyhandler,_0zl,[_05a,_pitch,_fov]];
		};*/
	case 16:{	//Q
		_0cw = (if(_04a) then {((_0zl select 2) + 0.1) min 2000} else {(((_0zl select 2)*1.1) min 2000)});
		_02l = [(_0zl select 0),(_0zl select 1),_0cw];
		_0pl camSetPos _02l;
		_0pl camCommit _committime;
		GVAR(balca_satcam) = [_0pl,_keyhandler,_02l,[_05a,_pitch,_fov]];
		};
	case 44:{	//Z
		_0cw = (if(_04a) then {((_0zl select 2) - 0.1) max 1} else {(((_0zl select 2)/1.1) max 1)});
		_02l = [(_0zl select 0),(_0zl select 1),_0cw];
		_0pl camSetPos _02l;
		_0pl camCommit _committime;
		GVAR(balca_satcam) = [_0pl,_keyhandler,_02l,[_05a,_pitch,_fov]];
		};
/*	case 78:{	//Num +
		_fov = _fov*1.1;
		_0pl camSetFov _fov;
		_0pl camCommit _committime;
		GVAR(balca_satcam) = [_0pl,_keyhandler,_0zl,[_05a,_pitch,_fov]];
		};
	case 74:{	//Num -
		_fov = _fov/1.1;
		_0pl camSetFov _fov;
		_0pl camCommit _committime;
		GVAR(balca_satcam) = [_0pl,_keyhandler,_0zl,[_05a,_pitch,_fov]];
		};*/
	case 20:{	//T white is hot
		ppEffectDestroy ppColor;
		ppEffectDestroy ppInversion;
		ppEffectDestroy ppGrain;

		true setCamUseTi 0;
		camUseNVG false;
	};
	case 49:{	//N normal view
		ppEffectDestroy ppColor;
		ppEffectDestroy ppInversion;
		ppEffectDestroy ppGrain;

		false setCamUseTi 0;
		false setCamUseTi 1;
		camUseNVG false;

		ppGrain = ppEffectCreate ["filmGrain", 2005];
		ppGrain ppEffectEnable true;
		ppGrain ppEffectAdjust [0.02, 1, 1, 0, 1];
		ppGrain ppEffectCommit 0;
	};
	case 19:{	//R black is hot
		ppEffectDestroy ppColor;
		ppEffectDestroy ppInversion;
		ppEffectDestroy ppGrain;

		true setCamUseTi 1;
		camUseNVG false;
	};
	case 47:{	//V night vision
		ppEffectDestroy ppColor;
		ppEffectDestroy ppInversion;
		ppEffectDestroy ppGrain;

		false setCamUseTi 0;
		false setCamUseTi 1;
		camUseNVG true;
	};
	case 1:{	//Esc
		ppEffectDestroy ppColor;
		ppEffectDestroy ppInversion;
		ppEffectDestroy ppGrain;

		false setCamUseTi 0;
		false setCamUseTi 1;
		camUseNVG false;
		(findDisplay 46) displayRemoveEventHandler ["KeyDown",_keyhandler];
		(findDisplay 46) displayRemoveEventHandler ["MouseMoving",GVAR(balca_satcam_mouseHandlerId)];
		GVAR(balca_satcam) = nil;
		_0pl cameraEffect ["terminate","back"];
		camDestroy _0pl;
	};
	default {
		//titleText["WASD - move, Q/Z - altitude, V - NV, N - normal view","plain down"];
	};
};//end switch
