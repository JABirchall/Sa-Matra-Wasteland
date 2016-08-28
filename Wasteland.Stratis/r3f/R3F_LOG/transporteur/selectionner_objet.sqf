/*
	ArmA 3 Wasteland
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	
	
	Special build for Dwarden
	
	ESABQIEXHTFRGOFR
*/
if(wgwa58)then{systemChat wgv8c1;}else{wgwa58=true;_0cv=_this select 0;if!(_0cv call wgbqap)exitWith{_0ho=(_0cv call wgdtln);if(_0ho call wgr44t)then{hint format["This object is locked by %1 and cannot be taken",name _0ho];}else{hint "This object is locked and cannot be taken";};wgwa58=false;};wgm1lv=_this select 0;systemChat format[wgaswp,getText(configFile>>"CfgVehicles">>(typeOf wgm1lv)>>"displayName")];wgwa58=false;};