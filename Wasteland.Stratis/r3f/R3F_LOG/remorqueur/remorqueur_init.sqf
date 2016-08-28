/*
	ArmA 3 Wasteland
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	
	
	Special build for Dwarden
	
	ESABQIEXHTFRGOFR
*/
private["_04v","_0nv","_0tv"];_04v=_this select 0;_0nv=_04v getVariable "R3F_LOG_disabled";if(isNil "_0nv")then{_04v setVariable["R3F_LOG_disabled",false];};_0tv=_04v getVariable "R3F_LOG_remorque";if(isNil "_0tv")then{_04v setVariable["R3F_LOG_remorque",objNull,false];};_04v addAction[("<img image='i\r3f_confirm.paa'/> <t color=""#eeeeee"">"+wgwzmg+"</t>"),"r3f\R3F_LOG\remorqueur\remorquer_selection.sqf",nil,wgdv8x,true,true,"","wgif8p == _target && wgz5fw"];