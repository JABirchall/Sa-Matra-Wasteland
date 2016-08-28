/*
	ArmA 3 Wasteland
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	
	
	Special build for Dwarden
	
	ESABQIEXHTFRGOFR
*/
private["_0rv","_0nv","_0uv"];_0rv=_this select 0;_0nv=_0rv getVariable "R3F_LOG_disabled";if(isNil "_0nv")then{_0rv setVariable["R3F_LOG_disabled",false];};_0uv=_0rv getVariable "R3F_LOG_heliporte";if(isNil "_0uv")then{_0rv setVariable["R3F_LOG_heliporte",objNull,false];};_0rv addAction[("<t color=""#dddd00""><img image='i\r3f_lift.paa'/> "+wg43zl+"</t>"),"r3f\R3F_LOG\heliporteur\heliporter.sqf",nil,wgdv8x,true,true,"","wgif8p == _target && wgglzk"];_0rv addAction[("<t color=""#dddd00""><img image='i\r3f_drop.paa'/> "+wg4kad+"</t>"),"r3f\R3F_LOG\heliporteur\larguer.sqf",nil,wgdv8x,true,true,"","wgif8p == _target && wg3khp"];