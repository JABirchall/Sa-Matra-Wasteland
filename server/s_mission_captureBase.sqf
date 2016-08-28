/*
	ArmA 3 Wasteland
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	Special build for Dwarden
	ESABQIEXHTFRGOFR
*/
#include "worlds\defines.hpp"
private["_01h","_0jj","_0kj","_0jh"];
_0jh=wgun6f;
if(typeName _this==typeName 0)then{
_0jj=_this;
_01h=database_world_missionLocations select _0jj select 0;
}else{
_01h=_this;
_0jj=-1;
};
if(_0jj!=-1)then{
wg3p15 set[count wg3p15,_0jj];
};
wg2d8t=[[false,_0jh,"NEW"]];
publicVariable "wg2d8t";
if(isServer&&!isDedicated)then{
call wgl4ku};
_0kj=wgylyn call wgub55;
wgylyn set[_0kj,[_01h,"ICON",wgac7j,wg8wkr,"Capture base"]];
publicVariable "wgylyn";
if(isServer&&!isDedicated)then{
call wg8sk7};
_07a=[];
for "_i" from 0 to count(database_bases_collectionsList)-1 do{
if(database_bases_collectionsList select _i select 0 select 0 in[wgfid3,wgs73f,wgluia])then{
for "_j" from 0 to(database_bases_collectionsList select _i select 1)-1 do{
_07a set[count _07a,_i];
};
};
};
_0tj=_07a select floor(random(count(_07a)));
_0he=0.5+random 0.5;
_0uj=[_01h,random 360,_0he,_0tj]call wg75tp;
_0vj=[];
{
_0vj=_0vj+_x}forEach _0uj;
_02e=createGroup wgzaqo;
_0ud=+_01h;
_0ud set[0,(_0ud select 0)+40];
[_02e,_0ud,0.2+random 0.3,6+round(random 3),false]call wgkahj;
_02e setCombatMode "RED";
_02e allowFleeing 0;
_0oj=+_01h;
_0oj set[2,0];
{
_0vf=[(_0oj select 0)+(_x select 0),(_0oj select 1)+(_x select 1),0];
_0gf=_02e addWaypoint[_0vf,10];
_0gf setWaypointType "MOVE";
_0gf setWaypointBehaviour "COMBAT";
}forEach[[0,0],[-40,40],[40,40],[40,-40],[-40,-40]];
_0gf=_02e addWaypoint[_0oj,10];
_0gf setWaypointType "CYCLE";
while{
true}do{
if(({
alive _x}count(units _02e)==0)||({
_x distance _01h<200}count(units _02e)==0))exitWith{
};
sleep 10;
};
if({
alive _x}count(units _02e)>0)then{
((waypoints _02e)select(currentWaypoint _02e))setWaypointPosition[getPosASL(leader _02e),100];
while{
(count(waypoints _02e))>0}do{
deleteWaypoint((waypoints _02e)select 0);
};
_0gf=_02e addWaypoint[database_world_centerPosition,10];
_0gf setWaypointType "MOVE";
{
_x swimInDepth 0}forEach(units _02e);
_02e setCurrentWaypoint _0gf;
_02e spawn{
_0ge=serverTime+300;
waitUntil{
sleep 10;
({
alive _x}count(units _this)==0)||serverTime>_0ge};
{
_x setDamage 1;
}forEach(units _this);
_0ge=serverTime+600;
waitUntil{
sleep 5;
(count(units _this)==0)||serverTime>_0ge};
deleteGroup _this;
};
};
_0pj=[];
{
if((_01h distance _x)<150)then{
_0pj set[count _0pj,_x];
};
}forEach playableUnits;
wg2d8t=[[_0pj,_0jh,"WIN"],[false,_0jh,"END"]];
publicVariable "wg2d8t";
if(isServer&&!isDedicated)then{
call wgl4ku};
if(count(_0pj)>0)then{
{
[_x,wgk9fx,1]call wgsw69;
}forEach _0pj;
};
wgylyn set[_0kj,nil];
publicVariable "wgylyn";
if(isServer&&!isDedicated)then{
call wg8sk7};
[_01h,_0vj,_0jj]spawn{
_0wj=[_this select 0,_this select 1,1800,180]call wgenxf;
if(_0wj)then{
if(_this select 2!=-1)then{
wg3p15=wg3p15-[_this select 2];
};
};
};
