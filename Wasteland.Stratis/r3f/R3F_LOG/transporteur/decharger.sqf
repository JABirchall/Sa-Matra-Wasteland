/*
	ArmA 3 Wasteland
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	
	
	Special build for Dwarden
	
	ESABQIEXHTFRGOFR
*/
if(wgwa58)then{systemChat wgv8c1;}else{wgwa58=true;
#include "dlg_constantes.hpp"
private["_0gw","_0hw","_0lw","_0mw","_i"];_0gw=uiNamespace getVariable "R3F_LOG_dlg_CV_transporteur";_0hw=_0gw getVariable "R3F_LOG_objets_charges";if(isNil{_0hw})then{_0hw=[];};_0lw=lbData[wgjxz2,lbCurSel wgjxz2];closeDialog 0;if!(_0gw call wgbqap)exitWith{_0ho=(_0gw call wgdtln);if(_0ho call wgr44t)then{hint format["This vehicle is locked by %1 and you cannot take objects out of it",name _0ho];}else{hint "This vehicle is locked and you cannot take objects out of it";};wgwa58=false;};_0mw=objNull;for[{_i=0},{_i<count _0hw},{_i=_i+1}]do{if(typeOf(_0hw select _i)==_0lw)exitWith{_0mw=_0hw select _i;};};if!(isNull _0mw)then{_0hw=_0hw-[_0mw];if(count(_0hw)==0)then{_0gw setVariable["R3F_LOG_objets_charges",nil,true];}else{_0gw setVariable["R3F_LOG_objets_charges",_0hw,true];};detach _0mw;_0mw setVariable["R3F_LOG_object_in_vehicle",objNull,true];if({_0mw isKindOf _x}count wgnqhn>0)then{[_0mw]execVM "r3f\R3F_LOG\objet_deplacable\deplacer.sqf";}else{private["_0nw"];_0nw=(((boundingBox _0mw select 1 select 1)max(-(boundingBox _0mw select 0 select 1)))max((boundingBox _0mw select 1 select 0)max(-(boundingBox _0mw select 0 select 0))));systemChat wgzm34;sleep 2;_0mw setPos[(getPos _0gw select 0)-((_0nw+5+(random 10)-(boundingBox _0gw select 0 select 1))*sin(getDir _0gw-90+random 180)),(getPos _0gw select 1)-((_0nw+5+(random 10)-(boundingBox _0gw select 0 select 1))*cos(getDir _0gw-90+random 180)),0];_0mw setVelocity[0,0,0];systemChat wgseeo;};}else{systemChat wgyi8w;};wgwa58=false;};