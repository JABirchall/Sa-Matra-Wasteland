/*
	ArmA 3 Wasteland
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	Special build for Dwarden
	ESABQIEXHTFRGOFR
*/
#include "worlds\defines.hpp"
private["_01h","_0jj","_0kj","_0jh"];
_0jh=wgmqlm;
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
wgylyn set[_0kj,[_01h,"ICON",wgac7j,wg8wkr,"Geo cache"]];
publicVariable "wgylyn";
if(isServer&&!isDedicated)then{
call wg8sk7};
_0ec=createVehicle["Box_FIA_Support_F",_01h,[],0,"CAN_COLLIDE"];
[_0ec,false]call wghlp9;
_0ec allowDamage false;
_0ec enableSimulation false;
_0ec setPosATL _01h;
_0ec enableSimulation true;
if(_01h select 2>0.05)then{
_0ec setVectorUp[0,0,1];
[_0ec,false]call wgqhik;
_0ec setVariable["R3F_restore_simulation",true,true];
call wgm6cs;
}else{
_0ec setVectorUp(surfaceNormal _01h);
};
clearWeaponCargoGlobal _0ec;
clearMagazineCargoGlobal _0ec;
clearItemCargoGlobal _0ec;
clearBackpackCargoGlobal _0ec;
[_0ec,5000+(count(playableUnits)*100),database_loot_lootSet_geocache]call wgatlf;
_0fc=database_loot_backpackRareList select(database_loot_backpackRareListChances select floor(random(count(database_loot_backpackRareListChances))));
_0ec addBackpackCargoGlobal[_0fc select 0,1];
_0fb=firstBackpack _0ec;
clearWeaponCargoGlobal _0fb;
clearMagazineCargoGlobal _0fb;
clearItemCargoGlobal _0fb;
while{
true}do{
if([_01h,3]call wgv527||((getPosATL _0ec)distance _01h)>3||(!alive _0ec)||isNull(_0ec))exitWith{
};
sleep 1;
};
_0pj=[];
{
if((_0ec distance _x)<10||(_01h distance _x)<10)then{
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
