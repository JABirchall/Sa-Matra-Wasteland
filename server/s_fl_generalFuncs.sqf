/*
	ArmA 3 Wasteland
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	Special build for Dwarden
	ESABQIEXHTFRGOFR
*/
#include "worlds\defines.hpp"
wg551a={
_0i=false;
_0j=(if(isNil{
_this select 2})then{
"CfgWeapons"}else{
_this select 2});
_0k=configFile>>_0j>>(_this select 0);
for "_i" from 0 to 4 do{
_0k=inheritsFrom(_0k);
if(configName(_0k)==_this select 1)exitWith{
_0i=true;
};
};
_0i};
wgyxm5={
_0k=configFile>>"CfgWeapons">>_this;
if(configName(_0k>>"LinkedItems")=="")exitWith{
_this};
_0l=_this;
for "_i" from 0 to 3 do{
_0k=inheritsFrom(_0k);
if(configName(_0k>>"LinkedItems")=="")exitWith{
_0l=configName(_0k);
};
};
_0l};
wgmlpy={
private["_0m","_0n"];
_0m=["ItemMap","ItemCompass","ItemWatch","ItemRadio"];
_0n=["Chemlight_green","Chemlight_red","Chemlight_blue","Chemlight_yellow"];
private["_0o","_0p","_0q","_0r","_0s","_0t","_0u","_0v","_0w","_0x","_0y","_0z","_01","_02","_03","_04","_05"];
_0o=weapons _this;
_0p=assignedItems _this;
_0q=items _this;
_0r=magazines player;
_0s=headgear _this;
_0t=primaryWeapon _this;
_0u=secondaryWeapon _this;
_0v=handgunWeapon _this;
_0w=primaryWeaponItems _this;
_0x=secondaryWeaponItems _this;
_0y=handgunItems _this;
_0z=primaryWeaponMagazine _this;
_01=secondaryWeaponMagazine _this;
_02=handgunMagazine _this;
_03=uniform _this;
_04=vest _this;
_05=backpack _this;
private["_06"];
private["_08"];
_0o=_0o-_0m;
_06=[];
{
_07=_x;
{
if(!(_forEachIndex in _06)&&_07==_x)exitWith{
_06 set[count _06,_forEachIndex];
};
}forEach _0o;
}forEach _0p+[_0t,_0u,_0v];
_08=[];
{
if!(_forEachIndex in _06)then{
_08 set[count _08,_x];
};
}forEach _0o;
private["_09"];
_0q=_0q-_0m;
_06=[];
{
_07=_x;
{
if(!(_forEachIndex in _06)&&_07==_x)exitWith{
_06 set[count _06,_forEachIndex];
};
}forEach _0q;
}forEach _08;
_09=[];
{
if!(_forEachIndex in _06)then{
_09 set[count _09,_x];
};
}forEach _0q;
_09=_09+_0w+_0x+_0y+[_03,_04,_0s]-[""];
{
if!(_x in _0m)then{
if([_x,"ItemCore"]call wg551a||[_x,"Binocular"]call wg551a)then{
_09 set[count _09,_x];
}else{
_08 set[count _08,_x];
};
};
}forEach _0p;
_0r=_0r+_0z+_01+_02-[""];
private["_0aa"];
_0aa=objNull;
if(count(_09)>0||count(_08)>0||count(_0r)>0||_05!="")then{
_pos=getPosATL _this;
_0aa=createVehicle["GroundWeaponHolder",_pos,[],0,"CAN_COLLIDE"];
_0aa setPosATL _pos;
if((getPosATL _this select 2)<0.1)then{
_0aa setVectorUp(surfaceNormal _pos)};
{
_0aa addMagazineCargoGlobal[_x,1];
}forEach _0r;
{
if(_x=="Laserdesignator")then{
_0aa addMagazineCargoGlobal["Laserbatteries",1];
};
_0aa addWeaponCargoGlobal[_x,1];
}forEach _08;
{
if(_x!="")then{
_0aa addWeaponCargoGlobal[_x call wgyxm5,1];
};
}forEach[_0t,_0u,_0v];
{
_0aa addItemCargoGlobal[_x,1];
}forEach _09;
if(_05!="")then{
_0aa addBackpackCargoGlobal[_05,1];
{
clearWeaponCargoGlobal _x;
clearMagazineCargoGlobal _x;
clearItemCargoGlobal _x;
}forEach(everyBackpack _0aa);
};
};
_0aa};
wgv527={
private["_0i"];
_0i=false;
{
if((_x distance(_this select 0))<(_this select 1))exitWith{
_0i=true;
};
}forEach playableUnits;
_0i};
wgdlru={
private["_0i"];
_0i=false;
{
if((_x distance(_this select 0))<(_this select 1))exitWith{
_0i=true;
};
}forEach allUnits;
_0i};
wgub55={
_0e=count(_this);
for "_i" from 0 to count(_this)-1 do{
if(isNil{
_this select _i})exitWith{
_0e=_i;
};
};
_0e};
wg5cbh={
if(true)exitWith{
};
while{
true}do{
sleep 0.5;
_0ba=missionNamespace getVariable["publicVar_noServerSimulationOptimization",false];
{
private["_0ea","_0ca"];
_0ca=_x;
_0da=!(count(crew _0ca)==0&&({
if(_0ca distance _x<100)exitWith{
1}}count allUnits==0)&&(_0ca getVariable["damage_change_at",0]<(serverTime-30))&&(_0ca getVariable["last_alive_at",0]<(serverTime-30)));
_0ea=_0ca getVariable["last_damage",-1];
if(isNil{
_0ea})then{
_0ea=-1;
};
if(_0ea!=damage _0ca)then{
_0ca setVariable["last_damage",damage _0ca];
if(_0ea!=-1)then{
_0ca setVariable["damage_change_at",serverTime];
_0da=true;
};
};
if(!alive _0ca&&isNil{
_0ca getVariable "last_alive_at"})then{
_0ca setVariable["last_alive_at",serverTime];
};
if(_0ba)then{
_0da=true;
};
if((_0da&&!(simulationEnabled _0ca))||(!_0da&&(simulationEnabled _0ca)))then{
_0ca enableSimulation _0da;
};
}forEach((entities "LandVehicle")+(entities "Ship"));
};
};
wgluy9={
private["_0fa","_0ga","_0ha","_0ia"];
_0fa=configFile;
if({
if(isClass(_x))exitWith{
_0fa=_x;
1};
}count[configFile>>"CfgWastelandSettings",missionConfigFile>>"CfgWastelandSettings"]==0)then{
format["No mission settings were found in both mission and game configs! Mission might not work as intended!",_0fa]call wg16fu;
};

#define wga2y5		0
#define wgofo9		1
#define wgcv84		2
#define wgiskh		3
#define wgbctd		4
{
_0ga=_0fa>>(_x select 0);
_0ha=format["settings_%1",_x select 0];
_0ia=(if(switch(_x select 1)do{
case wga2y5:{
isNumber(_0ga)};
case wgofo9:{
isText(_0ga)};
case wgcv84:{
isNumber(_0ga)};
case wgiskh:{
isText(_0ga)};
case wgbctd:{
isArray(_0ga)};
})then{
switch(_x select 1)do{
case wga2y5:{
getNumber(_0ga)};
case wgofo9:{
getText(_0ga)};
case wgcv84:{
getNumber(_0ga)==1};
case wgiskh:{
getText(_0ga)};
case wgbctd:{
getArray(_0ga)};
}}else{
_x select 2});
missionNamespace setVariable[_0ha,(if(_x select 1==wgiskh)then{
compileFinal _0ia}else{
_0ia})];
publicVariable _0ha;
}forEach[["gunStoreAssortimentUpdateInterval",wga2y5,3600],["customWelcomeMessage",wgofo9,""],["trustedUIDs",wgiskh,"['76561198018221755']"],["respawnMenuText",wgofo9,""],["noVehicleTWS",wgcv84,true],["noWeaponTWS",wgcv84,true],["no3rdPerson",wgcv84,false],["noUAVinGunStore",wgcv84,false],["setTimeMultiplier",wga2y5,24],["timeSyncPeriod",wga2y5,600],["respawnTime",wga2y5,20],["enemyAircraft",wga2y5,1],["disableFatigue",wgcv84,false],["disableTwitchThanks",wgcv84,false]];
};

