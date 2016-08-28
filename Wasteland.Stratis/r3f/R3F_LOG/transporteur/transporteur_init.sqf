/*
	ArmA 3 Wasteland
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	
	
	Special build for Dwarden
	
	ESABQIEXHTFRGOFR
*/
private["_0gw","_0nv","_0hw"];_0gw=_this select 0;_0nv=_0gw getVariable "R3F_LOG_disabled";if(isNil "_0nv")then{_0gw setVariable["R3F_LOG_disabled",false];};_0gw addAction[("<img image='i\r3f_confirm.paa'/> <t color=""#eeeeee"">"+wg569f+"</t>"),"r3f\R3F_LOG\transporteur\charger_deplace.sqf",nil,wgdv8x,true,true,"","wgif8p == _target && wgkaev"];_0gw addAction[("<img image='i\r3f_confirm.paa'/> <t color=""#eeeeee"">"+wglezy+"</t>"),"r3f\R3F_LOG\transporteur\charger_selection.sqf",nil,wgdv8x,true,true,"","wgif8p == _target && wgya6o"];_0gw addAction[("<img image='i\r3f_contents.paa'/> <t color=""#dddd00"">"+wg8w65+"</t>"),"r3f\R3F_LOG\transporteur\voir_contenu_vehicule.sqf",nil,wgoif1,false,true,"","wgif8p == _target && (wgjrlz || wgubws)"];