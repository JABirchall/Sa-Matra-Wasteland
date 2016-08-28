/*
	ArmA 3 Wasteland
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	Special build for Dwarden
	ESABQIEXHTFRGOFR
*/
#include "worlds\defines.hpp"

private["_01h","_0jj","_0kj","_01j","_0jh"];
_0jh=wgj6tl;
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
wgylyn set[_0kj,[_01h,"ELLIPSE","Border",wguhj2,"",1,[100,100]]];
_01j=wgylyn call wgub55;
wgylyn set[_01j,[_01h,"ICON","waypoint",wguhj2,"Diving zone",1,[0.6,0.6]]];
publicVariable "wgylyn";
if(isServer&&!isDedicated)then{
call wg8sk7};
_0nj=[_01h,random 90,random 360]call BIS_fnc_relPos;
_0ec=createVehicle["B_supplyCrate_F",_0nj,[],0,""];
[_0ec,false]call wghlp9;
_0ec allowDamage false;
_0ec setDir(random 360);
_0ec setVectorUp(surfaceNormal _0nj);
clearWeaponCargoGlobal _0ec;
clearMagazineCargoGlobal _0ec;
clearItemCargoGlobal _0ec;
clearBackpackCargoGlobal _0ec;
[_0ec,10000+(count(playableUnits)*200),database_loot_lootSet_geocache]call wgatlf;
_0fc=database_loot_backpackRareList select(database_loot_backpackRareListChances select floor(random(count(database_loot_backpackRareListChances))));
_0ec addBackpackCargoGlobal[_0fc select 0,1];
_0fb=firstBackpack _0ec;
clearWeaponCargoGlobal _0fb;
clearMagazineCargoGlobal _0fb;
clearItemCargoGlobal _0fb;
_07d=getPosASL _0ec;
while{
true}do{
if([getPosASL _0ec,5]call wgv527||(!alive _0ec)||isNull(_0ec)||(_0ec distance _07d)>20)exitWith{
};
sleep 1;
};
_0pj=[];
{
if((_0ec distance _x)<10)then{
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
wgylyn set[_01j,nil];
publicVariable "wgylyn";
if(isServer&&!isDedicated)then{
call wg8sk7};
if(_0jj!=-1)then{
wg3p15=wg3p15-[_0jj];
};