#define wgq3kt	61
#define wg3apk	32
#define wguned	13
#define wgzuwp	10
wg7aon={
_0ja={
private["_i","_0ka","_0b","_0la"];
_0ka=count _this;
_0b=0;
_0la=_0ka;
for "_i" from 0 to(_0ka-1)do{
_0b=_i;
if(_this select _i!=wg3apk)exitWith{
};
};
for "_i" from(_0ka-1)to 0 step-1 do{
_0la=_i;
if(_this select _i!=wg3apk)exitWith{
};
};
private["_0i"];
_0i=[];
for "_i" from _0b to _0la do{
_0i set[count _0i,_this select _i];
};
_0i};
_0ma=[];
_0na=toArray(loadFile "\wasteland_settings.txt");
_i=0;
_0ka=count(_0na);
_0oa=true;
_0pa=false;
_0qa=[];
_0ra=[];
while{
_i<=_0ka}do{
_0da=_0na select _i;
_0sa=(if(_i<_0ka-1)then{
_0da==wguned&&(_0na select(_i+1))==wgzuwp}else{
false});
switch(true)do{
case(_0sa||_i==_0ka):{
_0qa=_0qa call _0ja;
_0ra=_0ra call _0ja;
if(count(_0qa)>0)then{
_0ma set[count _0ma,[toString _0qa,toString _0ra]];
};
_0oa=true;
_0pa=false;
_0qa=[];
_0ra=[];
_i=_i+1;
};
case(_0oa&&!_0pa&&_0da==wgq3kt):{
_0oa=false;
_0pa=true;
};
case(_0oa&&!_0pa):{
_0qa set[count _0qa,_0da];
};
case(!_0oa&&_0pa):{
_0ra set[count _0ra,_0da];
};
};
_i=_i+1;
};
{
missionNamespace setVariable[format["server_configFile_%1",_x select 0],_x select 1];
}forEach(_0ma);
_0ma};
wg4t6b={
private["_0na","_0va","_0ua","_0ta","_0wa","_0ya"];
wgkac2=[[objNull,daytime]];
wgzuge=random 1;
publicVariable "wgzuge";
sleep 2;
_0na=[];
{
_0na set[count _0na,_x select 1]}forEach wgkac2;
_0ta=false;
if((_0na call BIS_fnc_greatestNum)-(_0na call BIS_fnc_lowestNum)>12)then{
_0ua=[];
{
if(_x<12)then{
_0ua=_0ua+[_x+24];
}else{
_0ua=_0ua+[_x];
};
}forEach _0na;
_0ta=true;
}else{
_0ua=_0na;
};
_0va=_0ua call BIS_fnc_arithmeticMean;
_0wa=[];
{
_0xa=_x;
if(_0ta&&(_x<12))then{
_0xa=_x+24;
};
_0wa set[count _0wa,_0va-_0xa];
}forEach _0na;
diag_log "==== Time log wg4t6b ====";
diag_log format["Mean time: %1",_0va];
for "_i" from 0 to((count wgkac2)-1)do{
_0ya=abs(_0wa select _i)>(5*1/60);
diag_log format["WASTELAND :: doSync :: isNil{
send} = %1, _i = %2, count(syncArray) = %3, count(changes) = %4",isNil{
_0ya},_i,count(wgkac2),count(_0wa)];
if(isNil{
_0ya})then{
_0ya=false;
};
if(_0ya||_i==0)then{
wgh2co=_0wa select _i;
if(_i==0)then{
skipTime wgh2co;
}else{
(owner(wgkac2 select _i select 0))publicVariableClient "wgh2co";
};
};
diag_log format["[%1] %2, %3 :: %4 (%5)",if(_0ya)then{
"#"}else{
" "},(wgkac2 select _i select 0),name(wgkac2 select _i select 0),(wgkac2 select _i select 1),_0wa select _i]};
diag_log "=========================================";
};
