/*
    ArmA 3 Wasteland
    Code written by Sa-Matra
    Using this code without Sa-Matra's direct permission is forbidden
    Special build for Dwarden
    ESABQIEXHTFRGOFR
*/
wguyj2=false;
wgvrho=false;
wggh5x=false;
wg6q6t=false;

wgtp7l = "";
wgfh4d = "";

diag_log "====================== A3 Wasteland Server started ===========================";
diag_log "============================ Logs version: v3 ================================";
diag_log format["serverTime = %1",serverTime];
wg16fu={
diag_log text format["%1 :: %2","WL",_this];
};
wgzf5b=0;
wg3hhl=0;
onPlayerConnected{
diag_log format["PLAYER CONNECTED: id=%1 uid=%2 name=%3",_id,_uid,_name];
wgzf5b=wgzf5b+1;
wg3hhl=wg3hhl+1;
};
onPlayerDisconnected{
diag_log format["PLAYER DISCONNECTED: id=%1 uid=%2 name=%3",_id,_uid,_name];
_uid call wgsliq;
wg3hhl=wg3hhl-1;
_0xi=[];
{
if(isPlayer _x&&getPlayerUID(_x)!=_uid)then{
_0xi set[count _0xi,_x];
};
}forEach wgcsd3;
wgcsd3=_0xi;
publicVariable "wgcsd3";
};
wgsliq={
_uid=_this;
_0cf=missionNamespace getVariable[format["uid%1",_uid],objNull];
if(!isNull(_0cf))then{
if(_0cf getVariable["cmoney",0]>100)then{
_01e=createVehicle["Land_Sack_F",getPos _0cf,[],0,""];
_01e setVariable["inventory_money",_0cf getVariable["cmoney",0],true];
_01e setVariable["inventory_key",call wgf3nt,true];
_01e spawn wgz71w;
};
};
};
wgz2mv=compile preprocessFileLineNumbers "server\3rdparty\fn_shellSort.sqf";

