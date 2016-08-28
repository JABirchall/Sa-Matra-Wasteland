/*
	ArmA 3 Wasteland
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	Special build for Dwarden
	ESABQIEXHTFRGOFR
*/
#include "worlds\defines.hpp"
private["_01h","_0jj","_0kj","_0jh"];
_0jh=wg62j5;
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
_01h=[_01h,random 100,random 360]call BIS_fnc_relPos;
wg2d8t=[[false,_0jh,"NEW"]];
publicVariable "wg2d8t";
if(isServer&&!isDedicated)then{
call wgl4ku};
_0kj=wgylyn call wgub55;
wgylyn set[_0kj,[_01h,"ICON",wg9kom,wguhj2,"Underwater wreck"]];
publicVariable "wgylyn";
if(isServer&&!isDedicated)then{
call wg8sk7};
_0lj=createVehicle["Land_UWreck_MV22_F",_01h,[],0,""];
_0lj setDir(random 360);
_0lj setVectorUp(surfaceNormal getPosATL(_0lj));
_0lj setVariable["can_salvage",true,true];
_0lj setDamage 1;
_0dc=database_loot_cratesListRare select(database_loot_cratesListRareChances select floor(random(count(database_loot_cratesListRareChances))));
_0ve=(_0dc select 0)select floor(random(count(_0dc select 0)));
_0nj=[_0lj,10+random 5,random 360]call BIS_fnc_relPos;
_0nj set[2,0];
_0ec=createVehicle[_0ve,_0nj,[],0,""];
[_0ec,false]call wghlp9;
_0ec allowDamage false;
_0ec setDir(random 360);
_0ec setVectorUp(surfaceNormal _0nj);
clearWeaponCargoGlobal _0ec;
clearMagazineCargoGlobal _0ec;
clearItemCargoGlobal _0ec;
clearBackpackCargoGlobal _0ec;
[_0ec,(7000+(count(playableUnits)*200))*(_0dc select 2),(_0dc select 3)]call wgatlf;
_02e=createGroup wgzaqo;
[_02e,getPosATL _0ec,(0.3+random 0.3),2+round(random 1),true]call wgkahj;
{
_01c=getPosATL _0ec;
_01c set[0,(_01c select 0)-5+random 10];
_01c set[1,(_01c select 1)-5+random 10];
_01c set[2,5];
_x setPosATL _01c;
_0f=(((getPosASL _0ec)select 2)+5+random 5);
_x swimInDepth _0f;
}forEach(units _02e);
_02e setCombatMode "RED";
_02e allowFleeing 0;
_0oj=getPosASL _0ec;
_0oj set[2,(_0oj select 2)+2];
{
_0vf=[(_0oj select 0)+(_x select 0),(_0oj select 1)+(_x select 1),(_0oj select 2)+(_x select 2)];
_0gf=_02e addWaypoint[_0vf,10];
_0gf setWaypointType "MOVE";
}forEach[[0,0,0],[-25,25,random 10],[25,25,random 10],[25,-25,random 10],[-25,-25,random 10]];
_0gf=_02e addWaypoint[_0oj,10];
_0gf setWaypointType "CYCLE";
_07d=getPosATL _0ec;
while{
true}do{
if((((getPosATL _0ec)distance _07d)>10)||(!alive _0ec)||isNull(_0ec)||({
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
sleep 300;
{
deleteVehicle _x}forEach(units _this);
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
if(_0jj!=-1)then{
wg3p15=wg3p15-[_0jj];
};
