/*
	ArmA 3 Wasteland
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	
	
	Special build for Dwarden
	
	ESABQIEXHTFRGOFR
*/
if(wgwa58)then{systemChat wgv8c1;}else{wgwa58=true;private["_0rv","_0cv"];_0rv=_this select 0;_0cv=_0rv getVariable "R3F_LOG_heliporte";_0rv setVariable["R3F_LOG_heliporte",objNull,true];_0cv setVariable["R3F_LOG_est_transporte_par",objNull,true];detach _0cv;if(getPosATL _0cv select 2<0)then{_0cv setPosATL[getPosATL _0cv select 0,getPosATL _0cv select 1,0];}else{_0cv setPosWorld getPosWorld _0cv;};systemChat format[wgqnpy,getText(configFile>>"CfgVehicles">>(typeOf _0cv)>>"displayName")];wgwa58=false;};