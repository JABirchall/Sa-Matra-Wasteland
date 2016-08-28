#include "worlds\defines.hpp"

#define wgsajs	["Truck_F", "rhs_truck"]

wgroyq={
	database_buildings_objLootNormalListChances=database_buildings_objLootNormalList call wg4ixv;
	database_buildings_objLootMilitaryListChances=database_buildings_objLootMilitaryList call wg4ixv;
	database_loot_backpackListChances=database_loot_backpackList call wg4ixv;
	database_loot_backpackRareListChances=database_loot_backpackRareList call wg4ixv;
	database_loot_cratesListNormalChances=database_loot_cratesListNormal call wg4ixv;
	database_loot_cratesListRareChances=database_loot_cratesListRare call wg4ixv;
	database_vehicles_normalListChances=database_vehicles_normalList call wg4ixv;
	database_vehicles_militaryListChances=database_vehicles_militaryList call wg4ixv;
	database_vehicles_boatsListChances=database_vehicles_boatsList call wg4ixv;
	database_vehicles_respawnableListChances=database_vehicles_respawnableList call wg4ixv;
	database_vehicles_armoredListChances=database_vehicles_armoredList call wg4ixv;
	database_vehicles_heliListChances=database_vehicles_heliList call wg4ixv;
	database_vehicles_ammotruckListChances=database_vehicles_ammotruckList call wg4ixv;
	database_vehicles_patrolVehiclesChances=database_vehicles_patrolVehicles call wg4ixv;
};
wg5xcu={
	database_world_boatsSpawnList=[database_world_boatsSpawnList,{
	random 1}]call wgz2mv;
	wg53py=[];
	for "_i" from 0 to(database_world_boatsCount-1)do{
		_pos=database_world_boatsSpawnList select _i;
		_0ca=_pos call wgcjvp;
		_id=count wg53py;
		wg53py set[_id,_0ca];
	};
};
wgfba7={
	waitUntil{!isNil{wg53py}};
	waitUntil{
		sleep 300;
		for "_i" from 0 to count(wg53py)-1 do{
			if(!alive(wg53py select _i))then{
				_pos=database_world_boatsSpawnList select floor(random(count(database_world_boatsSpawnList)));
				wg53py set[_i,_pos call wgcjvp];
			};
		};
	false
	};
};
wgcjvp={
/*
	_0za=database_vehicles_boatsList select(database_vehicles_boatsListChances select floor(random(count(database_vehicles_boatsListChances))));
	diag_log format ["_0za: %1",_0za];
	_0ca=createVehicle[_0za select 0,_this,[],0,"CAN_COLLIDE"];
	_0ca setDir(random 360);
	_0ca setPosASL _pos;
	_0ca setVehicleAmmoDef((_0za select 2 select 0)+random((_0za select 2 select 1)-(_0za select 2 select 0)));
	_0ca call wgbyrw;
	_0ca setVariable["last_used",serverTime];
	clearWeaponCargoGlobal _0ca;
	clearMagazineCargoGlobal _0ca;
	clearItemCargoGlobal _0ca;
	clearBackpackCargoGlobal _0ca;
	if(wguyj2&&!isNull(_0ca))then{
		wg4m59=wg4m59+[_0ca];
		_01a=format["stuff%1",random 1000000];
		wglfv3=wglfv3+[_01a];
		createMarker[_01a,_this];
		_01a setMarkerShape "ICON";
		_01a setMarkerColor "ColorBlue";
		_01a setMarkerType "c_ship";
		_01a setMarkerText typeOf(_0ca);
		_01a setMarkerSize[0.8,0.8];
	};
	*/
_0ca
};
wg9719={
	wga2x2=[];
	if(count(wg7bmm)==0)exitWith{
	format["No hangars to spawn respawnable!"]call wg16fu;
	systemChat "No hangars to spawn respawnable!";
	};
	true spawn{
		waitUntil{
			sleep 3600;
			_02a=wg7bmm select floor(random(count(wg7bmm)));
			_pos=_02a call wgtiz3;
			_0ca=[_pos,getDir(_02a)-20+random 40]call wgbgpd;
			_0ca spawn{
				sleep 1;
				_this call wggwix;
			};
			waitUntil{
				sleep 10;
				!alive _0ca;
			};
		};
	};
};
wg7ifn={};
wgtiz3={
	_03a=vectorDir _this;
	_pos=getPosATL _this;
	_04a=-10+random 20;
	_pos set[0,(_pos select 0)+(_03a select 0)*_04a];
	_pos set[1,(_pos select 1)+(_03a select 1)*_04a];
	_pos set[2,0];
	_pos
};
wgbgpd={
	_pos=_this select 0;
	_05a=_this select 1;
	_06a=database_vehicles_respawnableList select(database_vehicles_respawnableListChances select floor(random(count(database_vehicles_respawnableListChances))));
	_0ca=createVehicle[_06a select 0,_pos,[],0,"CAN_COLLIDE"];
	_0ca setDir _05a;
	_0ca setPosATL _pos;
	_0ca call database_vehicles_respawnableSetupCode;
	_0ca setVehicleAmmoDef((_06a select 2 select 0)+random((_06a select 2 select 1)-(_06a select 2 select 0)));
	_0ca call wgbyrw;
	_0ca setFuel 0;
	_0ca spawn{
		sleep 1;
		_this call wggwix;
	};
	_0ca setVariable["cleanup_ignore",true];
	clearWeaponCargoGlobal _0ca;
	clearMagazineCargoGlobal _0ca;
	clearItemCargoGlobal _0ca;
	clearBackpackCargoGlobal _0ca;
	[_0ca,500+random 200,database_loot_lootSet_vehicleCommon]call wgatlf;
	if(wguyj2&&!isNull(_0ca))then{
		wg4m59=wg4m59+[_0ca];
		_01a=format["stuff%1",random 1000000];
		wglfv3=wglfv3+[_01a];
		createMarker[_01a,_pos];
		_01a setMarkerShape "ICON";
		_01a setMarkerType "c_air";
		_01a setMarkerText typeOf(_0ca);
		_01a setMarkerSize[0.8,0.8];
	};
	_0ca
};

wg4ixv={
	[_this,1]call wgxch9
};

