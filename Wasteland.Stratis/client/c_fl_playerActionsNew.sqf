/*
	ArmA 3 Wasteland
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	
	
	Special build for Dwarden
	
	ESABQIEXHTFRGOFR
*/
#include "hpp\settings.hpp"
#define wgf572	-1
#define wgvero	0
#define wgg469	1
#define wg2bb9	2
#define wgxuiv	3
#define wgrhno		-1
#define wguzq9		0
#define wgalnj		1
#define wg3rpa	2
#define wgpcyw		3
#define wgpvaa		4
#define wgl71k		5
#define wg5wwr		6
#define wgbzeu		7
#define wgtoup		8
#define wg5blz		9
#define wgix1g			10
#define wgpwg4		11
#define wg62lu		12
#define wgcbon		13
#define wgabsz		14
#define wg49k6		[wguzq9, wgalnj, wg3rpa, wgpcyw, wgpvaa, wgl71k, wg5wwr, wgbzeu, wgtoup, wg5blz, wgix1g, wgpwg4, wg62lu, wgcbon, wgabsz]
#define wgy8tb		[wguzq9, wgalnj, wg3rpa, wgpcyw]
#define wggf7b		[wgix1g, wgpwg4, wg62lu, wgcbon, wgabsz]
#define wg7z29(ACTION)	wg4no9(wge41a select ACTION)
#define wg5ei9		10
#define wgaqf2		-6
#define wg6kef		-15
#define wgtemg		-20
#define wguz8x		0
#define wgoxsi		1
#define wgtukp		[wguz8x, wgoxsi]
#define wg29mb	0.5
#define wgscry	0.6
#define wg5ttm	3
#define wgjy9m	2
#define wgjiv2		2
#define wg8oaz		20
#define wgjtjg		5
#define wgg4rk		10
#define wgkmux		10
#define wgnw8b		10
#ifdef DEBUG
#define wg8oaz		2
#define wgjtjg		2
#define wgg4rk		2
#define wgkmux		2
#define wgnw8b		2
#endif
#define wgkekg
wg1zmx={wgueem=wgvero;wgxumc=objNull;wgx25p=[];wge41a=[];wgryif=wgrhno;wgxgl2=nil;{wgx25p set[_x,-1];wge41a set[_x,false];}forEach wg49k6;wg8jpn=[];wg9wgo=[];wgkjv1=[];wgaswi=[];wg7ixz=[];{wg8jpn set[_x,createLocation["Name",[0,0,0],1,1]];wg9wgo set[_x,0];wgkjv1 set[_x,0];}forEach wgtukp;wgaswi set[wguz8x,wg5ttm];wg7ixz set[wguz8x,wgjy9m];wgaswi set[wgoxsi,wg5ttm];wg7ixz set[wgoxsi,wgjy9m];wgjvc5=objNull;wgbeva=0;wg1a4h=objNull;wgya1u=0;};wgigc3={
#ifdef DEBUG
#endif
if(wgryif>wgrhno)then{switch(wgryif)do{case wguzq9:{if(wgxgl2 getVariable["owner_state",wgbbxw]>wgbbxw)then{wgxgl2 setVariable["owner_state",wghw4q,true];}else{if!(wgxgl2 getVariable["object_locked",false])then{_0fd=wgxgl2;_name=getText(configFile>>"CfgVehicles">>typeOf(_0fd)>>"displayname");[format[localize "STR_WL_R3F_LockingObject",_name],format[localize "STR_WL_R3F_ObjectLocked",_name],wgjtjg,[_0fd,getPosATL _0fd],{(getPosATL(_this select 0)distance(_this select 1)>1)||(_this select 0)getVariable["object_locked",false]||vehicle player!=player},{},{_09b=(_this select 0);_09b setVariable["object_locked",true,true];if(_09b getVariable["owner_side",sideUnknown]!=side group player)then{_09b setVariable["owner_side",side group player,true];};if(_09b getVariable["owner_uid",""]!=wghrav)then{_09b setVariable["owner_uid",wghrav,true];};}]spawn wg4o62;};};};case wgalnj:{if(wgxgl2 getVariable["owner_state",wgbbxw]>wgbbxw)then{wgxgl2 setVariable["owner_state",wg9qow,true];}else{if(wgxgl2 call wgxau2)then{_0fd=wgxgl2;_name=getText(configFile>>"CfgVehicles">>typeOf(_0fd)>>"displayname");[format[localize "STR_WL_R3F_UnlockingObject",_name],format[localize "STR_WL_R3F_ObjectUnlocked",_name],wgjtjg,[_0fd,getPosATL _0fd],{(getPosATL(_this select 0)distance(_this select 1)>1)||!((_this select 0)getVariable["object_locked",false])||vehicle player!=player},{},{(_this select 0)setVariable["object_locked",false,true];}]spawn wg4o62;}else{_03h=wgxgl2 getVariable["owner_side",sideUnknown];if(_03h==side group player&&_03h!=independent)then{_04p="";{_04p=_04p+format["%1%2",if(_forEachIndex>0)then{", "}else{""},name _x];}forEach(wgxgl2 call wgsmfy);hint parseText format["<t size='2' color='#ff0000'>%1</t><br/><br/>%2",localize "STR_WL_Gen_Notice",format[localize "STR_WL_R3F_CannotUnlockFriendlyNearby",_04p]];}else{hint parseText format["<t size='2' color='#ff0000'>%1</t><br/><br/>%2",localize "STR_WL_Gen_Warning",format[localize "STR_WL_R3F_CannotUnlockEnemyNearby",localize format["STR_WL_Gen_Team%1_2",_03h]]];};};};};case wg3rpa:{_0fd=wgxgl2;_name=getText(configFile>>"CfgVehicles">>typeOf(_0fd)>>"displayname");[format[localize "STR_WL_R3F_LockPickingVehicle",_name],format[localize "STR_WL_R3F_ObjectUnlocked",_name],wg8oaz,[_0fd,getPosATL _0fd],{(getPosATL(_this select 0)distance(_this select 1)>1)||(_this select 0)getVariable["owner_state",wgbbxw]==wgqybg||vehicle player!=player},{},{(_this select 0)setVariable["owner_state",wgqybg,true];}]spawn wg4o62;};case wgpcyw:{_0fd=wgxgl2;_name=getText(configFile>>"CfgVehicles">>typeOf(_0fd)>>"displayname");[format[localize "STR_WL_R3F_FixingLockVehicle",_name],format[localize "STR_WL_R3F_VehicleLockFixed",_name],wg8oaz,[_0fd,getPosATL _0fd],{(getPosATL(_this select 0)distance(_this select 1)>1)||(_this select 0)getVariable["owner_state",wgbbxw]==wg9qow||vehicle player!=player},{},{(_this select 0)setVariable["owner_state",wg9qow,true];}]spawn wg4o62;};case wgix1g:{if(switch(true)do{case(damage wgxgl2>=1):{hint parseText format["<t size='2' color='#ff0000'>%1</t><br/><br/>%2",localize "STR_WL_Gen_Notice",localize "STR_WL_Acts_RadarDestroyed"];false};case(wgxgl2 call wgbu3w):{hint parseText format["<t size='2' color='#ff0000'>%1</t><br/><br/>%2",localize "STR_WL_Gen_Notice",localize "STR_WL_Acts_ActiveRadarNearby"];false};case(wgxgl2 getVariable["object_locked",false]):{false};default{true};})then{_0fd=wgxgl2;_name=_0fd call wg9ci4;[format[localize "STR_WL_Acts_EnablingRadar",_name],format[localize "STR_WL_Acts_RadarEnabled",_name],wgkmux,[_0fd,getPosATL _0fd],{(getPosATL(_this select 0)distance(_this select 1)>1)||(_this select 0)getVariable["object_locked",false]||vehicle player!=player},{},{_09b=(_this select 0);if(_09b call wghsjy&&!((_this select 0)getVariable["object_locked",false]))then{_09b setVariable["object_locked",true,true];_09b setVariable["radar_enabled_at",serverTime,true];if(_09b getVariable["owner_side",sideUnknown]!=side group player)then{_09b setVariable["owner_side",side group player,true];};if(_09b getVariable["owner_uid",""]!=wghrav)then{_09b setVariable["owner_uid",wghrav,true];};};}]spawn wg4o62;};};case wgpwg4:{if(switch(true)do{case!(wgxgl2 getVariable["object_locked",false]):{false};default{true};})then{_0fd=wgxgl2;_name=_0fd call wg9ci4;if(_0fd call wgicpw)then{[format[localize "STR_WL_Acts_DisablingRadar",_name],format[localize "STR_WL_Acts_RadarDisabled",_name],wgnw8b,[_0fd,getPosATL _0fd],{(getPosATL(_this select 0)distance(_this select 1)>1)||!((_this select 0)getVariable["object_locked",false])||vehicle player!=player},{},{(_this select 0)setVariable["object_locked",false,true];}]spawn wg4o62;}else{_04p="";{_04p=_04p+format["%1%2",if(_forEachIndex>0)then{", "}else{""},name _x];}forEach(_0fd call wgsmfy);hint parseText format["<t size='2' color='#ff0000'>%1</t><br/><br/>%2",localize "STR_WL_Gen_Notice",format[localize "STR_WL_Acts_CannotDisableRadarFriendlyNearby",_name,_04p]];};};};};wge41a set[wgryif,false];wgbeva=0;wgryif=wgrhno;};switch(wgueem)do{case wgf572:{};case wgvero:{if(player==player)then{player addEventHandler["Killed",{wgueem=wgg469;}];player addEventHandler["Respawn",{wgueem=wg2bb9;}];
#ifdef DEBUG
player allowDamage false;setTimeMultiplier 0.1;settings_respawnTime=2;
#endif
wgueem=wg2bb9;};};case wgg469:{wgjvc5=objNull;wg1a4h=objNull;wgxumc call wgjavw;};case wg2bb9:{wgxumc=player;wgxumc call wgpyic;wgueem=wgxuiv;};case wgxuiv:{
#ifdef DEBUG
wgwsvk=100;wgsna4=100;
#endif
_0fd=cursorTarget;if(vehicle player!=player)then{_0fd=vehicle player;};if(diag_tickTime>(wgbeva+wg29mb)||wgjvc5!=_0fd)then{wgbeva=diag_tickTime;{wge41a set[_x,false]}forEach wgy8tb;if(!isNull(_0fd))then{if(wgjvc5!=_0fd)then{[wguz8x,_0fd]call wgd2q7;_name=getText(configFile>>"CfgVehicles">>(typeOf _0fd)>>"displayname");if(_0fd getVariable["owner_state",wgbbxw]>wgbbxw)then{[wguzq9,format["<img image='i\r3f_lock.paa'/> %1",format[localize "STR_WL_R3F_Action_LockVehicle",_name]]]call wgimg1;[wgalnj,format["<img image='i\r3f_unlock.paa'/> %1",format[localize "STR_WL_R3F_Action_UnlockVehicle",_name]]]call wgimg1;[wg3rpa,format["<img image='i\r3f_unlock.paa'/> %1",format[localize "STR_WL_R3F_Action_LockpickVehicle",_name]]]call wgimg1;[wgpcyw,format["<img image='i\r3f_unlock.paa'/> %1",format[localize "STR_WL_R3F_Action_FixlockVehicle",_name]]]call wgimg1;}else{[wguzq9,format["<img image='i\r3f_unlock.paa'/> %1",format[localize "STR_WL_R3F_Action_LockObject",_name]]]call wgimg1;[wgalnj,format["<img image='i\r3f_unlock.paa'/> %1",format[localize "STR_WL_R3F_Action_UnlockObject",_name]]]call wgimg1;};wgjvc5=_0fd;};wguz8x call wgijq8;if([wguz8x,getPosWorld(player)]call wgbts7)then{_05p=_0fd getVariable["owner_state",wgbbxw];if(_05p>wgbbxw)then{_03h=_0fd getVariable["owner_side",sideUnknown];_0ho=(_0fd call wgdtln);if(_05p==wgqybg)then{if(group player==group _0ho)then{if(vehicle player==player)then{wge41a set[wgpcyw,true&&!wg6z48];};};}else{if((_03h!=independent&&_03h!=side group player)||(_03h==independent&&group player!=group _0ho))then{if(vehicle player==player)then{wge41a set[wg3rpa,true];};}else{if(_0fd in wgeb9r||_0fd in wg3vh5)then{wge41a set[wguzq9,(_05p==wg9qow)&&!wg6z48];wge41a set[wgalnj,(_05p==wghw4q)&&!wg6z48];};};};}else{if!(_0fd in wgcug3)then{if(_0fd call wghsjy)then{wge41a set[wguzq9,!(_0fd getVariable["object_locked",false])&&!wg6z48];wge41a set[wgalnj,(_0fd getVariable["object_locked",false])&&!wg6z48];};};};};};};
#define wgqt2l		"Land_DieselGroundPowerUnit_01_F"
#define wge2es	10
if(vehicle player==player)then{if(diag_tickTime>(wgya1u+wgscry))then{wgya1u=diag_tickTime;{wge41a set[_x,false]}forEach wggf7b;_0nh=nearestObjects[player,[wgqt2l],wge2es]select 0;if(!isNil{_0nh})then{if(!isNull(_0nh))then{if(_0nh in wgcug3)then{if(wg1a4h!=_0nh)then{[wgoxsi,_0nh]call wgd2q7;_name=_0nh call wg9ci4;[wgix1g,format["<img image='i\a3_radar_new.paa'/> %1",format[localize "STR_WL_Acts_RadarEnable",_name]]]call wgimg1;[wgpwg4,format["<img image='i\a3_radar_new.paa'/> %1",format[localize "STR_WL_Acts_RadarDisable",_name]]]call wgimg1;wg1a4h=_0nh;};wgoxsi call wgijq8;if(_0nh call wguesd)then{if([wgoxsi,getPosWorld(player)]call wgpr26)then{wge41a set[wgix1g,!(_0nh getVariable["object_locked",false])&&!wg6z48];wge41a set[wgpwg4,(_0nh getVariable["object_locked",false])&&!wg6z48];};};};};};};};};};};wgd2q7={private["_0e","_0kh","_0fd","_06p"];_0e=_this select 0;_0kh=wg8jpn select _0e;_0fd=_this select 1;_06p=boundingBoxReal _0fd;_0kh attachObject _0fd;_0kh setRectangular true;_0kh setSize[(-(_06p select 0 select 0)max(_06p select 1 select 0))+(wgaswi select _0e),(-(_06p select 0 select 1)max(_06p select 1 select 1))+(wgaswi select _0e)];wg9wgo set[_0e,(_06p select 1 select 2)];wgkjv1 set[_0e,(_06p select 0 select 2)];};wgijq8={(wg8jpn select _this)setDirection(getDir attachedObject(wg8jpn select _this));};wgpr26={if!((_this select 1)in(wg8jpn select(_this select 0)))exitWith{false};private["_0e","_pos","_07p"];_0e=_this select 0;_pos=_this select 1;_07p=getPosWorld attachedObject(wg8jpn select _0e);if((_pos select 2)>((_07p select 2)+(wg9wgo select _0e)+(wgaswi select _0e)))exitWith{false};if((_pos select 2)<((_07p select 2)-(wgkjv1 select _0e)-wgjiv2-(wgaswi select _0e)))exitWith{false};true;};wgbts7={(_this select 1)in(wg8jpn select(_this select 0))};wghsjy={switch(true)do{case(_this getVariable["R3F_LOG_disabled",false]):{false};case({alive _x}count crew _this>0):{false};case(!isNull(wgcty8)):{false};case({if(_this isKindOf _x)exitWith{1}}count wgnqhn==0):{false};case(alive(_this getVariable["R3F_LOG_est_deplace_par",objNull])):{false};case(alive(_this getVariable["R3F_LOG_est_transporte_par",objNull])):{false};default{true};};};wguesd={switch(true)do{case(!isNull(wgcty8)):{false};case(alive(_this getVariable["R3F_LOG_est_deplace_par",objNull])):{false};case(alive(_this getVariable["R3F_LOG_est_transporte_par",objNull])):{false};default{true};};};
#define wgb5ye		100
wgxau2={private "_03h";_03h=_this getVariable["owner_side",sideUnknown];if(_03h==sideUnknown)exitWith{true};private["_0ho","_02e"];_0ho=_this call wgdtln;_02e=group _0ho;if(group player==_02e)exitWith{true};if(_03h==side group player&&_03h!=independent)exitWith{isNil{{if(group _x==_02e&&_x distance _this<wgb5ye)exitWith{_x}}forEach wgcsd3};};if({if(((_03h!=independent&&_03h==side group _x)||(_02e==group _x))&&_x distance _this<wgb5ye)exitWith{1}}count allUnits>0)exitWith{false};true;};wgicpw={private "_03h";_03h=_this getVariable["owner_side",sideUnknown];if(_03h==independent||_03h!=side group player)exitWith{true};private "_0ho";_0ho=_this call wgdtln;if(isNull(_0ho)||_0ho==player)exitWith{true};private "_02e";_02e=group _0ho;if(group player==_02e)exitWith{true};isNil{{if(group _x==_02e&&_x distance _this<wgb5ye)exitWith{_x}}forEach wgcsd3};};wgsmfy={private["_0ho","_02e","_0i"];_0ho=_this call wgdtln;_02e=group _0ho;_0i=[];{if(group _x==_02e&&_x distance _this<wgb5ye)then{_0i pushBack _x;};}forEach wgcsd3;_0i;};wgbqap={private "_05p";_05p=_this getVariable["owner_state",wgbbxw];if(_05p==wgbbxw)exitWith{true};if(_05p==wgqybg)exitWith{true};private "_03h";_03h=_this getVariable["owner_side",sideUnknown];if(_03h==sideUnknown)exitWith{true};private "_0ho";_0ho=_this call wgdtln;if(group player==group _0ho)exitWith{true};if(_03h!=independent&&_03h==side group player&&(_05p==wg9qow||isNull(_0ho)))exitWith{true};false};wgdtln={private "_uid";_uid=_this getVariable["owner_uid",""];if(_uid=="")exitWith{objNull};private "_03h";_03h=_this getVariable["owner_side",sideUnknown];private "_0cf";_0cf={if(side group _x==_03h&&getPlayerUID _x==_uid)exitWith{_x};}forEach wgcsd3;if(isNil{_0cf})exitWith{objNull};_0cf;};wgimg1={wgxumc setUserActionText[wgx25p select(_this select 0),(_this select 1)];};wgpyic={
#undef wgkekg
#define wgkekg		wguzq9
wgx25p set[wgkekg,_this addAction["wguzq9",{wgxgl2=wgjvc5;wgryif=wgkekg;},nil,wgtemg,true,false,"",wg7z29(wgkekg)]];
#undef wgkekg
#define wgkekg		wgalnj
wgx25p set[wgkekg,_this addAction["wgalnj",{wgxgl2=wgjvc5;wgryif=wgkekg;},nil,wgtemg,true,false,"",wg7z29(wgkekg)]];
#undef wgkekg
#define wgkekg		wg3rpa
wgx25p set[wgkekg,_this addAction["wg3rpa",{wgxgl2=wgjvc5;wgryif=wgkekg;},nil,wgtemg,true,false,"",wg7z29(wgkekg)]];
#undef wgkekg
#define wgkekg		wgpcyw
wgx25p set[wgkekg,_this addAction["wgpcyw",{wgxgl2=wgjvc5;wgryif=wgkekg;},nil,wgtemg,true,false,"",wg7z29(wgkekg)]];
#undef wgkekg
#define wgkekg		wgix1g
wgx25p set[wgkekg,_this addAction["wgix1g",{wgxgl2=wg1a4h;wgryif=wgkekg;},nil,wgtemg,true,false,"",wg7z29(wgkekg)]];
#undef wgkekg
#define wgkekg		wgpwg4
wgx25p set[wgkekg,_this addAction["wgpwg4",{wgxgl2=wg1a4h;wgryif=wgkekg;},nil,wgtemg,true,false,"",wg7z29(wgkekg)]];
#undef wgkekg
#define wgkekg		wg62lu
wgx25p set[wgkekg,_this addAction["wg62lu",{wgxgl2=wg1a4h;wgryif=wgkekg;},nil,wgtemg,true,false,"",wg7z29(wgkekg)]];};wgjavw={{wge41a set[_forEachIndex,false];wgx25p set[_forEachIndex,-1];_this removeAction _x;}forEach wgx25p;};