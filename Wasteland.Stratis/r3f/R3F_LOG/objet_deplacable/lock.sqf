/*
	ArmA 3 Wasteland
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	
	
	Special build for Dwarden
	
	ESABQIEXHTFRGOFR
*/
if(wgwa58)exitWith{systemChat wgv8c1;};if(wg6z48)exitWith{hint "You are already doing something";};_0ab=_this select 0;_01v=_this select 3;_02v=getText(configFile>>"CfgVehicles">>typeOf _0ab>>"displayname");if(_02v=="")then{_02v=localize "STR_WL_R3F_GenericObject";};if(typeOf _0ab=="Land_CargoBox_V1_F")then{_02v="Base defense proximity radar"};wgwa58=true;[format[localize(if(_01v)then{"STR_WL_R3F_LockingObject"}else{"STR_WL_R3F_UnlockingObject"}),_02v],format[localize(if(_01v)then{"STR_WL_R3F_ObjectLocked"}else{"STR_WL_R3F_ObjectUnlocked"}),_02v],if(_01v)then{5}else{15},[_0ab,_01v],{(player distance(_this select 0)>50)||(diag_tickTime-1<wg95zb)||isNull(_this select 0)},{wgwa58=false;},{(_this select 0)setVariable["R3F_Locked",(_this select 1),true];if(!(_this select 1)&&typeOf(_this select 0)=="Land_CargoBox_V1_F")then{(_this select 0)setVariable["radar_enabled",false,true];(_this select 0)setVariable["radar_owner",nil,true];(_this select 0)setVariable["radar_side",nil,true];wg1228=objNull;publicVariable "wgcug3";true call wgxi3s;};if!((_this select 0)getVariable["R3F_Side",sideUnknown]in[blufor,opfor,independent])then{(_this select 0)setVariable["R3F_Side",side group player,true];};wgwa58=false;}]spawn wg4o62;