#include "worlds\defines.hpp"
#include "s_fl_scoreFuncs.sqf"
#include "s_fl_generalFuncs.sqf"
#include "s_fl_generateFuncs.sqf"
#include "s_fl_missionsFuncs.sqf"
#include "s_fl_savingFuncs.sqf"
#include "s_fl_gunStore.sqf"
#include "s_fl_cleanUp.sqf"
#include "worlds\db_loot.sqf"
#include "worlds\db_bases.sqf"
#include "worlds\db_paints.sqf"
#include "worlds\db_missions.sqf"
#include "worlds\db_vehicles.sqf"
#include "worlds\db_gunStore.sqf"
#include "worlds\db_buildings.sqf"
//true call(compile preprocessFileLineNumbers format["server\worlds\w_%1.sqf",worldName]);
true call(compile preprocessFileLineNumbers "server\worlds\w_stratis.sqf");
wg7hio=[[],[],[]];
wg3p15=[];
wgrjxh=[];
wgqhno=[];
wgtjaf=[];
wgh5cm=[[],[],[]];
wgikrs=[];
wghvnd=[];
wgo2j6=[];
wggtg2=3600*100;
call wgluy9;
wgd1zi=((missionNamespace getVariable["server_configFile_disableSetDamageStuff","0"])=="1");
publicVariable "wgd1zi";
wglzzn=[];
publicVariable "wglzzn";
wgcug3=[];
publicVariable "wgcug3";
wgspzs=[];
publicVariable "wgspzs";
wgt4hf=[];
publicVariable "wgt4hf";
wgylyn=[];
publicVariable "wgylyn";
wgc292=[];
publicVariable "wgc292";
wgjnzt=0;
publicVariable "wgjnzt";
wgf9zc=[];
publicVariable "wgf9zc";
wgcsd3=[];
publicVariable "wgcsd3";
wgdxis=[];
{
_0yi=(createGroup _x)createUnit["Logic",[0,0,0],[],0,""];
_0yi setVariable["ready",false,true];
wgdxis pushBack _0yi;
}forEach[blufor,opfor,independent,civilian];
publicVariable "wgdxis";
wgzaqo=civilian;
wgzaqo setFriend[blufor,0];
wgzaqo setFriend[opfor,0];
wgzaqo setFriend[independent,0];
independent setFriend[blufor,0];
independent setFriend[opfor,0];
blufor setFriend[independent,0];
opfor setFriend[independent,0];
diag_log format["================ INIT START: %1",diag_tickTime];
_0zi=diag_tickTime;
call wgy415;
call wgkgbn;
call wgroyq;
call wgedkf;
call wgj2x3;
if(isDedicated)then{
true call wgy3j8;
true call wg9719;
};
call wggqr9;
call wgqaav;
call wgfgez;
call wg5xcu;
call wgmg5k;
call database_world_someCode;
call wgffst;
diag_log format["================ INIT END: %1 (%2)",diag_tickTime,(diag_tickTime-_0zi)];
wg6q6t=true;
if(isDedicated)then{
true spawn{
while{
true}do{
sleep 10;
diag_log format["WASTELAND :: Server time report :: serverTime: %1, gameTime: %2",serverTime,daytime];
};
};
true spawn{
private["_02i"];
while{
true}do{
sleep 200;
_01i=(allMissionObjects "");
_02i=[];
_02i=_02i+["******** PERFORMANCE REPORT ********"];
_02i=_02i+["************* SERVER ***************"];
_02i=_02i+[format["Server FPS: %1, serverTime: %2",diag_fps,serverTime]];
_02i=_02i+[format["currentSessions: %1, totalSessions: %2, Teams: %3-%4-%5-%6",wg3hhl,wgzf5b,playersNumber blufor,playersNumber opfor,playersNumber independent,playersNumber civilian]];
_02i=_02i+[format["allMissionObjects: %1 (Simulation enabled: %2)",count(_01i),{
simulationEnabled _x}count _01i]];
_02i=_02i+[format["allDead: %1, allDeadMen: %2",count(allDead),count(allDeadMen)]];
_02i=_02i+[format["AllVehicles: %1, LandVehicle: %2",{
_x isKindOf "AllVehicles"}count(_01i),{
_x isKindOf "LandVehicle"}count(_01i)]];
_02i=_02i+[format["allGroups: %1, AI units: %2, Bugged units: %3",count(allGroups),{
!isPlayer _x}count allUnits,{
typeOf _x=="C_Man_1"&&alive _x&&!isPlayer _x}count _01i]];
{
diag_log _x;
}forEach _02i;
};
};
};
true spawn{
_0ge=serverTime-1;
_03i=serverTime+300;
waitUntil{
!isDedicated||serverTime<_0ge||serverTime>_03i};
sleep 1;
diag_log format["WASTELAND :: serverTime is now normal, starting respawnable, boats, more loot, missions and cleanup (serverTime = %1)",serverTime];
wgiztd=true;
publicVariable "wgiztd";
wgjnzt=serverTime;
publicVariable "wgjnzt";
if(serverTime>_03i)then{
diag_log format["WASTELAND :: serverTime was normal from the beginning!"];
};
true call wg9vxv;
true spawn wg7ifn;
true spawn wgfba7;
true spawn wgx3zm;
true spawn wgxtqo;
true spawn wg5cbh;
};
true spawn{
waitUntil{
sleep 60;
{
if(count(units _x)==0)then{
deleteGroup _x};
}forEach allGroups;
false};
};
true spawn{
if(missionNamespace getVariable["settings_timeSyncPeriod",0]>0)then{
while{
true}do{
sleep settings_timeSyncPeriod;
call wg4t6b;
};
};
};
if(missionNamespace getVariable["settings_setTimeMultiplier",0]>0)then{
setTimeMultiplier settings_setTimeMultiplier;
}else{
setTimeMultiplier 1;
};
true spawn{
private["_0lf"];
while{
true}do{
_0lf=(switch(missionNamespace getVariable["settings_enemyAircraft",0])do{
case 1:{
call wgkdhl};
case 2:{
call wgpgn9};
default{
objNull};
});
waitUntil{
sleep 60;
!alive _0lf};
sleep((3600-(wg3hhl*100))max 300);
};
};
true spawn{
waitUntil{
{
if(_x isKindOf "AllVehicles")then{
if(speed _x==0)then{
if({
if(alive _x)exitWith{
1}}count(crew _x)==0)then{
_x setPosWorld getPosWorld _x;
sleep 1;
};
};
};
}forEach vehicles;
sleep 30;
false;
};
};
"wg3fis" addPublicVariableEventHandler{
_0cf=(_this select 1 select 0);
_04i=(_this select 1 select 1);
diag_log format["PLAYER IN GAME: %1 (uid:%2 role:%3 veh:%4 profileName:%5)",name _0cf,getPlayerUID _0cf,_0cf,typeOf _0cf,_04i];
_0cf setVariable["BIS_randomSeed1",2,true];
removeHeadgear _0cf;
_0cf addMPEventHandler["MPKilled",{
if(isServer)then{
_this call wguqlj}}];
};