wgxch9={
	private["_07a","_0e","_0i"];
	_07a=_this select 0;
	_0e=_this select 1;
	_0i=[];
	for "_i" from 0 to count(_07a)-1 do{
		for "_j" from 0 to((_07a select _i select _0e)-1)do{
			_0i set[count _0i,_i];
		}
	};
	_0i
};
wgj2x3={
	wg6lzu=[];
	_08a=[];
	_09a=[];
	
	{
		_0l=_x select 0;
		_0ab=createVehicle[_0l,_x select 1,[],0,"CAN_COLLIDE"];
		_0ab setVectorDirAndUp[(_x select 3),(_x select 4)];
		_0ab setPosASL(_x select 1);
		if(({
		if(_0l isKindOf _x)exitWith{
		1}}count database_buildings_invincibleList)==1)then{
			[_0ab,false]call wghlp9;
		};
		
		switch(true)do{
			case(({
			if(_0l isKindOf _x)exitWith{1}}count database_buildings_lampsList)==1):{_0ab call wgh54g;};
			case(({if(_0l isKindOf _x)exitWith{1}}count database_buildings_enableSimulationList)==1):{};
			default{[_0ab,false]call wgthvn;};
		};
		if(({if(_0l isKindOf _x)exitWith{1}}count wgnqhn)==1)then{
			_0ab setVariable["R3F_LOG_disabled",true,true];
		};
		if(({if(_0l isKindOf _x)exitWith{1}}count database_buildings_markersExcludeList)==0)then{
				if(({if(_0l isKindOf(_x select 0))exitWith{1}}count database_buildings_markersList)==1)then{
				_0bb={if(_0l isKindOf(_x select 0))exitWith{_x select 1}}count database_buildings_markersList;
				_0g=boundingBox _0ab;
				_08a set[count _08a,[getPosATL _0ab,getDir _0ab,(_0g select 1 select 0)*(_0bb select 0),(_0g select 1 select 1)*(_0bb select 1)]];
			};
		};
		_09a set[count _09a,_0ab];
	}forEach database_world_newBuildingsList;
	call wgx46y;
	wg89bp=_08a;
	publicVariable "wg89bp";
};
wgedkf={
_0cb=[];
{
_0cb set[count _0cb,(_x select 0)nearestObject parseNumber(_x select 1)];
}forEach database_world_deleteBuildingsList;
_0db=[];
{
_0db set[count _0db,(_x select 0)nearestObject parseNumber(_x select 1)];
}forEach database_world_flipBuildingsList;
wgcvk9=_0cb;
wg297t=_0db;
publicVariable "wgcvk9";
publicVariable "wg297t";
{
_x setDamage 1.31337}forEach wgcvk9;
};
wg2ty1={
_0ca=_this;
_0eb=[];
if(count(backpackCargo _0ca)!=0)exitWith{
false};
for "_i" from 0 to count(database_loot_backpackList)-1 do{
for "_j" from 1 to(database_loot_backpackList select _i select 1)do{
_0eb set[count _0eb,_i];
};
};
_05=database_loot_backpackList select(_0eb select floor(random(count _0eb)));
_0ca addBackpackCargoGlobal[_05 select 0,1];
_0fb=firstBackpack(_0ca);
clearWeaponCargoGlobal _0fb;
clearMagazineCargoGlobal _0fb;
clearItemCargoGlobal _0fb;
true};
wgatlf={
_0ca=_this select 0;
_0gb=_this select 1;
_0hb=_this select 2;
_0ib=(if(isNil{
_this select 3})then{
false}else{
_this select 3});
if(isNull(_0ca))exitWith{
};
_0jb=[];
for "_i" from 0 to count(_0hb)-1 do{
for "_j" from 1 to(_0hb select _i select 1)do{
_0jb set[count _0jb,_i];
};
};
_0kb=0;
while{
_0gb>0&&_0kb<100}do{
_0kb=_0kb+1;
_0lb=_0jb select floor(random(count _0jb));
switch(_0hb select _0lb select 0)do{
case wgu7eq:{
_0mb=_0hb select _0lb select 3;
_0nb=_0mb select 0;
_0ob=_0mb select 1;
_0pb=_0mb select 2;
_0qb=(_0hb select _0lb select 2)select floor(random(count(_0hb select _0lb select 2)));
_07=database_loot_weaponsList select _0qb;
_0rb=false;
_0sb=false;
_0tb=random 1;
if(_0tb<(_0ob select 1))then{
database_loot_weaponDebugStats set[count database_loot_weaponDebugStats,_0qb];
if(typeName(_07 select 0)==typeName([]))then{
_0ca addWeaponCargoGlobal[(_07 select 0)select floor(random(count(_07 select 0))),1];
}else{
_0ca addWeaponCargoGlobal[_07 select 0,1];
};
if(wg6u4d in(_07 select 5))then{
_0ca addItemCargoGlobal["muzzle_HBADGER",1];
};
_0gb=_0gb-(_07 select 1);
_0rb=true;
};
if(_0tb>(_0ob select 0)||((wg9kb9 in(_07 select 5))&&_0rb))then{
_0ub=(if(typeName _0nb==typeName[])then{
(_0nb select 0)+random((_0nb select 1)-(_0nb select 0))}else{
_0nb});
_0vb=(if((count(_07 select 4)==0)||(_0pb<random 1))then{
_07 select 3}else{
_07 select 4});
_0wb=[];
_0xb=0;
if(count(_0vb)>1)then{
for "_i" from 0 to count(_0vb)-1 do{
for "_j" from 1 to(_0vb select _i select 1)do{
_0wb set[count _0wb,_i];
};
};
_0xb=_0wb select floor(random(count _0wb));
};
if((random 1>0.5)&&(wg2qcw in(_07 select 5)||wgfmhs in(_07 select 5)))then{
_0yb=[];
for "_i" from 0 to count(database_loot_glMags)-1 do{
for "_j" from 1 to(database_loot_glMags select _i select 1)do{
_0yb set[count _0yb,_i]};
};
for "_i" from 1 to ceil((_0vb select _0xb select 2)*_0ub)do{
_0ca addMagazineCargoGlobal[database_loot_glMags select(_0yb select floor(random(count _0yb)))select 0,1];
};
};
_0zb=ceil((_0vb select _0xb select 2)*_0ub);
_0ca addMagazineCargoGlobal[_0vb select _0xb select 0,_0zb];
if(!_0rb)then{
_0gb=_0gb-((1 max _0ub)*(_07 select 1))};
_0sb=true;
};
if(_0ib&&_0rb)then{
_0gb=0;
};
};
case wgf9b8:{
_07a=_0hb select _0lb select 2;
_01b=[];
for "_i" from 0 to count(_07a)-1 do{
for "_j" from 1 to(_07a select _i select 1)do{
_01b set[count _01b,_i]};
};
_02b=_01b select floor(random(count _01b));
_03b=(database_loot_miscChances select _02b)select floor(random(count(database_loot_miscChances select _02b)));
database_loot_miscDebugStats set[count database_loot_miscDebugStats,_03b];
switch(true)do{
case(_02b in[wgu2ib,wgszha,wglmd2,wg1f77]):{
_0ca addMagazineCargoGlobal[database_loot_miscList select _03b select 0,1];
};
case(_02b in[wg1q6h]):{
_0ca addWeaponCargoGlobal[database_loot_miscList select _03b select 0,1];
if(database_loot_miscList select _03b select 0=="Laserdesignator")then{
_0ca addMagazineCargoGlobal["Laserbatteries",1];
};
};
default{
_0ca addItemCargoGlobal[database_loot_miscList select _03b select 0,1];
};
};
_0gb=_0gb-(database_loot_miscList select _03b select 2);
};
};
};
};
wgx3zm={
waitUntil{
!isNil{
wgqheb}};
while{true}do{
		_04b=diag_tickTime+call(database_world_moreLootDelay);
		waitUntil{
		sleep 1;
		diag_tickTime>_04b};
		(call database_world_moreLootCountCode)call wgx2wp;
	};
};
wgx2wp={
_05b=+wgdggk;
_06b=0;
_07b=diag_tickTime;
for "_i" from 0 to(_this-1)do{
if(wgdggk<count(wgqheb))then{
_08b=wgqheb select wgdggk;
if(({
if((_08b select 0)distance _x<5)exitWith{
1}}count playableUnits)==0)then{
_09b=[_08b select 0,_08b select 1]call wgs3at;
if(wguyj2)then{
wg4m59=wg4m59+[_09b];
_01a=format["stuff%1",random 1000000];
wglfv3=wglfv3+[_01a];
createMarker[_01a,_08b select 0];
_01a setMarkerShape "ICON";
_01a setMarkerColor "ColorYellow";
_01a setMarkerType "waypoint";
_01a setMarkerAlpha 0.5;
_01a setMarkerText(typeOf _09b);
_01a setMarkerSize[0.4,0.4];
};
_06b=_06b+1;
};
wgdggk=wgdggk+1;
if(wgdggk==count(wgqheb))then{
if(database_world_moreLootCycle)then{
wgdggk=0;
}else{
diag_log format["WASTELAND :: Reached inside loot limit. wgdggk = %1",wgdggk];
};
};
};
};
wgw1ti=wgw1ti+_06b;
call wgx46y;
diag_log format["WASTELAND :: wgdggk was %1, now %2",_05b,wgdggk];
diag_log format["WASTELAND :: spawnMoreLoot took %1 ms, spawned %2 objects",(diag_tickTime-_07b),_06b];
};
wgf3nt={
private["_0ac"];
_0ac=[];
for "_i" from 1 to 16 do{
_0bc=48+(floor random(9));
_0ac=_0ac+[_0bc];
};
toString(_0ac)};
wgs3at={
private["_pos","_06a","_0cc","_05a"];
_pos=_this select 0;
if(typeName(_this select 1)==typeName(true))then{
_0cc=_this select 1;
_06a=(if(!_0cc)then{
database_buildings_objLootNormalList select(database_buildings_objLootNormalListChances select floor(random(count(database_buildings_objLootNormalListChances))))select 0}else{
database_buildings_objLootMilitaryList select(database_buildings_objLootMilitaryListChances select floor(random(count(database_buildings_objLootMilitaryListChances))))select 0});
}else{
_0cc=false;
_06a=_this select 1;
};
_05a=(if(count(_this)>2)then{
_this select 2}else{
random 360});
private["_0ab"];
_0ab=objNull;
if(typeName(_06a)==typeName(""))then{
}else{
switch(_06a)do{
case wgnxch:{
_0ab=createVehicle["Land_Sacks_goods_F",_pos,[],0,"CAN_COLLIDE"];
[_0ab,false]call wgthvn;
_0ab setPosATL _pos;
_0ab setDir _05a;
_0ab setVariable["food_count",7+round(random 3),true];
};
case wgv226:{
_0ab=createVehicle["Land_BarrelWater_F",_pos,[],0,"CAN_COLLIDE"];
[_0ab,false]call wgthvn;
_0ab setPosATL _pos;
_0ab setDir _05a;
_0ab setVariable["water_count",7+round(random 3),true];
};
case wggt31:{
_0ab=createVehicle["Land_Suitcase_F",_pos,[],0,"CAN_COLLIDE"];
[_0ab,false]call wgthvn;
_0ab setPosATL _pos;
_0ab setDir _05a;
};
case wg3xlz:{
_0ab=createVehicle["Land_CanisterFuel_F",_pos,[],0,"CAN_COLLIDE"];
[_0ab,false]call wgthvn;
_0ab setPosATL _pos;
_0ab setDir _05a;
};
case wgnggq:{
_0dc=database_loot_cratesListNormal select(database_loot_cratesListNormalChances select floor(random(count(database_loot_cratesListNormalChances))));
_0ec=(_0dc select 0)select floor(random(count(_0dc select 0)));
_0ab=createVehicle[_0ec,_pos,[],0,"CAN_COLLIDE"];
_0ab enableSimulation false;
_0ab setPosATL _pos;
_0ab setDir _05a;
_0ab allowDamage false;
[_0ab,false]call wghlp9;
_0ab enableSimulation true;
clearWeaponCargoGlobal _0ab;
clearMagazineCargoGlobal _0ab;
clearItemCargoGlobal _0ab;
clearBackpackCargoGlobal _0ab;
[_0ab,1500*(_0dc select 2)*(if(_0cc)then{
2}else{
1}),_0dc select 3]call wgatlf;
};
case wgof2t:{
_0fc=database_loot_backpackList select(database_loot_backpackListChances select floor(random(count(database_loot_backpackListChances))));
_0ab=createVehicle["GroundWeaponHolder",_pos,[],0,"CAN_COLLIDE"];
_0ab addBackpackCargoGlobal[_0fc select 0,1];
_0ab setPosATL _pos;
_0ab setDir _05a;
_0ab setVectorUp[0,0,1];
_0fb=firstBackpack _0ab;
clearWeaponCargoGlobal _0fb;
clearMagazineCargoGlobal _0fb;
clearItemCargoGlobal _0fb;
};
case wg915u:{
};
case wgybqw:{
};
case wgcv7o:{
_0ab=createVehicle["Land_Sack_F",_pos,[],0,"CAN_COLLIDE"];
[_0ab,false]call wgthvn;
_0ab setPosATL _pos;
_0ab setVariable["inventory_money",ceil((900+round(random 1500))/5)*5,true];
_0ab setVariable["inventory_key",true call wgf3nt,true];
};
case wg371c:{
_0ab=createVehicle["Land_Ammobox_rounds_F",_pos,[],0,"CAN_COLLIDE"];
[_0ab,false]call wgthvn;
_0ab setPosATL _pos;
_0ab setDir(random 360);
};
};
};
if(!isNull(_0ab))then{
if((_pos select 2)<=0)then{
_0ab setVectorUp(surfaceNormal _pos);
};
};
if(_06a in[wgnxch,wgv226])then{
wghvnd pushBack _0ab;
};
_0ab};


