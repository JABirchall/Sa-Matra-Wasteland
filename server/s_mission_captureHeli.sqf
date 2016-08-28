/*
	ArmA 3 Wasteland
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	Special build for Dwarden
	ESABQIEXHTFRGOFR
*/
#include "worlds\defines.hpp"
private["_01h","_0jj","_0kj","_0jh"];
_0jh=wgawbf;
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
wgylyn set[_0kj,[_01h,"ICON",wgac7j,wg8wkr,"Downed helicopter"]];
publicVariable "wgylyn";
if(isServer&&!isDedicated)then{
call wg8sk7};
_0xj=database_vehicles_heliList select(database_vehicles_heliListChances select floor(random(count(database_vehicles_heliListChances))));
_0ef=createVehicle[_0xj select 0,_01h,[],0,"CAN_COLLIDE"];
_0ef setDir(random 360);
_0ef setVectorUp(surfaceNormal _01h);
_0ef disableTIEquipment true;
diag_log format["WASTELAND :: s_mission_captureHeli :: Vehicle %1 spawned at %2",_0xj select 0,getPos _0ef];
_0ef setFuel 0;
_0ef spawn{
sleep 30;
_this setDamage 0;
};
_0ef call wggwix;
_0ef setVariable["cleanup_ignore",true];
if(count(_0xj select 3)>0)then{
if((_0ef isKindOf "RHS_Mi24_base")&&typeOf(_0ef)!="RHS_Mi24Vt_vvs")then{
_0ef call wgip8r;
}else{
_0ef setVehicleAmmoDef((_0xj select 3 select 0)+random((_0xj select 3 select 1)-(_0xj select 3 select 0)));
_0ef call database_vehicles_heliSetupCode;
_0ef call wgbyrw;
};
};
clearWeaponCargoGlobal _0ef;
clearMagazineCargoGlobal _0ef;
clearItemCargoGlobal _0ef;
clearBackpackCargoGlobal _0ef;
[_0ef,(1000+(count(playableUnits)*50))*(_0xj select 2),database_loot_lootSet_common]call wgatlf;
wgc292 set[count wgc292,_0ef];
publicVariable "wgc292";
_02e=createGroup wgzaqo;
[_02e,_01h,(0.2+random 0.3),2+round(random 2),false]call wgkahj;
_02e setCombatMode "RED";
_02e allowFleeing 0;
_0oj=getPosATL _0ef;
_0oj set[2,0];
{
_0vf=[(_0oj select 0)+(_x select 0),(_0oj select 1)+(_x select 1),0];
_0gf=_02e addWaypoint[_0vf,10];
_0gf setWaypointType "MOVE";
}forEach[[0,0],[-25,25],[25,25],[25,-25],[-25,-25]];
_0gf=_02e addWaypoint[_0oj,10];
_0gf setWaypointType "CYCLE";
_0yj=false;
while{
true}do{
if(!_0yj)then{
if([_01h,30]call wgv527)then{
_03a=[vectorDir _0ef,vectorUp _0ef];
_0ef allowDamage false;
_0ef setDir(getDir _0ef);
_0ef setPosATL getPosATL _0ef;
_0ef setVectorDirAndUp _03a;
_0ef setVelocity[0,0,1];
_0ef allowDamage true;
_0yj=true;
};
};
if(((_0ef distance _01h)>50)||(!alive _0ef)||isNull(_0ef)||!(_0ef in wgc292))exitWith{
wgc292=wgc292-[_this];
publicVariable "wgc292";
};
sleep 1;
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
if((_01h distance _x)<200)then{
_0pj set[count _0pj,_x];
};
}forEach playableUnits;
_0rj=crew _0ef;
if({
alive _x}count _0rj>0)then{
_0sj=(_0rj select 0);
_02e=group _0sj;
_03h=side _02e;
{
if((side group _x==_03h&&_03h!=independent)||(group _x)==_02e)then{
if((_0ef distance _x)<50)then{
_0rj pushBack _x;
};
};
}forEach playableUnits;
if(alive _0ef)then{
wg4xk4=_0ef;
(owner _0sj)publicVariableClient "wg4xk4";
};
};
wg2d8t=[[_0rj,_0jh,"WIN"],[_0pj,_0jh,if(isNull(_0ef)||!alive(_0ef))then{
"BLOWN"}else{
"TAKEN"}],[false,_0jh,"END"]];
publicVariable "wg2d8t";
if(isServer&&!isDedicated)then{
call wgl4ku};
if(count(_0rj)>0)then{
{
[_x,wgk9fx,1]call wgsw69;
}forEach _0rj;
};
wgylyn set[_0kj,nil];
publicVariable "wgylyn";
if(isServer&&!isDedicated)then{
call wg8sk7};
if(_0jj!=-1)then{
wg3p15=wg3p15-[_0jj];
};
