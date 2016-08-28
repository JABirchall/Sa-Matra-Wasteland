/*
	ArmA 3 Wasteland
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	Special build for Dwarden
	ESABQIEXHTFRGOFR
*/
#include "worlds\defines.hpp"
private["_01h","_0jj","_0kj","_0jh"];
_0jh=wglfzo;
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
wgylyn set[_0kj,[_01h,"ICON",wgac7j,wg8wkr,"Aircraft wreck"]];
publicVariable "wgylyn";
if(isServer&&!isDedicated)then{
call wg8sk7};
_0lj=createVehicle["Land_Wreck_Plane_Transport_01_F",_01h,[],0,""];
_0mj=getPosATL(_0lj);
_0mj set[2,(_0mj select 2)-0.5];
_0lj setPosATL _0mj;
_0lj setDir(random 360);
_0lj setVectorUp(surfaceNormal getPosATL(_0lj));
_0lj setVariable["can_salvage",true,true];
_0lj setDamage 1;
_0dc=database_loot_cratesListRare select(database_loot_cratesListRareChances select floor(random(count(database_loot_cratesListRareChances))));
_0ve=(_0dc select 0)select floor(random(count(_0dc select 0)));
_0nj=[_0lj,10+random 5,random 360]call BIS_fnc_relPos;
_0ec=createVehicle[_0ve,_0nj,[],0,""];
[_0ec,false]call wghlp9;
_0ec allowDamage false;
_0ec setDir(random 360);
_0ec setVectorUp(surfaceNormal _0nj);
clearWeaponCargoGlobal _0ec;
clearMagazineCargoGlobal _0ec;
clearItemCargoGlobal _0ec;
clearBackpackCargoGlobal _0ec;
[_0ec,(5000+(count(playableUnits)*50))*(_0dc select 2),(_0dc select 3)]call wgatlf;
_02e=createGroup wgzaqo;
[_02e,getPosATL _0ec,(0.2+random 0.3),2+round(random 2),false]call wgkahj;
_02e setCombatMode "RED";
_02e allowFleeing 0;
_0oj=getPosATL _0ec;
_0oj set[2,0];
{
_0vf=[(_0oj select 0)+(_x select 0),(_0oj select 1)+(_x select 1),0];
_0gf=_02e addWaypoint[_0vf,10];
_0gf setWaypointType "MOVE";
}forEach[[0,0],[-25,25],[25,25],[25,-25],[-25,-25]];
_0gf=_02e addWaypoint[_0oj,10];
_0gf setWaypointType "CYCLE";
_07d=getPosATL _0ec;
while{
true}do{
if(((_0ec distance _07d)>5)||(!alive _0ec)||isNull(_0ec)||({
alive _x}count(units _02e)==0))exitWith{
};
sleep 1;
};
if({
alive _x}count(units _02e)==0)then{
sleep 10;
}else{
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
if((_0ec distance _x)<10||((getPosASL _0lj)distance _x)<50)then{
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
[_0lj,_0jj]spawn{
_0lj=_this select 0;
_0jj=_this select 1;
_0ge=serverTime+900;
waitUntil{
sleep 30;
serverTime>_0ge};
waitUntil{
sleep 10;
!([_0lj,500]call wgv527)};
deleteVehicle _0lj;
if(_0jj!=-1)then{
wg3p15=wg3p15-[_0jj];
};
};