#define wgz87k 1

wgy3j8={
wg1rnm=0;
wgw5sa=0;
wgw1ti=0;
_0gc=[];
_0hc=[];
_0ic=[];
{
deleteMarker _x}forEach wglfv3;
wglfv3=[];
{
deleteVehicle _x}forEach wg4m59;
wg4m59=[];
_0jc=[];
for "_i" from 0 to count(database_world_lootBuildingsList)-1 do{
_0jc set[count _0jc,database_world_lootBuildingsList select _i select 0];
};
_0kc=[];
for "_i" from 0 to count(database_buildings_objSpawnList)-1 do{
for "_j" from 1 to(database_buildings_objSpawnList select _i select 1)do{
_0kc set[count _0kc,_i]};
};
{
if!(_x in wgikrs)then{
_0ab=_x;
if(({
if(_0ab isKindOf _x)exitWith{
1}}count database_buildings_invincibleList)==1)then{
[_0ab,false]call wghlp9;
};
if((({
if(_0ab isKindOf _x)exitWith{
1}}count database_buildings_removeList)>0||({
if(_0ab isKindOf _x)exitWith{
1}}count wgnqhn)>0)&&!(_0ab getVariable["R3F_LOG_disabled",false]))then{
_0gc set[count _0gc,_0ab];
}else{
_0cc=false;
{
if(_0ab isKindOf _x)exitWith{
_0cc=true}}forEach database_buildings_militaryList;
if(({
if(_0ab isKindOf _x)exitWith{
1}}count _0jc)==1)then{
for "_i" from 0 to count(database_world_lootBuildingsList)-1 do{
if(_0ab isKindOf(database_world_lootBuildingsList select _i select 0))exitWith{
_0ic set[count _0ic,[_0ab,_i,_0cc]];
};
};
};
_0lc=boundingBox _0ab;
_0mc=abs(_0lc select 1 select 0)min abs(_0lc select 1 select 1);
_0nc=abs(_0lc select 1 select 0)max abs(_0lc select 1 select 1);
if(_0mc>=wgz87k)then{
if({
_0ab isKindOf _x}count database_world_parseBuildingsExcludeList==0)then{
_0hc set[count _0hc,[_0ab,_0mc,_0nc,_0cc]];
};
};
};
};
}forEach(nearestObjects[database_world_centerPosition,database_world_parseBuildingsList,database_world_centerRadius]);
wgjkd4=[];
{
wgjkd4 set[count wgjkd4,[_x,getPosATL _x]];
deleteCollection _x;
}forEach _0gc;
publicVariable "wgjkd4";
wgdggk=0;
wgqheb=[];
_0oc=[];
_0pc=[];
_0qc=[];
{
_0rc=count(database_world_lootBuildingsList select(_x select 1)select 1);
_0ka=_0rc call database_world_lootBuildingsCountCode;
_0sc=[];
_0ab=_x select 0;
_0cc=_x select 2;
if(_0cc)then{
_0ka=(_0ka*2)min _0rc;
_0ka=_0ka max 1;
};
{
_0sc set[count _0sc,[_0ab modelToWorld _x,_0cc,_0ab]];
}forEach(database_world_lootBuildingsList select(_x select 1)select 1);
_0sc=[_0sc,{
random 1}]call wgz2mv;
_0tc=({
if(getPosASL _0ab in _x)exitWith{
1}}count wgciid>0);
if(wguyj2)then{
_01a=format["stuff%1",random 1000000];
wglfv3=wglfv3+[_01a];
createMarker[_01a,getPosATL _0ab];
_01a setMarkerShape "ICON";
_01a setMarkerColor(if(_x select 2)then{
"ColorRed"}else{
"ColorBlue"});
_01a setMarkerType "waypoint";
_01a setMarkerAlpha 0.5;
_01a setMarkerText(if(_0ka==0)then{
"-"}else{
format["%1/%2 (%3%4)",_0ka,_0rc,ceil(_0ka/_0rc*100),"%"]});
_01a setMarkerSize[0.4,0.4];
};
for "_i" from 0 to(_0rc-1)do{
_pos=_0sc select _i select 0;
if(database_world_lootBuildingsList select(_x select 1)select 2)then{
_pos set[2,0];
};
if(_i<=(_0ka-1))then{
_0oc set[count _0oc,_0sc select _i];
_0ab=[_pos,_0sc select _i select 1]call wgs3at;
wgw1ti=wgw1ti+1;
}else{
if(_0tc)then{
_0pc set[count _0pc,_0sc select _i];
}else{
_0qc set[count _0qc,_0sc select _i];
};
};
};
}forEach _0ic;
wgqheb=([_0oc,{
random 1}]call wgz2mv)+([_0pc,{
random 1}]call wgz2mv)+([_0qc,{
random 1}]call wgz2mv);
diag_log format["USED LOOT POSITIONS: %1",count(_0oc)];
wgdggk=count(_0oc);
_0uc=0;
_0vc=0;
_0wc=[];
_0xc=floor(random database_buildings_carSpawnRate);
{
_0ab=(_x select 0);
_0mc=(_x select 1);
_0nc=(_x select 2);
_0cc=(_x select 3);
_02a=false;
_0cc=false;
_0yc=database_buildings_objSpawnRate;
_0ec=database_buildings_carSpawnRate;
{
if(_0ab isKindOf(_x select 0))exitWith{
_0yc=_x select 1}}forEach database_buildings_objSpawnRates;
{
if(_0ab isKindOf(_x select 0))exitWith{
_0ec=_x select 1}}forEach database_buildings_carSpawnRates;
{
if(_0ab isKindOf _x)exitWith{
_02a=true;
_0wc set[count _0wc,_0ab];
}}forEach database_buildings_hangarsList;
{
if(_0ab isKindOf _x)exitWith{
_0cc=true}}forEach database_buildings_militaryList;
while{
_0yc>0}do{
if(floor(_0yc)==_0yc||(random 1)<(_0yc-floor(_0yc)))then{
_0zc=database_buildings_objSpawnList select(_0kc select floor(random(count _0kc)))select 0;
_01c=getPosATL _0ab;
_02c=_0nc;
if(_02a)then{
_02c=0;
};
_01c set[0,(_01c select 0)+(_02c+random 35)*(-1+2*floor(random 2))];
_01c set[1,(_01c select 1)+(_02c+random 35)*(-1+2*floor(random 2))];
_01c set[2,0];
if(!surfaceIsWater(_01c))then{
_09b=createVehicle[_0zc,_01c,[],0,""];
_09b setDir(random 360);
_03c=getPosATL _09b;
_09b setVectorUp(surfaceNormal _03c);
switch(_0zc)do{
case "Land_Canal_WallSmall_10m_F":{
_03c set[2,(_03c select 2)+3];
};
case "Land_Canal_Wall_Stairs_F":{
_03c set[2,(_03c select 2)+3];
};
case "Land_Canal_Wall_10m_F":{
_03c set[2,(_03c select 2)+3];
};
case "Land_Concrete_SmallWall_8m_F":{
_03c set[2,(_03c select 2)+1.3];
};
case "Land_Concrete_SmallWall_4m_F":{
_03c set[2,(_03c select 2)+1.3];
};
};
_09b setPosATL _03c;
[_09b,false]call wgthvn;
wgikrs pushBack _09b;
_0uc=_0uc+1;
wgw5sa=wgw5sa+1;
};
};
_0yc=_0yc-1;
};
if(_0xc>=_0ec||(_0cc&&(random 4<1)))then{
	_04c=(if(_0cc)then{database_vehicles_militaryList select(database_vehicles_militaryListChances select floor(random(count database_vehicles_militaryListChances)))select 0}
	else{
		database_vehicles_normalList select(database_vehicles_normalListChances select floor(random(count database_vehicles_normalListChances)))select 0});
		_05c=(getPosATL _0ab);
		_05c set[0,(_05c select 0)-30+(random 60)];
		_05c set[1,(_05c select 1)-30+(random 60)];
		_pos=_05c findEmptyPosition[(if(_02a)then{0}else{_0nc}),(_0nc+random 30),_04c];
		_06c=(if(count(_pos)==0)then{false}else{if(surfaceIsWater(_pos))then{false}else{if(count(_pos nearObjects["LandVehicle",7])>0)then{false}else{true}}});
		if(_06c)then{
			_0ca=[_04c,_pos]call wgmxxt;
			_07c=({if(_04c isKindOf _x)exitWith{1}}count wgsajs)>0;
			if(_0cc)then{
				[_0ca,(if(_07c)then{
				(1000+random 2000)}else{
				(300+random 700)}),database_loot_lootSet_vehicleGoodstuff]call wgatlf;
			}else{
				if(random 10>3||_07c)then{
					[_0ca,(if(_07c)then{(500+random 500)}else
					{(300+random 300)}),database_loot_lootSet_vehicleCommon,!_07c]call wgatlf;
				};
			};
			_0ca call wggwix;

			if(random 1>0.8)then{
				_0ca call wgvcwl;
			};

			_0ca setFuel 0.1+random 0.9;
			if(wguyj2&&!isNull(_0ca))then{
				wg4m59=wg4m59+[_0ca];
				_01a=format["stuff%1",random 1000000];
				wglfv3=wglfv3+[_01a];
				createMarker[_01a,_pos];
				_01a setMarkerShape "ICON";
				_01a setMarkerColor(if(_0cc)then{
				"ColorRed"}else{
				"ColorBlack"});
				_01a setMarkerType "waypoint";
				_01a setMarkerText _04c;
				_01a setMarkerSize[0.4,0.4];
			};
			_0vc=_0vc+1;
			wg1rnm=wg1rnm+1;
			if(random 10<3)then{
			_0xc=floor(random _0ec)}else{
			_0xc=0};
		};
};
_i=-1;
if(!isNil{
_i=({
if(getPosASL _0ab in _x)exitWith{
_forEachIndex}}forEach wgciid);
_i})then{
(wgfalm select _i select 8)pushBack[_0ab,getPosATL _0ab,_0mc,_0nc,_0cc];
};
_0xc=_0xc+1;
}forEach _0hc;
diag_log format["SPAWNED OBJECTS: %1",(_0uc)];
diag_log format["SPAWNED VEHICLES: %1",(_0vc)];
wg7bmm=_0wc;
call wgx46y;
};
wgh54g={
	if(wgvrho)exitWith{};
	_this spawn{
		_0l=typeOf _this;
		_pos=visiblePositionASL _this;
		_05a=getDir _this;
		while{
		true}do{
		if(!alive _this)then{
			sleep 900;
			deleteVehicle _this;
			_this=createVehicle[_0l,_pos,[],0,"CAN_COLLIDE"];
			_this setDir _05a;
			_this setPosASL _pos;
			[_this,false]call wghlp9;
		};
		sleep 900;
		};
	};
};

