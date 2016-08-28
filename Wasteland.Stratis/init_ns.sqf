/*
	ArmA 3 Wasteland
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	
	
	Special build for Dwarden
	
	ESABQIEXHTFRGOFR
*/
wgfo49=((toArray(profileName)select 0)==35);enableSaving[false,false];wgstzz="v24";wgr5f5=(if(isNil{wgiztd})then{0}else{serverTime});wgo5td=call{_0na=toArray str missionConfigFile;_0na resize(count _0na-15);toString _0na};true call compile preprocessFileLineNumbers format["worlds\w_%1.sqf",worldName];true call compile preprocessFileLineNumbers "pg\init.sqf";true call compile preprocessFileLineNumbers "r3f\init.sqf";true call compile preprocessFileLineNumbers "shared\sh_init.sqf";if(isServer)then{true call compile preprocessFileLineNumbers "server\s_init.sqf";};if(!isDedicated)then{if(!hasInterface)then{true call compile preprocessFileLineNumbers "headless\h_init.sqf";}else{true call compile preprocessFileLineNumbers "client\c_init.sqf";};};