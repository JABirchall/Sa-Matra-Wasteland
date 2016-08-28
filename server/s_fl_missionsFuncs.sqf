/*
	ArmA 3 Wasteland
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	Special build for Dwarden
	ESABQIEXHTFRGOFR
*/

#include "worlds\defines.hpp"

wg8s95={
_09g=_this select 0;
_0ah=_this select 1;
_0bh=_this select 2;
if(typeName(_09g)==typeName(0))then{
_09g=[_09g];
};
_0ch=[];
_0dh=wg3p15-wgrjxh;
for "_i" from 0 to count(database_world_missionLocations)-1 do{
if(!(_i in _0dh))then{
if({
_x in _09g}count(database_world_missionLocations select _i select 1)>0)then{
_0eh=(database_world_missionLocations select _i select 0);
if(({
if(_0eh distance(database_world_missionLocations select _x select 0)<_0ah)exitWith{
1}}count wgrjxh)==0)then{
if(!([_0eh,_0bh]call wgv527))then{
_0ch set[count _0ch,_i];
};
};
};
};
};
if(count(_0ch)==0)exitWith{
-1};
(_0ch select floor(random(count _0ch)))};
wgxtqo={
wgqhno=[];
wg5bfu=0;
{
_0zc=_x spawn{
private["_my_index","_0hh","_0ih","_0jh"];
_0fh=wg5bfu;
wg5bfu=wg5bfu+1;
_0gh=call(_this select 0);
_0ge=serverTime+_0gh;
waitUntil{
sleep 10;
serverTime>_0ge};
_0hh=-1;
while{
true}do{
waitUntil{
sleep 10;
call(_this select 2)};
_07a=[];
_0ih=_this select 3;
waitUntil{
for "_i" from 0 to(count _0ih)-1 do{
if(!((_0ih select _i select 0)in wgqhno)&&(_0ih select _i select 0)!=_0hh)then{
for "_j" from 0 to(_0ih select _i select 1)-1 do{
_07a set[count _07a,_i];
};
};
};
if(count(_07a)==0&&(database_missions_forceStartMission||count(_0ih)==1))then{
if(count(_0ih)==1)then{
_07a=[0];
}else{
for "_i" from 0 to(count _0ih)-1 do{
if((_0ih select _i select 0)!=_0hh)then{
for "_j" from 0 to(_0ih select _i select 1)-1 do{
_07a set[count _07a,_i];
};
};
};
};
};
if(count(_07a)==0)then{
sleep 10;
};
count(_07a)!=0};
_0jh=_0ih select(_07a select floor(random(count(_07a))));
_0hh=_0jh select 0;
if(database_missions_noSameMissionBetweenThreads)then{
wgqhno set[count wgqhno,_0hh];
};
_0kh=-1;
waitUntil{
_0kh=[_0jh select 2,500,500]call wg8s95;
if(_0kh==-1)then{
sleep 10;
};
_0kh!=-1};
wgrjxh set[count wgrjxh,_0kh];
_0kh call(database_missions_codeList select _0hh);
if(database_missions_noSameMissionBetweenThreads)then{
wgqhno=wgqhno-[_0hh];
};
wgrjxh=wgrjxh-[_0kh];
_0ge=serverTime+(call(_this select 1));
waitUntil{
sleep 10;
serverTime>_0ge};
};
};
}forEach database_missions_threadsList;
};
