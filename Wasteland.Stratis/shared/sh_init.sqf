/*
	ArmA 3 Wasteland
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	
	
	Special build for Dwarden
	
	ESABQIEXHTFRGOFR
*/
#include "sh_fl_generalFuncs.sqf"
wgtypk=false;wgruuo=[];wgn3ih=false;wg3yma=[];wg6kcy=false;wgr5nv=[];wgyqew=false;0 setWaves 1;0 setRainbow 1;if(isServer)then{wgq2to=[];wgantn=[[],[]];wgs35c=[];wgfoa9=[];wgrolw=[];wgn8g5=[];wgbglw=[];wg48bb=[];publicVariable "wgq2to";publicVariable "wgs35c";publicVariable "wgfoa9";publicVariable "wgrolw";publicVariable "wgn8g5";publicVariable "wgbglw";publicVariable "wg48bb";wg9roo=[];wgl4mu=[];wg1dkz=[];publicVariable "wg9roo";publicVariable "wgl4mu";publicVariable "wg1dkz";wg3dg9=0;wg319l=[];wgrsnp=[];wghgzs=[];publicVariable "wg319l";publicVariable "wgrsnp";publicVariable "wghgzs";wg99ui=0;wgoiq3=[];wgj1q5=[];wgywk7=[];publicVariable "wgoiq3";publicVariable "wgj1q5";publicVariable "wgywk7";wgj7bg=0;};true spawn{waitUntil{!isNil{wgwl8i}};for "_i" from 0 to count(wgn8g5)-1 do{_i call wgmixb;};for "_i" from 0 to count(wg48bb)-1 do{_i call wgmk6m;};};true spawn{waitUntil{!isNil{wgq2to}};if(typeName wgq2to==typeName[])then{{_x enableSimulation false;}forEach wgq2to;};};if(settings_acceleratedDayNightCycle)then{};true spawn{waitUntil{!isNil{wg1dkz}&&!isNil{wgrolw}};sleep 1;{_x spawn{waitUntil{!isNil{missionNamespace getVariable _this}};(missionNamespace getVariable _this)call wgf8i4;};}forEach wg1dkz;};true spawn{waitUntil{!isNil{wg9roo}&&!isNil{wgrolw}};sleep 1;wg9roo call wgf8i4;};true spawn{waitUntil{!isNil{wghgzs}};sleep 1;{_x spawn{waitUntil{!isNil{missionNamespace getVariable _this}};{_x allowDamage false;}forEach(missionNamespace getVariable _this);};}forEach wghgzs;};true spawn{waitUntil{!isNil{wg319l}};{_x allowDamage false;}forEach wg319l;};true spawn{waitUntil{!isNil{wgywk7}};sleep 1;{_x spawn{waitUntil{!isNil{missionNamespace getVariable _this}};{_x enableSimulation false;}forEach(missionNamespace getVariable _this);};}forEach wgywk7;};true spawn{waitUntil{!isNil{wgoiq3}};{_x allowDamage false;}forEach wgoiq3;};"wgantn" addPublicVariableEventHandler{call wgav1k;};"wgq67y" addPublicVariableEventHandler{(_this select 1 select 0)enableSimulation(_this select 1 select 1);};"wgs35c" addPublicVariableEventHandler{true call wgairj;};"wgfoa9" addPublicVariableEventHandler{true call wgu145;};"wgnd3z" addPublicVariableEventHandler{(_this select 1 select 0)allowDamage(_this select 1 select 1);};"wgh65o" addPublicVariableEventHandler{(_this select 1)call wgvyke;};"wg3qcq" addPublicVariableEventHandler{(_this select 1)call wgmixb;};"wgl4mu" addPublicVariableEventHandler{(_this select 1)call wgf8i4;};"wgrsnp" addPublicVariableEventHandler{call wgvxlq;};"wgj1q5" addPublicVariableEventHandler{call wg4uxj;};"publicVar_shared_animatedListUpdate" addPublicVariableEventHandler{(_this select 1)call wgmk6m;};"wgo2ps" addPublicVariableEventHandler{wgyqew=true;1 setOvercast 0.5;setDate(_this select 1);60 setFog 0;};"wgzuge" addPublicVariableEventHandler{60 setFog 0;wgxa14=[player,daytime];publicVariableServer "wgxa14";};"wgh2co" addPublicVariableEventHandler{skipTime(_this select 1);};"publicVar_shared_fixMP" addPublicVariableEventHandler{call wg2ten;};"wgq888" addPublicVariableEventHandler{(_this select 1 select 0)setVehicleAmmo(_this select 1 select 1);};"wg6tyw" addPublicVariableEventHandler{(_this select 1 select 0)setFuel(_this select 1 select 1);};"wg43yw" addPublicVariableEventHandler{(_this select 1)switchMove "AinvPknlMstpSnonWnonDnon_medic_1";};"wghcfp" addPublicVariableEventHandler{(_this select 1)call wg95mw;};"wguaoq" addPublicVariableEventHandler{group(_this select 1)selectLeader(_this select 1);};