#define wgjoil     30 * 60
"wgf99e" addPublicVariableEventHandler{
_0cf=(_this select 1 select 0);
_uid=(_this select 1 select 1);
_03h=(_this select 1 select 2);
missionNamespace setVariable[format["uid%1",_uid],_0cf];
if!(_0cf getVariable["score_setup",false])then{
_0cf call wg2vwi;
};
_0xi=[];
{
if(isPlayer _x)then{
_0xi set[count _0xi,_x];
};
}forEach wgcsd3;
_0xi set[count _0xi,_0cf];
wgcsd3=_0xi;
publicVariable "wgcsd3";
_0e=(wgh5cm select 0)find _uid;
if(_0e>=0)then{
if(_03h==(wgh5cm select 1 select _0e))then{
if((wgh5cm select 2 select _0e)+wgjoil>diag_tickTime)then{
(wgh5cm select 2)set[_0e,diag_tickTime];
};
};
};
};
"wgxq65" addPublicVariableEventHandler{
_uid=(_this select 1 select 0);
_03h=(_this select 1 select 1);
_0e=(wgh5cm select 0)find _uid;
if(_0e>=0)then{
(wgh5cm select 1)set[_0e,_03h];
(wgh5cm select 2)set[_0e,diag_tickTime];
}else{
_0e=count(wgh5cm select 0);
(wgh5cm select 0)set[_0e,_uid];
(wgh5cm select 1)set[_0e,_03h];
(wgh5cm select 2)set[_0e,diag_tickTime];
};
};
"wgvam7" addPublicVariableEventHandler{
_uid=(_this select 1 select 0);
_08h=(_this select 1 select 1);
_03h=side group _08h;
_05i=sideUnknown;
_0e=(wgh5cm select 0)find _uid;
if(_0e>=0)then{
if((wgh5cm select 2 select _0e)+wgjoil>diag_tickTime)then{
_05i=(wgh5cm select 1 select _0e);
};
};
wgqa55=_05i;
(owner _08h)publicVariableClient "wgqa55";
};
"wgy6hw" addPublicVariableEventHandler{
_08h=(_this select 1 select 0);
_02e=(_this select 1 select 1);
_06i=leader _02e;
[_08h]joinSilent(_this select 1 select 1);
_02e selectLeader _06i;
};
"wg9pm7" addPublicVariableEventHandler{
[(_this select 1 select 0)]joinSilent(createGroup(_this select 1 select 1));
};
"publicVar_createVehicle" addPublicVariableEventHandler{
createVehicle[(_this select 1 select 1),(_this select 1 select 1)modelToWorld[0,10,0],[],0,""];
};
"wgj7uk" addPublicVariableEventHandler{
systemChat format["wgj7uk = %1",_this select 1];
_07i=[];
{
if(alive _x)then{
_07i pushBack text format["[%1]%2:%3",side _x,name _x,(if(isPlayer _x)then{
getPlayerUID _x}else{
"AI"})]}}forEach(crew((_this select 1)select 1));
diag_log "*********************************";
diag_log format["Teleport detected by: %1, Veh:%2, Side:%3, Local:%4, UID:%5, Crew:%6",name((_this select 1)select 0),typeOf((_this select 1)select 1),side((_this select 1)select 0),(_this select 1)select 2,(_this select 1)select 3,_07i];
diag_log format["From ASL:%1, To ASL:%2, From Height:%3, To Height:%4, From Town:%5, To Town:%6, To Radar:%7",(_this select 1)select 4,(_this select 1)select 5,(_this select 1)select 6,(_this select 1)select 7,(_this select 1)select 8,(_this select 1)select 9,(_this select 1)select 10];
diag_log format["Speed:%1, Distance 3d:%2, Distance 2d:%3",(_this select 1)select 11,(_this select 1)select 12,(_this select 1)select 13];
diag_log "*********************************";
};
"wg77pp" addPublicVariableEventHandler{
_08i=(_this select 1 select 0);
_0ze=(_this select 1 select 1);
_09i=name _0ze;
diag_log format["TEAMKILLER REPORT: %1 (Role:%2) (Veh:%3) (uid:%4) teamkilled %5 (Role:%6) (Veh:%7) (uid:%8) (key:%9) (method:%10)",name _08i,_08i,typeOf vehicle _08i,getPlayerUID(_08i),_09i,_0ze,typeOf vehicle _0ze,getPlayerUID(_0ze),_this select 1 select 3,_this select 1 select 2];
};
"publicVar_provingGroundsSattelite" addPublicVariableEventHandler{
_08h=_this select 1;
diag_log format["SATTELITE USED BY: %1 (Role:%2) (Veh:%3) (uid:%4)",name _08h,_08h,typeOf vehicle _08h,getPlayerUID(_08h)];
};
"wge2fk" addPublicVariableEventHandler{
_0qa=_this select 1 select 0;
_0aj=_this select 1 select 1;
_0bj=_this select 1 select 2;
diag_log format["PUNISHED KEY: %1 (%2), Story: %3",_0qa,_0aj,toString(_0bj)];
};
"wgek2k" addPublicVariableEventHandler{
_06a=_this select 1 select 0;
_uid=_this select 1 select 1;
_0na=_this select 1 select 2;
if(isNil{
_uid})exitWith{
diag_log format["Fucked up wgek2k. uid: %1 what:%2 arr:%3",_uid,_06a,_0na];
};
_0cj=-1;
for "_i" from 0 to(count(wg7hio select _06a)-1)do{
if((wg7hio select _06a select _i select 0)==_uid)exitWith{
_0cj=_i;
};
};
if(_0cj==-1)then{
_0cj=count(wg7hio select _06a);
(wg7hio select _06a)set[_0cj,[_uid,[]]];
};
(wg7hio select _06a)set[_0cj,[_uid,_0na]];
};
"wgyspi" addPublicVariableEventHandler{
_08h=_this select 1;
_uid=getPlayerUID(_08h);
_0i=[];
for "_i" from 0 to 1 do{
_0e=-1;
for "_j" from 0 to(count(wg7hio select _i)-1)do{
if((wg7hio select _i select _j select 0)==_uid)exitWith{
_0e=_j;
};
};
if(_0e>=0)then{
_0i set[_i,wg7hio select _i select _0e select 1];
}else{
_0i set[_i,[]];
};
};
wgva4f=_0i;
(owner _08h)publicVariableClient "wgva4f";
};
"wghexs" addPublicVariableEventHandler{
if(!wg6q6t)exitWith{
};
(_this select 1)call wgy25m;
};
"wg8pni" addPublicVariableEventHandler{
if(!wg6q6t)exitWith{
};
(_this select 1 select 1)call wgi6ne;
};
"wgszzz" addPublicVariableEventHandler{
(_this select 1 select 1)setOwner owner(_this select 1 select 0);
};
"wg8z7t" addPublicVariableEventHandler{
{
_x call wglm8s;
}forEach(_this select 1);
};
"wgf3sx" addPublicVariableEventHandler{
if!(alive(_this select 1))then{
deleteVehicle(_this select 1);
};
};
"wgrcj4" addPublicVariableEventHandler{
_0dj=_this select 1;
private["_0ej"];
_0ej=[];
for "_i" from 0 to count(wgf9zc)-1 do{
if(!isNull(wgf9zc select _i))then{
if(alive((wgf9zc select _i)getVariable["revive_player",objNull]))then{
_0ej set[count _0ej,wgf9zc select _i];
};
};
};
_0ej set[count _0ej,_0dj];
wgf9zc=_0ej;
publicVariable "wgf9zc";
};
"wgynfh" addPublicVariableEventHandler{
wgf9zc=wgf9zc-[_this select 1];
publicVariable "wgf9zc";
};
"wgxa14" addPublicVariableEventHandler{
wgkac2=wgkac2+[_this select 1];
};
"wgpeq3" addPublicVariableEventHandler{
wgr1t9=wgr1t9+[_this select 1];
};
"wgwu93" addPublicVariableEventHandler{
_0fj=_this select 1 select 0;
_01e=_this select 1 select 1;
_0qa=_this select 1 select 2;
_0gj=_this select 1 select 3;
_0hj=_this select 1 select 4;
if(serverTime-(_01e getVariable[format["used_key_%1",_0qa],0])>5)then{
if(!isNil{
wgiztd})then{
_01e setVariable[format["used_key_%1",_0qa],serverTime];
};
wgw4e9=[_01e,_0qa,_0gj,_0hj];
(owner _0fj)publicVariableClient "wgw4e9";
};
};
"wgw2yi" addPublicVariableEventHandler{
_0fj=_this select 1 select 0;
_0ab=_this select 1 select 1;
_0hj=_this select 1 select 2;
if(serverTime-(_0ab getVariable["used_at",0])>5)then{
if(!isNil{
wgiztd})then{
_0ab setVariable["used_at",serverTime];
};
wgdlh6=[_0ab,_0hj];
(owner _0fj)publicVariableClient "wgdlh6";
};
};
"wgt4hf" addPublicVariableEventHandler{
systemChat format["WASTELAND :: wgt4hf is now %1",wgt4hf];
};
"wgpoev" addPublicVariableEventHandler{
_07h=_this select 1;
diag_log format["WASTELAND :: Money spent log :: Player %1 (uid:%2) made $%3 purchase (had $%4, now has $%5) at %6 ATL position",name(_07h select 0),getPlayerUID(_07h select 0),_07h select 1,_07h select 2,_07h select 3,_07h select 4];
_0fj=_07h select 0;
_0ij=_07h select 1;
[_0fj,wgpsty,_0ij]call wgsw69;
};
"wg4jqm" addPublicVariableEventHandler{
[_this select 1 select 0,wgoxdk,_this select 1 select 1]call wgsw69;
};
"server_nonScheduledCall" addPublicVariableEventHandler{
call(_this select 1);
};
"wg9ez1" addPublicVariableEventHandler{
(_this select 1 select 0)call(_this select 1 select 1);
};
"wgd5qm" addPublicVariableEventHandler{
wgqqjl=wggtg2;
owner(_this select 1)publicVariableClient "wgqqjl";
};
"wg4orn" addPublicVariableEventHandler{
wgc292=wgc292-[(_this select 1)];
publicVariable "wgc292";
};
"wg1rbh" addPublicVariableEventHandler{
wgcug3 pushBack(_this select 1);
publicVariable "wgcug3";
if(!isDedicated)then{
(owner player)publicVariableClient "wgcug3";
};
};
0 setWaves 1;
setWind[1+random 0.5,0,true];
wggh5x=true;
diag_log "=============== A3 Wasteland Server init finished started ====================";
