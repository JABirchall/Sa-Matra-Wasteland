/*
	ArmA 3 Wasteland
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	
	
	Special build for Dwarden
	
	ESABQIEXHTFRGOFR
*/
diag_log "====================== A3 Wasteland Client started ===========================";enableSentences false;wgcupq=compile preprocessFileLineNumbers "client\c_f_keyHandler.sqf";wgsnbk=compile preprocessFileLineNumbers "client\c_f_spawnStuff.sqf";wgkf9b=compile preprocessFileLineNumbers "client\c_f_onRespawn.sqf";wgkn6m=compile preprocessFileLineNumbers "client\c_f_onKilled.sqf";wgqx5z=compile preprocessFileLineNumbers "client\c_f_hidePlayer.sqf";
#include "c_fl_generalFuncs.sqf"
#include "c_fl_radarFuncs.sqf"
#include "c_fl_playerHUD.sqf"
#include "c_fl_groupsMenu.sqf"
#include "c_fl_playerInventory.sqf"
#include "c_fl_playerSettings.sqf"
#include "c_fl_playerActionsNew.sqf"
#include "c_fl_playerActions.sqf"
#include "c_fl_playerRespawn.sqf"
#include "c_fl_playerIcons.sqf"
#include "c_fl_missionFuncs.sqf"
#include "c_fl_gunStore.sqf"
#include "c_fl_adminMenu.sqf"
wgxspa=false;wgaa4c=false;wgbm48=false;wg6z48=false;wg14a5=false;wgc9gy=false;wgze2p=false;wgxgbo=isStreamFriendlyUIEnabled;wgp3s7=true;wgemh9=true;wg4sje=profileName;wgzskn=(actionKeys "CarLeft"+actionKeys "CarRight"+actionKeys "MoveForward"+actionKeys "MoveBack");wg31e4=[1000,2000,3000];wglsnn=[];wgm6u6=0;wg8xwj=0;wg3re5=objNull;wglovb=objNull;wgcnta=objNull;wghh75=0;wgi6wo=false;wgulf5=0;wgddl9=objNull;wgy6nd=0;wgfrje=0;wgeb9r=[];wg3vh5=[];wgokd5=false;wgfypi=false;true spawn wg6b2n;true spawn{waitUntil{(player==player)&&local player};setViewDistance(wg31e4 select 0);call wgsjnn;wghrav=getPlayerUID player;if(wghrav=="")exitWith{endMission "LOSER";};if(wghrav in wgt4hf)exitWith{endMission "LOSER";};_05u=false;{if((_x select 0)==wghrav&&(_x select 1)>=2)exitWith{_05u=true;};}forEach wgspzs;if(_05u)then{endMission "Teamkiller";};wgvam7=[wghrav,player];publicVariableServer "wgvam7";_0ge=diag_tickTime+5;waitUntil{!isNil{wgtwld}||diag_tickTime>_0ge};if(diag_tickTime>_0ge)exitWith{endMission "LOSER";};if(wgtwld!=side group player&&wgtwld!=sideUnknown)exitWith{switch(wgtwld)do{case blufor:{endMission "TeamLockedBLUFOR";};case opfor:{endMission "TeamLockedOPFOR";};case independent:{endMission "TeamLockedIndependent";};default{endMission "LOSER";};};};wgf99e=[player,getPlayerUID(player),playerSide];publicVariableServer "wgf99e";player call wgsnbk;player call wgqx5z;true spawn wgfwj3;true spawn wgy2mn;call wg3ro6;call wgtlar;call wg1cbm;wgyspi=player;publicVariableServer "wgyspi";wgd5qm=player;publicVariableServer "wgd5qm";wg3fis=[player,profileName];publicVariableServer "wg3fis";if(count(units group player)>1)then{[player]joinSilent grpNull;};if(!isNil "wgaqjm")then{player removeEventHandler["Respawn",wgaqjm];};player addEventHandler["Respawn",{_this call wgkf9b;}];player addEventHandler["Killed",{_this call wgkn6m;}];player addEventHandler["Fired",{if((_this select 4)isKindOf "TimeBombCore")then{{if(player distance(_x select 0)<100)exitWith{hint parseText "<t size='2' color='#ff0000'>Warning</t><br/><br/>Placing explosives within 100 meters of gun store is forbidden. Your explosive will be deleted in 2 minutes!";(_this select 6)spawn{sleep 120;deleteVehicle _this;};};}forEach wg57oa;wgoy2p=[wgxcy6,player,[(_this select 6),(_this select 5)]];publicVariable "wgoy2p";};}];player addEventHandler["HandleHeal",{_this call wgtk3x}];player addEventHandler["HandleDamage",{_0cf=_this select 0;_0hs=_this select 3;_06u=_0cf getHit(_this select 1);_07u=_this select 2;if(isNil{_06u})then{_06u=damage(_this select 0)};switch(true)do{case(!alive(_this select 0)):{_07u};case(diag_tickTime<wgyc9j):{_06u};case(diag_tickTime<wgy6nd&&(isNull(_0hs)||(_0hs==(_this select 0)))):{_06u};case((isNull(_0hs)&&isBurning player)||((isNull(_0hs)||_0hs==player)&&typeOf(vehicle player)=="Steerable_Parachute_F")||((vehicle _0hs!=_0hs)&&((side group _0hs==side group player&&side player!=independent)||group _0hs==group player)&&((velocity vehicle _0hs)vectorDistance[0,0,0])<4)||false):{_06u};default{if(_0hs!=_0cf&&(effectiveCommander _0hs)!=_0cf)then{if(((side group _0hs==side group _0cf&&side _0cf!=independent)||group _0hs==group _0cf)&&(vehicle _0hs==_0hs))then{if(wgddl9!=_0hs||diag_tickTime>(wgulf5+1))then{wgddl9=_0hs;wgulf5=diag_tickTime;[wgoxbf,player,_0hs]call wg8phi;};};};_07u;};};}];player addEventHandler["InventoryOpened",{_0oh=(_this select 1);switch(true)do{case(_0oh isKindOf "CAManBase"||typeOf _0oh=="WeaponHolderSimulated"):{_0ho=if(typeOf _0oh=="WeaponHolderSimulated")then{_0oh getVariable["body",objNull]getVariable["revive_player",objNull];}else{_0oh getVariable["revive_player",objNull];};if(switch(true)do{case(!alive _0ho):{false};case(_0ho call wgu2f3):{false};default{true};})then{hint parseText format["<t size='2' color='#ff0000'>%1</t><br/><br/>%2",localize "STR_WL_Gen_Warning",localize "STR_WL_Acts_CannotLootDeadFriendly"];true;}else{false;};};case(_0oh isKindOf "Bag_Base"):{_08h={if(unitBackpack _x==_0oh)exitWith{_x}}forEach wgcsd3;if(switch(true)do{case(isNil{_08h}):{false};case(_08h call wgu2f3):{false};default{true};})then{hint parseText format["<t size='2' color='#ff0000'>%1</t><br/><br/>%2",localize "STR_WL_Gen_Warning",localize "STR_WL_Acts_CannotLootFriendlyBackpack"];true;}else{false;};};case!(_0oh call wgbqap):{_03h=_0oh getVariable["owner_side",sideUnknown];if(_03h==side group player&&_03h!=independent)then{_0ho=_0oh call wgdtln;hint parseText format["<t size='2' color='#ff0000'>%1</t><br/><br/>%2",localize "STR_WL_Gen_Warning",format[localize(if((_this select 1)isKindOf "ReammoBox_F")then{"STR_WL_HUD_CannotLootLockedCrate"}else{"STR_WL_HUD_CannotLootLockedVehicle"}),name _0ho]];}else{hint parseText format["<t size='2' color='#ff0000'>%1</t><br/><br/>%2",localize "STR_WL_Gen_Warning",localize(if((_this select 1)isKindOf "ReammoBox_F")then{"STR_WL_HUD_CannotLootEnemyLockedCrate"}else{"STR_WL_HUD_CannotLootEnemyLockedVehicle"})];};true;};default{false};};}];{if(_x getVariable["owner_uid",""]==wghrav&&_x getVariable["owner_side",sideUnknown]==(side group player))then{if(_x isKindOf "ReammoBox_F")then{wg3vh5 pushBack _x;}else{if!(_x in wgcug3)then{wgeb9r pushBack _x;};};};}forEach vehicles;true spawn{waitUntil{!isNil{BIS_fnc_feedback_fatigueBlur}};waitUntil{_08u=BIS_fnc_feedback_fatigueBlur;ppEffectDestroy _08u;waitUntil{BIS_fnc_feedback_fatigueBlur!=_08u};false;};};true spawn{waitUntil{!isNil{BIS_fnc_feedback_damageBlur}};waitUntil{_08u=BIS_fnc_feedback_damageBlur;ppEffectDestroy _08u;waitUntil{BIS_fnc_feedback_damageBlur!=_08u};false;};};true spawn{while{true}do{_0ss=wg1id4;waitUntil{_0ss!=wg1id4};player setVariable["cmoney",wg1id4,true];};};true spawn{waitUntil{if(settings_no3rdPerson)then{if(vehicle player==player)then{if(cameraView=="EXTERNAL")then{player switchCamera "INTERNAL";};};};sleep 1;false;};};wga23i=[[blufor,"B_UAV_01_backpack_F"],[opfor,"O_UAV_01_backpack_F"],[independent,"I_UAV_01_backpack_F"]];wgb2kt=({if((_x select 0)==playerSide)exitWith{_x select 1}}foreach wga23i);wge166=[[blufor,"B_UavTerminal"],[opfor,"O_UavTerminal"],[independent,"I_UavTerminal"]];wgjfiv=({if((_x select 0)==playerSide)exitWith{_x select 1}}foreach wge166);wgus49=[];{if((_x select 0)!=playerSide)then{wgus49 set[count wgus49,_x select 1]}}forEach wge166;true spawn{waitUntil{_09u=backpack player;waitUntil{sleep 0.01;backpack player!=_09u};_0fb=backpack player;if({_x select 1==_0fb}count wga23i>0)then{if({(_x select 1)==_0fb&&(_x select 0)==playerSide}count wga23i==0)then{removeBackpack player;waitUntil{backpack player==""};player addBackpack wgb2kt;};};false;};};true spawn{waitUntil{if({if(_x in(assignedItems player))exitWith{1}}count wgus49>0)then{_0av={if(_x in(assignedItems player))exitWith{_x}}forEach wgus49;if(player canAdd _0av&&player canAdd wgjfiv)then{player unassignitem _0av;player removeItem _0av;player addItem wgjfiv;player assignItem wgjfiv;}else{player unassignitem _0av;_03n=createVehicle["GroundWeaponHolder",getPos player,[],0,"CAN_COLLIDE"];_03n addItemCargoGlobal[wgjfiv,1];_03n setPosATL getPosATL player;player reveal[_03n,4];};};sleep 1;false;};};wg19ta={_0ea=(_this select 2);if(isNull(_this select 3))then{_i=wgemeq find(_this select 1);if(_i!=-1)then{_0bv=(_this select 0)getHitPointDamage(wgwpd3 select _i);_0ai=(_0ea-_0bv)/3;_0ea=_0bv+_0ai;};};_0ea};true spawn{waitUntil{waitUntil{vehicle player!=player};_0fd=vehicle player;_id=_0fd addEventHandler["HandleDamage",wg19ta];waitUntil{vehicle player==player};_0fd removeEventHandler["HandleDamage",_id];false;};};};true spawn{disableSerialization;private["_0jk"];_0jk=displayNull;while{true}do{_0jk=findDisplay 46;if(!isNull(_0jk))exitWith{};sleep 1;};_0jk displayAddEventHandler["KeyDown","_this call wgcupq"];};true spawn{waitUntil{!isNil{wgjkd4}};{deleteCollection(_x select 0);}forEach wgjkd4;};if(!wgfo49)then{true spawn{waitUntil{!isNil{wg3boz}&&(player==player)};true spawn wg3boz;};};onPreloadFinished "wgisee = true; onPreloadFinished """";";"wgiqhx" addPublicVariableEventHandler{private["_0fj"];_0fj=(_this select 1)getVariable["revive_player",objNull];if(local(_0fj)&&_0fj==player&&(_this select 1)==wg3re5)then{(_this select 1)call wg4wm3;};};"wgva4f" addPublicVariableEventHandler{wglsnn=_this select 1 select 0;wgyr7r=_this select 1 select 1;wgy2ls=_this select 1 select 2;};"wgrlrj" addPublicVariableEventHandler{wgr77l=_this select 1;};"wgd6yc" addPublicVariableEventHandler{if(local(_this select 1))then{true spawn{3 cutRsc["Wasteland_Teamkiller","PLAIN"];player say "FD_Course_Active_F";sleep 20;3 cutFadeOut 2;};};};"wgqa55" addPublicVariableEventHandler{wgtwld=_this select 1;};"wgylyn" addPublicVariableEventHandler{true call wg8sk7;};"wg2d8t" addPublicVariableEventHandler{true call wgl4ku;};"publicVar_say" addPublicVariableEventHandler{(_this select 1 select 0)say(_this select 1 select 1);};"client_timeLapseSurveyRequest" addPublicVariableEventHandler{wgo98u=[player,daytime];publicVariableServer "wgo98u";};"client_timeLapseAdjust" addPublicVariableEventHandler{skipTime(_this select 1);};"publicVar_performanceSurveyRequest" addPublicVariableEventHandler{wgpeq3=[player,count(allMissionObjects "Building"),count(allMissionObjects "LandVehicle"),count(allMissionObjects "Ruins"),count(allMissionObjects "#destructioneffects"),diag_fps,diag_fpsmin,wgegq4,wg6tej,wg1id4,round(serverTime-wgr5f5)];publicVariableServer "wgpeq3";};"wgspzs" addPublicVariableEventHandler{if(playerSide in[blufor,opfor])then{{if((_x select 0)==wghrav)then{if((_x select 1)>=2)then{missionNamespace setVariable["iamteamkiller",true];publicVariableServer "iamteamkiller";endMission "LOSER";};};}forEach wgspzs;};};"wgt4hf" addPublicVariableEventHandler{if(wghrav in(_this select 1))exitWith{endMission "LOSER";};};"wgsiro" addPublicVariableEventHandler{if(wgxq39>serverTime||(!alive player))then{call wgn9tl;};};"wgwa47" addPublicVariableEventHandler{if(wgxq39>serverTime||(!alive player))then{call wgn9tl;};};"wgoy2p" addPublicVariableEventHandler{(_this select 1)call wg8phi;};"wgcsd3" addPublicVariableEventHandler{{if(player!=_x&&(_x getVariable["handleheal_unit",objNull]!=_x))then{_x addEventHandler["HandleHeal",{_this call wgtk3x}];_x setVariable["handleheal_unit",_x];};}forEach(_this select 1);};"wgqqjl" addPublicVariableEventHandler{wgfrje=diag_tickTime+(_this select 1);};"wg4xk4" addPublicVariableEventHandler{_0fd=(_this select 1);_0fd setVariable["owner_uid",wghrav,true];_0fd setVariable["owner_side",side group player,true];_0fd setVariable["owner_state",wg9qow];wgeb9r pushBack _0fd;};wgat3j=true;