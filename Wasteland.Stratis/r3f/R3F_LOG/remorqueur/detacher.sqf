/*
	ArmA 3 Wasteland
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	
	
	Special build for Dwarden
	
	ESABQIEXHTFRGOFR
*/
if(wgwa58)then{systemChat wgv8c1;}else{wgwa58=true;private["_04v","_0cv"];_0cv=_this select 0;_04v=_0cv getVariable "R3F_LOG_est_transporte_par";if({_04v isKindOf _x}count wgnoue>0)then{_04v setVariable["R3F_LOG_remorque",objNull,true];_0cv setVariable["R3F_LOG_est_transporte_par",objNull,true];_0tt=getPosATL _0cv;if(!local _0cv&&isNull(driver _0cv))then{};detach _0cv;if((getPosATL(_0cv)select 2)<0)then{_pos=getPosATL(_0cv);_pos set[2,0];_0cv setPosATL _pos;_0cv setVectorUp(surfaceNormal _pos);};_0cv setVelocity[0,0,0];if((getPosATL _0cv)distance _0tt>50)then{_0cv setPosATL _0tt;_0cv setVectorUp(surfaceNormal _0tt);};player switchMove "AinvPknlMstpSnonWnonDnon_medic_1";player playMove "AinvPknlMstpSnonWnonDnon_medic_1";sleep 5;if(false)then{if(isNull(_04v getVariable "R3F_LOG_remorque")&&(isNull(_0cv getVariable "R3F_LOG_est_transporte_par"))&&(isNull(_0cv getVariable "R3F_LOG_est_deplace_par")))then{[_0cv]execVM "r3f\R3F_LOG\objet_deplacable\deplacer.sqf";};}else{systemChat wgzafm;};}else{systemChat wguu1c;};wgwa58=false;};