wgmxxt={
/*
	private["_0l","_pos","_05a"];
	_0l=_this select 0;
	_pos=_this select 1;
	_05a=(if(count(_this)>2)then{_this select 2}else{random 360});
	_0ca=createVehicle[_0l,_pos,[],0,"CAN_COLLIDE"];
	_0ca allowDamage false;
	_0ca setDir _05a;
	_0ca setVectorUp(surfaceNormal _pos);
	clearWeaponCargoGlobal _0ca;
	clearMagazineCargoGlobal _0ca;
	clearItemCargoGlobal _0ca;
	clearBackpackCargoGlobal _0ca;
	_0ca spawn{
		sleep 1;
		_this setVelocity[0,0,1];
		sleep 10;
		_this allowDamage true;
	};
	_0ca
	*/
};

wgvcwl={
	_08c=(configFile>>"CfgVehicles">>typeOf(_this)>>"HitPoints");
	_0ea=(if(random 1>0.5)then{random 0.5}else{0});
	if(_0ea!=0)then{
		_this setDamage _0ea;
	};
	/*
	for "_i" from 0 to count(_08c)-1 do{
		_09c=if(random 1>0.1)then{if(configName(_08c select _i)in database_vehicles_glassList)then{if(random 2>1)then{1}else{random 1}}else{0.4+random 0.5}}else{0};
		_this setHitPointDamage[configName(_08c select _i),_09c];
	};
	*/
};
wgbyrw={
private["_0ad","_0zb","_0cd","_0bd","_0ga"];
_0ad=configFile>>"CfgVehicles">>typeof _this>>"turrets";
if(count(_0ad)>0)then{
_0ga=[0];
for "_i" from 0 to(count(_0ad)-1)do{
if(configName(inheritsFrom(_0ad select _i))=="MainTurret")then{
_0bd=getArray((_0ad select _i)>>"magazines");
_0ga=[_i];
};
};
if(isNil "_0bd")then{
_0bd=getArray((_0ad select(_0ga select 0))>>"magazines");
};
}else{
_0bd=getArray(configFile>>"CfgVehicles">>typeof _this>>"magazines");
_0ga=[-1];
};
if(count(_0bd)<1)exitWith{
};
_0cd=[];
{
private["_0e"];
_0e=-1;
for "_i" from 0 to count(_0cd)-1 do{
if((_0cd select _i select 0)==_x)exitWith{
_0e=_i;
};
};
if(_0e==-1)then{
_0cd set[count _0cd,[_x,1]];
}else{
_0cd set[_0e,[_x,(_0cd select _0e select 1)+1]];
};
}forEach _0bd;
_0zb=[];
{
_0zb set[count _0zb,[_x select 0,0]];
}forEach _0cd;
{
private["_0e"];
_0e=-1;
for "_i" from 0 to count(_0zb)-1 do{
if((_0zb select _i select 0)==_x)exitWith{
_0e=_i;
};
};
if(_0e>=0&&_0e<count(_0zb))then{
_0zb set[_0e,[_x,(_0zb select _0e select 1)+1]];
};
}forEach(_this magazinesTurret _0ga);
for "_i" from 0 to(count _0cd)-1 do{
for "_j" from 1 to((_0cd select _i select 1)-(_0zb select _i select 1))do{
_this addMagazine[(_0cd select _i select 0),0];
};
};
};
wgip8r={
private["_0dd","_0ed","_0ad"];
_this setVehicleAmmo 0;
_0dd=getArray(configFile>>"CfgVehicles">>(typeOf _this)>>"weapons");
{
_0ed=_x;
_this addMagazineTurret[_0ed,[-1]];
if({
if(_0ed in getArray(configFile>>"CfgWeapons">>_x>>"magazines"))exitWith{
1}}count _0dd>0)then{
_this setMagazineTurretAmmo[_0ed,1,[-1]];
};
}forEach getArray(configFile>>"CfgVehicles">>(typeOf _this)>>"magazines");
_0ad=configFile>>"CfgVehicles">>typeOf(_this)>>"turrets";
for "_i" from 0 to count(_0ad)-1 do{
_0dd=getArray((_0ad select _i)>>"weapons");
{
_0ed=_x;
if(_i==0&&{
if(_0ed in getArray(configFile>>"CfgWeapons">>_x>>"magazines"))exitWith{
1}}count _0dd>0)then{
_this addMagazine[_0ed,1];
}else{
_this addMagazineTurret[_0ed,[_i]];
};
}forEach getArray((_0ad select _i)>>"magazines");
};
};
wggwix={
private["_0fd","_0gd"];
if(typeName(_this)==typeName([]))then{
_0fd=_this select 0;
_0gd=_this select 1;
}else{
_0fd=_this;
_0gd=nil;
};
_0hd=-1;
for "_i" from 0 to count(database_paints_setsList)-1 do{
if(_0fd isKindOf(database_paints_setsList select _i select 0))exitWith{
_0hd=_i;
};
};
if(_0hd==-1)exitWith{
false};
if(isNil{
_0gd})then{
_0gd=database_paints_setsList select _0hd select 1;
};
if(!(_0fd call _0gd))exitWith{
false};
_0id=database_paints_setsList select _0hd select 2;
_0jd=_0id call wg4ixv;
_0kd=_0id select(_0jd select floor(random(count(_0jd))));
_0ma=[_0kd select 2,_0kd select 3]call wgz6uu;
[_0fd,_0ma select 0,_0ma select 1]call wg6axv;
};
wgz6uu={
_0ld=[];
_0md=[];
if(count(_this select 0)>0)then{
_07a=[(_this select 0),0]call wgxch9;
_0nd=[(_this select 0)select(_07a select floor(random(count(_07a)))),0]call BIS_fnc_removeIndex;
{
_0ld set[count _0ld,[_x select 0,(_x select 1)select floor(random(count(_x select 1)))]];
}forEach _0nd;
};
if(count(_this select 1)>0)then{
_07a=[(_this select 1),0]call wgxch9;
_0md=((_this select 1)select(_07a select floor(random(count(_07a)))))select 1;
};
[_0ld,_0md]};
wg6axv={
{
[(_this select 0),_x select 0,_x select 1]call wgfh4d;
}forEach(_this select 1);
{
(_this select 0)animate _x;
}forEach(_this select 2);
call wgtp7l;
};
wggqr9={
_0od=+wgfalm;
_0od=[_0od,{
random 1}]call wgz2mv;
_0pd=0;
_0qd=false;
_0e=0;
_06a=[];
{
if(_x select 1>0)then{
_06a set[count _06a,_x];
};
}forEach database_buildings_objRareList;
/*
while{!_0qd&&(_0pd<20)}do{
	//_0rd=floor(random(count _0od));
	_0rd=1; //Modifier pour tenter de corriger une erreur
	_0sd=(_06a select _0e select 0);
	if(typeName _0sd==typeName[])then{
	_0sd=_0sd select floor(random(count _0sd))};
	_0td=round((_0od select _0rd select 3)/2);
	_0ud=[(_0od select _0rd select 2),_0td+random _0td,random 360]call BIS_fnc_relPos;
	_0ud=_0ud findEmptyPosition[1,30,_0sd];
	if(count(_0ud)>0)then{
	_0na=_06a select _0e;
	_0na set[1,(_0na select 1)-1];
	_06a set[_0e,_0na];
	if((_06a select _0e select 1)<=0)then{
		_0e=_0e+1;
		if(_0e>=(count _06a))then{
			_0qd=true;
		};
	};
	_0ab=createVehicle[_0sd,_0ud,[],0,"CAN_COLLIDE"];
	_0ab setDir(random 360);
	_0ab setVectorUp(surfaceNormal _0ud);
	if(_0ab isKindOf "Cargo_Tower_base_F")then{
	[_0ab,false]call wghlp9;
	};
	if(wguyj2)then{
	_01a=format["markr%1",random 1000000];
	_0vd=createMarker[_01a,getPos _0ab];
	_0vd setMarkerShape "ICON";
	_01a setMarkerColor "ColorBlack";
	_01a setMarkerType "waypoint";
	_01a setMarkerText format["[Rare] %1",_0sd];
	};
	wgikrs pushBack _0ab;
	};
	_0pd=_0pd+1;
};
*/
call wglxj9;
};
wgi6ne={
{
_0ca=_x;
_07c=({
if(_0ca isKindOf _x)exitWith{
1}}count wgsajs)>0;
[_0ca,(if(_07c)then{
500+random 500}else{
300+random 100}),database_loot_lootSet_vehicleCommon,!_07c]call wgatlf;
}forEach _this;
};
wgy25m={
	_07b=diag_tickTime;
	_0wd=wgfalm select(_this select 0);
	_0xd=_this select 1;
	_0yd=0;
	_0zd=[_0wd select 8,{random 1}]call wgz2mv;
	_0pd=15;
	_01d=0;
while{_0pd>0&&_0yd<_0xd&&_01d<count(_0zd)}do{
	_0cc=(_0zd select _01d select 4);
	_0nc=(_0zd select _01d select 3);
	_04c=(if(_0cc)then{
	database_vehicles_militaryList select(database_vehicles_militaryListChances select floor(random(count database_vehicles_militaryListChances)))select 0}else
	{database_vehicles_normalList select(database_vehicles_normalListChances select floor(random(count database_vehicles_normalListChances)))select 0});
	_05c=(_0zd select _01d select 1);
	_05c set[0,(_05c select 0)-30+(random 30)];
	_05c set[1,(_05c select 1)-30+(random 30)];
	_pos=_05c findEmptyPosition[_0nc,(_0nc+random 30),_04c];
	_06c=(if(count(_pos)==0)then{false}else
	{
	if(surfaceIsWater(_pos))then{false}else{
	if(count(_pos nearObjects["LandVehicle",7])>0)then{false}else{true}}});
	if(_06c)then{
	_0ca=[_04c,_pos]call wgmxxt;
	_07c=({
	if(_04c isKindOf _x)exitWith{
	1}}count wgsajs)>0;
	if(_0cc)then{[_0ca,(if(_07c)then{(1000+random 2000)}else{(300+random 700)}),database_loot_lootSet_vehicleGoodstuff]call wgatlf;
	}else{[_0ca,(if(_07c)then{(500+random 500)}else{(300+random 300)}),database_loot_lootSet_vehicleCommon,!_07c]call wgatlf;};
	_0ca call wggwix;
	if(random 1>0.8)then{_0ca call wgvcwl;};
	_0ca setFuel 0.1+random 0.9;
	if(wguyj2)then{
	wg4m59=wg4m59+[_0ca];
	_01a=format["stuff%1",random 1000000];
	wglfv3=wglfv3+[_01a];
	createMarker[_01a,_pos];
	_01a setMarkerShape "ICON";
	_01a setMarkerColor(if(_0cc)then{
	"ColorRed"}else{
	"ColorBlack"});
	_01a setMarkerType "mil_box";
	_01a setMarkerText format["[NEW] %1",_04c];
	_01a setMarkerSize[0.5,0.5];
	};
_0yd=_0yd+1;
};
_0pd=_0pd-1;
_01d=_01d+1;
};
diag_log format["WASTELAND :: spawnTownVehicles took %1 ms, spawned %2 vehicles",diag_tickTime-_07b,_0yd];
wg1rnm=wg1rnm+_0yd;
_0yd};
wghnwb={
_pos=_this select 0;
_02d=_this select 1;
_09a=[];
_pos set[2,0];
{
if(!(_x isKindOf "Man")&&!(_x isKindOf "ThingEffect"))then{
_03d=getPosATL(_x);
_03d set[2,0];
if(_pos distance _03d<_02d)then{
_09a set[count _09a,_x];
};
};
}forEach allMissionObjects "All";
if(count(_09a)==0)exitWith{
systemChat "Nothing found"};
_0sa=toString[13,10];
_04d=toString[9];
_05d="["+_0sa;
_0ka=0;
{
_0ka=_0ka+1;
_06d=getPosATL _x;
_06d set[0,(_06d select 0)-(_pos select 0)];
_06d set[1,(_06d select 1)-(_pos select 1)];
_05d=_05d+_04d+str([typeOf _x,_06d,getDir _x])+(if(_0ka==count(_09a))then{
""}else{
","})+_0sa;
}forEach _09a;
_05d=_05d+"]";
diag_log _05d;
copyToClipboard _05d;
systemChat format["Count: %1",count(_09a)];
_05d};
wglitn={
[(cos(_this select 1)*(_this select 0 select 0))+(sin(_this select 1)*(_this select 0 select 1)),(-(sin(_this select 1))*(_this select 0 select 0))+(cos(_this select 1)*(_this select 0 select 1)),_this select 0 select 2]};
wg1wnb={
_07d=_this select 0;
_08d=_this select 1;
_09d=_this select 2;
_0ae=if(isNil{
_this select 3})then{
false}else{
_this select 3};
_0ba=if(count(_this)>3)then{
if(isNil{
_this select 4})then{
false}else{
_this select 4}}else{
false};
_0i=[];
{
private["_pos"];
_0be=[_x select 1,_08d]call wglitn;
_pos=[];
for "_i" from 0 to 2 do{
_pos set[_i,(_07d select _i)+(_0be select _i)]};
if(_0ae)then{
_0i set[count _0i,[_pos,(_x select 2)+_08d]];
}else{
_0ab=createVehicle[_x select 0,_pos,[],0,"CAN_COLLIDE"];
if(_0ba)then{
_0ab enableSimulation false;
};
_0ab setPosATL _pos;
_0ab setDir(_x select 2)+_08d;
_0ab setVectorUp(surfaceNormal _pos);
_0i set[count _0i,_0ab];
};
}forEach _09d;
_0i};
wgenxf={
_pos=_this select 0;
_09a=_this select 1;
_0ce=_this select 2;
_0de=_this select 3;
_0ee=true;
_0fe=1;
_0kb=20;
_0ge=serverTime+_0ce;
waitUntil{
sleep 10;
serverTime>_0ge};
while{
_0ee&&(_0kb>0)&&(_0fe>=0)&&(_0kb>_0fe)}do{
_0ee=false;
{
if((_x distance _pos)<100)then{
_0ee=true;
_0fe=_0fe+1;
}}forEach playableUnits;
if(!_0ee)then{
_0fe=_0fe-1;
_0ee=true;
};
_0kb=_0kb-1;
_0ge=serverTime+_0de;
waitUntil{
sleep 10;
serverTime>_0ge};
};
_0i=false;
if(_0kb<0||_0fe<0)then{
_0i=true;
{
if((_x distance _pos)<60)then{
deleteVehicle _x;
};
}forEach _09a;
};
_0i};
wg75tp={
_pos=_this select 0;
_05a=_this select 1;
_0he=_this select 2;
_0ie=_this select 3;
_0je=(if(isNil{
_this select 4})then{
[1,1]}else{
_this select 4});
_0ke={
floor(_this*(((_0he/2)+random(_0he/2))max random 0.5))};
_0le=database_bases_collectionsList select _0ie;
_0me=count(_0le select 3)call _0ke;
_0ne=(count(_0le select 5)*_0he)min round(2+random 2);
_0oe=(count(_0le select 6)*_0he)min 5;
_0pe=[];
_0qe=[_pos,_05a,(_0le select 2),false,true]call wg1wnb;
{
[_x,false]call wgthvn;
}forEach _0qe;
_0pe=_0pe+[_0qe];
{
wgikrs pushBack _x}forEach _0qe;
_0re=[];
_0se=[[_pos,_05a,(_0le select 3),true]call wg1wnb,{
random 1}]call wgz2mv;
for "_i" from 0 to((count(_0se)min _0me)-1)do{
_0cc=(random 2>1);
_0te=switch(true)do{
case(_0cc):{
database_vehicles_normalList select(database_vehicles_normalListChances select floor(random(count database_vehicles_normalListChances)))select 0};
default{
database_vehicles_militaryList select(database_vehicles_militaryListChances select floor(random(count database_vehicles_militaryListChances)))select 0};
};
_0ca=[_0te,_0se select _i select 0,_0se select _i select 1]call wgmxxt;
_07c=({
if(_0te isKindOf _x)exitWith{
1}}count wgsajs)>0;
if(_0cc)then{
[_0ca,(if(_07c)then{
(1000+random 2000)}else{
(300+random 700)}),database_loot_lootSet_vehicleGoodstuff]call wgatlf;
}else{
if(random 10>3||_07c)then{
[_0ca,(if(_07c)then{
(500+random 500)}else{
(300+random 300)}),database_loot_lootSet_vehicleCommon,!_07c]call wgatlf;
};
};
[_0ca,300+random 200,database_loot_lootSet_vehicleCommon]call wgatlf;
_0ca call wggwix;
if(random 1>0.8)then{
_0ca call wgvcwl;
};
_0ca setFuel 0.1+random 0.9;
_0re set[count _0re,_0ca];
};
_0pe=_0pe+[_0re];
_0ue=[];
_0se=[[_pos,_05a,(_0le select 4),true]call wg1wnb,{
random 1}]call wgz2mv;
for "_i" from 0 to((count(_0se)min(_0je select 0))-1)do{
_0dc=database_loot_cratesListNormal select(database_loot_cratesListNormalChances select floor(random(count(database_loot_cratesListNormalChances))));
_0ve=(_0dc select 0)select floor(random(count(_0dc select 0)));
_0ec=createVehicle[_0ve,(_0se select _i select 0),[],0,"CAN_COLLIDE"];
_0ec enableSimulation false;
_0ec setPosATL(_0se select _i select 0);
_0ec setDir(_0se select _i select 1);
_0ec allowDamage false;
[_0ec,false]call wghlp9;
_0ec enableSimulation true;
clearWeaponCargoGlobal _0ec;
clearMagazineCargoGlobal _0ec;
clearItemCargoGlobal _0ec;
clearBackpackCargoGlobal _0ec;
[_0ec,5000*(_0dc select 2)*(_0je select 1),_0dc select 3]call wgatlf;
_0ue set[count _0ue,_0ec];
};
_0pe=_0pe+[_0ue];
_0we=[_0le select 5,{
random 1}]call wgz2mv;
_0xe=[_pos,_05a,[_0we,0,(count(_0we)min _0ne)-1]call BIS_fnc_subSelect]call wg1wnb;
{
switch(typeOf _x)do{
case "Land_Sacks_goods_F":{
_x setVariable["food_count",7+round(random 3),true];
};
case "Land_BarrelWater_F":{
_x setVariable["water_count",7+round(random 3),true];
};
};
[_x,false]call wgthvn;
}forEach _0xe;
_0pe=_0pe+[_0xe];
{
wghvnd pushBack _x}forEach _0xe;
_0we=[_0le select 6,{
random 1}]call wgz2mv;
_0ye=[_pos,_05a,[_0we,0,(count(_0we)min _0oe)-1]call BIS_fnc_subSelect]call wg1wnb;
{
[_x,false]call wgthvn;
}forEach _0ye;
_0pe=_0pe+[_0ye];
_0pe=_0pe+[[],[],[],[]];
call wgx46y;
_0pe};
wgf1lx={
_0ze=_this select 0;
_01e=objNull;
if(!surfaceIsWater(getPosATL _0ze))then{
_01e=createVehicle["Land_Sack_F",getPosATL _0ze,[],1,""];
_pos=getPosATL _01e;
_pos set[2,0];
_01e setPosATL _pos;
_01e setVariable["inventory_money",50+floor(random(200/5))*5,true];
[_01e,false]call wgthvn;
call wgx46y;
[_01e,false]call wg1bsw;
call wglxj9;
};
_01e};
wgkahj={
_02e=_this select 0;
_pos=_this select 1;
_0he=_this select 2;
_03e=_this select 3;
_04e=_this select 4;
if(isNil{
_04e})then{
_04e=false;
};
_0dd=[["arifle_MXC_F","30Rnd_65x39_caseless_mag_Tracer"],["arifle_MXC_Black_F","30Rnd_65x39_caseless_mag_Tracer"],["arifle_Katiba_C_F","30Rnd_65x39_caseless_green_mag_Tracer"],["arifle_TRG20_F","30Rnd_556x45_Stanag_Tracer_Yellow"],["arifle_Mk20C_F","30Rnd_556x45_Stanag_Tracer_Red"],["SMG_02_F","30Rnd_9x21_Mag"],["SMG_01_F","30Rnd_45ACP_Mag_SMG_01_Tracer_Green"],["srifle_DMR_06_olive_F","20Rnd_762x51_Mag"],["hgun_PDW2000_F","30Rnd_9x21_Mag"]];
_07=_0dd select floor(random(count(_0dd)));
_05e=["U_B_CombatUniform_mcam_tshirt","U_O_CombatUniform_ocamo","U_O_CombatUniform_oucamo","U_B_CombatUniform_mcam_vest","U_B_CombatUniform_mcam","U_I_CombatUniform","U_I_CombatUniform_tshirt","U_IG_Guerilla3_2"];
_03=_05e select floor(random(count(_05e)));
_06e=(random 100<1);
_04="V_Rangemaster_belt";
_0l="B_Soldier_F";
if(_06e)then{
_03="U_Marshal";
_04="V_TacVest_blk";
_07=["arifle_Katiba_ACO_pointer_snds_F","30Rnd_65x39_caseless_green"];
_0he=1;
};
if(_04e)then{
_07=["arifle_SDAR_F","20Rnd_556x45_UW_mag"];
_03=["U_B_Wetsuit","U_O_Wetsuit","U_I_Wetsuit"]select floor(random 3);
_04=["V_RebreatherIR","V_RebreatherB","V_RebreatherIA"]select floor(random 3);
_0l="B_diver_F";
};
_07e=false;
_08e=0;
_09e=[];
_0af=(if(random 3<1)then{
_0fa=configFile>>"CfgGlasses";
_0bf=floor(random(count _0fa));
if!(configName(_0fa select _0bf)in["","None"])then{
configName(_0fa select _0bf)}else{
""};
}else{
""});
if(_06e)then{
_0af="G_Aviator"};
for "_i" from 0 to(_03e-1)do{
if(_i==0)then{
_08e=(switch(true)do{
case(_03 in["U_B_CombatUniform_mcam_tshirt","U_B_CombatUniform_mcam_vest","U_B_CombatUniform_mcam"]):{
1};
case(_03 in["U_O_CombatUniform_ocamo","U_O_CombatUniform_oucamo"]):{
2};
default{
0};
});
}else{
_08e=0;
};
_0cf=_02e createUnit[_0l,_pos,[],0,"FORM"];
[_0cf]joinSilent _02e;
{
_0cf removeWeapon _x}forEach(assignedItems _0cf);
removeUniform _0cf;
removeVest _0cf;
removeBackpack _0cf;
removeAllWeapons _0cf;
removeHeadgear _0cf;
removeGoggles _0cf;
_0cf addWeapon "ItemMap";
_0cf addWeapon "ItemCompass";
_0cf addWeapon "ItemRadio";
_0cf addWeapon "ItemWatch";
_0cf setSkill _0he;
_0cf addMPEventHandler["MPKilled",{
if(isServer)then{
_this call wguqlj}}];
_0cf addEventHandler["Killed",{
_this call wgf1lx}];
_0df=false;
if((random 1<_0he)&&(random 1<_0he)&&!_04e&&(random 3<1)&&!_06e&&_08e==0)then{
_0df=true;
switch(floor(random 5))do{
case 0:{
_0cf forceAddUniform(["U_B_GhillieSuit","U_O_GhillieSuit","U_I_GhillieSuit"]select(floor(random 3)));
_0cf addVest(["V_BandollierB_khk","V_BandollierB_cbr","V_BandollierB_oli"]select(floor(random 3)));
if(random 10<3)then{
if(random 10<1)then{
if(floor(random 2)==0)then{
_0cf addMagazines["20Rnd_762x51_Mag",3];
_0cf addWeapon "srifle_EBR_SOS_F";
}else{
_0cf addMagazines["30Rnd_65x39_caseless_mag_Tracer",2];
_0cf addWeapon "arifle_MXM_SOS_pointer_F";
};
}else{
_0cf addMagazines["30Rnd_65x39_caseless_mag_Tracer",3];
_0cf addWeapon "arifle_MXM_Hamr_pointer_F";
};
}else{
if(floor(random 2)==0)then{
_0cf addMagazines["30Rnd_65x39_caseless_mag_Tracer",4];
_0cf addWeapon "arifle_MXC_Holo_pointer_snds_F";
}else{
_0cf addMagazines["30Rnd_45ACP_Mag_SMG_01",4];
_0cf addWeapon "SMG_01_Holo_pointer_snds_F";
};
};
};
case 1:{
_0cf forceAddUniform(["U_B_HeliPilotCoveralls"]select(floor(random 1)));
_0cf addHeadgear(["H_PilotHelmetHeli_B"]select(floor(random 1)));
_0cf addMagazines["9Rnd_45ACP_Mag",4];
_0cf addWeapon "hgun_ACPC2_F";
};
case 2:{
_0cf forceAddUniform "U_O_PilotCoveralls";
_0cf addVest "V_PlateCarrier1_cbr";
_0cf addHeadgear "H_MilCap_mcamo";
switch(floor(random 3))do{
case 0:{
_0cf addMagazines["200Rnd_65x39_cased_Box_Tracer",2];
_0cf addWeapon "LMG_Mk200_MRCO_F";
_0cf addPrimaryWeaponItem "muzzle_snds_H_MG";
};
case 1:{
_0cf addMagazines["100Rnd_65x39_caseless_mag_Tracer",3];
_0cf addWeapon "arifle_MX_SW_F";
};
case 2:{
_0cf addMagazines["150Rnd_762x51_Box_Tracer",2];
_0cf addWeapon "LMG_Zafir_F";
};
};
};
case 3:{
if(random 10<1)then{
_0cf forceAddUniform "U_Marshal";
_0cf addVest "V_TacVest_blk_POLICE";
_0cf addGoggles "G_Aviator";
_0cf addMagazines["30Rnd_45ACP_Mag_SMG_01",3+round(random 3)];
_0cf addWeapon "SMG_01_ACO_F";
}else{
_0cf forceAddUniform "U_C_Journalist";
_0cf addVest "V_Press_F";
_0cf addHeadgear "H_Cap_press";
_0cf addBackpack "B_TacticalPack_blk";
_0cf addMagazine "SatchelCharge_Remote_Mag";
_0cf addMagazines["130Rnd_338_Mag",1+round(random 2)];
_0cf addWeapon "MMG_02_black_F";
};
};
case 4:{
_0cf forceAddUniform "U_OrestesBody";
_0cf addVest "V_TacVest_camo";
_0cf addGoggles "G_Lady_Dark";
_0cf addHeadgear "H_Cap_surfer";
_0cf addMagazines["30Rnd_9x21_Mag",3+round(random 3)];
_0cf addWeapon "hgun_PDW2000_snds_F";
};
};
}else{
if(_08e>0&&!_06e)then{
switch(_08e)do{
case 1:{
_0cf forceAddUniform "U_I_G_Story_Protagonist_F";
_0cf addVest "V_PlateCarrier1_blk";
if(random 3<1)then{
_0cf addHeadgear "H_Beret_02";
};
switch(floor(random 3))do{
case 0:{
_0cf addMagazines["30Rnd_65x39_caseless_mag",2+round(random 3)];
_0cf addMagazines["3Rnd_HE_Grenade_shell",1+round(random 2)];
_0cf addWeapon "arifle_MX_GL_Black_F";
};
case 1:{
_0cf addMagazines["100Rnd_65x39_caseless_mag_Tracer",1+round(random 2)];
_0cf addWeapon "arifle_MX_SW_Black_F";
};
case 2:{
_0cf addMagazines["20Rnd_762x51_Mag",2+round(random 3)];
_0cf addWeapon "srifle_DMR_03_ACO_F";
};
};
};
case 2:{
_0cf forceAddUniform "U_O_OfficerUniform_ocamo";
_0cf addHeadgear "H_Beret_blk";
_0cf addMagazines["30Rnd_45ACP_Mag_SMG_01",3];
_0cf addWeapon "SMG_01_Holo_pointer_snds_F";
_0cf addPrimaryWeaponItem "optic_ACO_grn";
};
};
_0cf setSkill 1;
}else{
_0cf forceAddUniform _03;
_0cf addVest _04;
_0cf addMagazines[_07 select 1,3];
_0cf addWeapon(_07 select 0);
if(_0af!=""&&(_06e||random 2<1))then{
_0cf addGoggles _0af;
};
};
};
_0cf addItem "FirstAidKit";
if(sunOrMoon==0)then{
if(_04e||random 1<_0he)then{
_0cf addItem "NVGoggles";
_0cf assignItem "NVGoggles"};
};
if(_04e)then{
_0cf addGoggles "G_Diving"}else{
if(random 10>5&&!_0df&&_08e==0&&!_06e)then{
if(random 10>2)then{
_0cf addHeadgear(["H_Booniehat_khk","H_Cap_red","H_Cap_blu","H_Cap_headphones","H_MilCap_ocamo","H_MilCap_mcamo","H_Booniehat_dgtl","H_Cap_tan","H_Cap_blk","H_Cap_blk_CMMG","H_Cap_brn_SPECOPS","H_Cap_tan_specops_US","H_Cap_khaki_specops_UK","H_Cap_grn","H_Cap_grn_BI","H_Cap_blk_Raven","H_Cap_blk_ION","H_MilCap_oucamo","H_MilCap_gry","H_MilCap_dgtl","H_MilCap_blue","H_Watchcap_blk"]select floor(random 22));
}else{
_0cf addHeadgear(["H_HelmetB_paint","H_HelmetB_light","H_HelmetCrew_B","H_HelmetCrew_I","H_HelmetIA",""]select floor(random 4));
};
};
if(random 2>1)then{
_0cf addMagazine "HandGrenade"};
if(random 10>7&&!_07e&&!_0df)then{
_0cf addBackpack "B_AssaultPack_blk";
if(random 5>1)then{
_0cf addMagazine "RPG32_F";
_0cf addWeapon "launch_RPG32_F";
_0cf addMagazine "RPG32_F";
}else{
_0cf addMagazine "Titan_AA";
_0cf addWeapon "launch_Titan_F";
};
_07e=true;
};
};
_09e=_09e+[_0cf];
};
_09e};
wgv2yg={
_0ge=serverTime+600;
waitUntil{
sleep 5;
(count(units _this)==0)||serverTime>_0ge};
deleteGroup _this;
};
wgeqvp={
};
wgkdhl={
_0ef=createVehicle["O_Heli_Light_02_F",[0,0,100],[],0,"FLY"];
_0ef removeWeapon "missiles_DAGR";
_0ef addMagazine "2000Rnd_65x39_Belt_Tracer_Green";
_0ef addMagazine "2000Rnd_65x39_Belt_Tracer_Green";
_0ef addMagazine "2000Rnd_65x39_Belt_Tracer_Green";
_0ef addMagazine "2000Rnd_65x39_Belt_Tracer_Green";
_0ef flyInHeight 150;
[_0ef,0,"#(argb,8,8,3)color(0.01,0.01,0.01,1)"]call wgfh4d;
call wgtp7l;
_02e=(createGroup wgzaqo);
_09e=[_02e,[0,0,0],1,1,false]call wgkahj;
_0ff=(units _02e)select 0;
_0ff moveInDriver _0ef;
_0ff addItem "ItemGPS";
_0ff linkItem "ItemGPS";
_0ff addItem "NVGoggles";
_0ff linkItem "NVGoggles";
_0gf=_02e addWaypoint[database_world_centerPosition,100];
_0gf setWaypointType "SAD";
_0gf setWaypointSpeed "FULL";
_0gf setWaypointBehaviour "COMBAT";
_02e spawn{
waitUntil{
sleep 10;
count(units _this)==0};
deleteGroup _this;
};
_0ef spawn{
while{
alive(driver _this)}do{
_target=assignedTarget _this;
if(!isNull(_target))then{
if((vectorDir _this)select 2<-0.15)then{
if((_this distance _target<2000)&&(_this distance _target>100))then{
_0hf=getPos _this;
_0if=getPos _target;
_0jf=((_0if select 0)-(_0hf select 0))atan2((_0if select 1)-(_0hf select 1));
if(_0jf<0)then{
_0jf=_0jf+360};
_0jf=(getDir _this)-_0jf;
if(_0jf<0)then{
_0jf=_0jf+360;
};
if(_0jf<100||_0jf>260)then{
_this action["useweapon",_this,driver _this,0];
};
};
};
};
sleep 0.05;
};
_this setDamage 1;
};
wgeclb=_0ef;
_0ef spawn{
while{
alive _this}do{
sleep 2;
{
(group driver _this)reveal[vehicle _x,4];
}forEach playableUnits;
_this setFuel 1;
if(isTouchingGround _this)then{
_this setDamage 1;
};
};
waitUntil{
((getPosATL _this)select 2)<3};
sleep 5;
if(((getPosASLW _this)select 2)>-1)then{
_0ec=createVehicle["B_supplyCrate_F",getPos _this,[],5,""];
[_0ec,false]call wghlp9;
clearWeaponCargoGlobal _0ec;
clearMagazineCargoGlobal _0ec;
clearItemCargoGlobal _0ec;
clearBackpackCargoGlobal _0ec;
[_0ec,3000+(count(playableUnits)*100),database_loot_lootSet_geocache]call wgatlf;
_0kf=createVehicle["SmokeShellPurple",getPos _0ec,[],0,"CAN_COLLIDE"];
};
};
_0ef};
wgpgn9={
private["_0lf","_09e","_0ff","_0gf","_02e"];
_0lf=createVehicle["I_Plane_Fighter_03_AA_F",[0,0,100],[],0,"FLY"];
_0lf removeMagazine "4Rnd_GAA_missiles";
_0lf removeWeapon "missiles_Zephyr";
for "_i" from 0 to 10 do{
_0lf addMagazine "300Rnd_20mm_shells";
};
_0lf flyInHeight 250;
[_0lf,0,"#(argb,8,8,3)color(0.01,0.01,0.01,1)"]call wgfh4d;
[_0lf,1,"#(argb,8,8,3)color(0.01,0.01,0.01,1)"]call wgfh4d;
call wgtp7l;
_02e=(createGroup wgzaqo);
_09e=[_02e,[0,0,0],1,1,false]call wgkahj;
_0ff=(units _02e)select 0;
_0ff moveInDriver _0lf;
_0ff addItem "ItemGPS";
_0ff linkItem "ItemGPS";
_0ff addItem "NVGoggles";
_0ff linkItem "NVGoggles";
_0gf=_02e addWaypoint[database_world_centerPosition,100];
_0gf setWaypointType "SAD";
_0gf setWaypointSpeed "FULL";
_0gf setWaypointBehaviour "COMBAT";
_02e spawn{
waitUntil{
sleep 10;
count(units _this)==0};
deleteGroup _this;
};
_0lf spawn{
while{
alive(driver _this)}do{
_target=assignedTarget _this;
if(!isNull(_target))then{
if((vectorDir _this)select 2<-0.15)then{
if((_this distance _target<2000)&&(_this distance _target>100))then{
_0hf=getPos _this;
_0if=getPos _target;
_0jf=((_0if select 0)-(_0hf select 0))atan2((_0if select 1)-(_0hf select 1));
if(_0jf<0)then{
_0jf=_0jf+360};
_0jf=(getDir _this)-_0jf;
if(_0jf<0)then{
_0jf=_0jf+360;
};
if(_0jf<100||_0jf>260)then{
_this action["useweapon",_this,driver _this,0];
};
};
};
};
sleep 0.05;
};
_this setDamage 1;
};
_0lf spawn{
private["_0ec","_0mf"];
while{
alive _this}do{
sleep 1;
{
(group driver _this)reveal[vehicle _x,4];
(group driver _this)reveal[_x,4];
}forEach playableUnits;
_this setFuel 1;
};
waitUntil{
((getPos _this)select 2)<3};
sleep 5;
_0mf=if(getTerrainHeightASL(getPosATL _this)>0)then{
getPosATL _this}else{
private["_0nf"];
_0nf=nil;
_0of=getPosATL _this;
_0pf=database_world_centerPosition;
_0qf=200;
for "_i" from 1 to _0qf do{
_05c=[(_0of select 0)+((_0pf select 0)-(_0of select 0))/_0qf*_i,(_0of select 1)+((_0pf select 1)-(_0of select 1))/_0qf*_i,0];
if(getTerrainHeightASL(_05c)>0)exitWith{
_0nf=_05c;
};
};
_0nf};
if(!isNil{
_0mf})then{
_0ec=createVehicle["B_supplyCrate_F",_0mf,[],5,""];
[_0ec,false]call wghlp9;
clearWeaponCargoGlobal _0ec;
clearMagazineCargoGlobal _0ec;
clearItemCargoGlobal _0ec;
clearBackpackCargoGlobal _0ec;
[_0ec,4000+(count(playableUnits)*100),database_loot_lootSet_geocache]call wgatlf;
_0kf=createVehicle["SmokeShellPurple",getPos _0ec,[],0,"CAN_COLLIDE"];
};
};
_0lf};
wgfgez={
{
_x call wgzqio;
}forEach database_world_patrolsList;
};
wgzqio={
_0rf=database_vehicles_patrolVehicles select(database_vehicles_patrolVehiclesChances select floor(random(count database_vehicles_patrolVehiclesChances)));
_0sf=floor(random(count(_this select 0)));
if([(_this select 0 select _0sf),1000]call wgv527)then{
{
if!([_x,500]call wgv527)exitWith{
_0sf=_forEachIndex;
};
}forEach(_this select 0);
};
_0b=_this select 0 select _0sf;
_0fd=[_0rf select 0,_0b,0]call wgmxxt;
[_0fd,1000,database_loot_lootSet_support]call wgatlf;
_0fd call(_0rf select 3);
_0fd spawn{
sleep 1;
_this setDamage 0;
sleep 10;
_this setDamage 0;
};
_0fd addEventHandler["HandleDamage",{
if(isNull(_this select 3))then{
(_this select 0)getHit(_this select 1)}else{
(_this select 2)};
}];
_0tf=+_0b;
_0tf set[1,(_0tf select 1)+5];
_02e=createGroup wgzaqo;
[_02e,_0tf,1,(call(_0rf select 2)),false]call wgkahj;
_02e addVehicle _0fd;
_02e setCombatMode "RED";
_02e allowFleeing 0;
{
_x allowDamage false;
_x setDamage 0;
}forEach(units _02e);
_02e spawn{
sleep 1;
{
_x allowDamage true;
_x setDamage 0;
}forEach(units _this);
};
[_02e,_0fd,_this]spawn{
_02e=_this select 0;
_0fd=_this select 1;
_0uf=_this select 2;
waitUntil{
sleep 5;
if({
if(alive _x&&_x in _0fd)exitWith{
1}}count(units _02e)>0)then{
_0fd setFuel 1;
};
({
alive _x}count(units _02e))==0};
_02e spawn wgv2yg;
sleep(600+random 1200);
wg9ez1=[_0uf,{
_this call wgzqio}];
publicVariableServer "wg9ez1";
};
_02e call wgeqvp;
{
deleteWaypoint _x}forEach(waypoints _02e);
{
_0vf=_x;
_0gf=_02e addWaypoint[_0vf,10];
_0gf setWaypointType "MOVE";
_0gf setWaypointSpeed "FULL";
_0gf setWaypointCombatMode "RED";
}forEach(_this select 0);
_02e setCurrentWaypoint[_02e,_0sf];
_0gf=_02e addWaypoint[_0b,10];
_0gf setWaypointType "CYCLE";
};
wgqaav={
{
_0b=_x select 0 select 0;
_0fd=["I_Boat_Armed_01_minigun_F",_0b,0]call wgmxxt;
_0fd spawn{
sleep 1;
_0wf=database_paints_blackSpeedboat call wgz6uu;
[_this,_0wf select 0,_0wf select 1]call wg6axv;
};
_0fd setVehicleAmmo(0.1+random 0.1);
_0fd call wgbyrw;
_0tf=+_0b;
_0tf set[1,(_0tf select 1)+5];
_02e=createGroup wgzaqo;
[_02e,_0tf,1,3,true]call wgkahj;
_02e addVehicle _0fd;
_02e setCombatMode "RED";
_02e allowFleeing 0;
((units _02e)select 0)moveInDriver _0fd;
((units _02e)select 1)moveInGunner _0fd;
((units _02e)select 2)moveInCommander _0fd;
_02e spawn{
waitUntil{
sleep 10;
({
alive _x}count(units _this))==0};
_this call wgv2yg;
};
_02e call wgeqvp;
{
_0vf=_x;
_0gf=_02e addWaypoint[_0vf,10];
_0gf setWaypointType "MOVE";
_0gf setWaypointSpeed "FULL";
_0gf setWaypointBehaviour "COMBAT";
_0gf setWaypointCombatMode "RED";
}forEach(_x select 0);
_0gf=_02e addWaypoint[_0b,10];
_0gf setWaypointType "CYCLE";
}forEach database_world_waterPatrolsList;
};

