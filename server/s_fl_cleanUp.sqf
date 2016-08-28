/*
	ArmA 3 Wasteland
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	Special build for Dwarden
	ESABQIEXHTFRGOFR
*/
#define wg7a3e	"Ship_F"
#define wgiofi	0
#define wgqqd8	1
#define wgstg6	50
#define wg5qbg		50
#define wg8do4		30
#define wg17eq		30
#define wgabws	30
#define wgm14r		20
#define wgcry4	60
wgbmz8=[[],[]];
wgvuli=0;
wgck4t=[];
wg9vxv={
wgmr3q=[];
wghllx=[];
wg1npm=[];
wg9nu8=0;
call wg583s;
};
wg583s={
wgao6m=diag_tickTime;
_0a=[[],{
false},{
call wgpxyp},{
},{
}]execFSM "dll.fsm";
};
wglm8s={
wgck4t pushBack _this;
};
wgpxyp={
if(diag_tickTime>wgao6m)then{
wgao6m=diag_tickTime+wgcry4;
_0b=diag_tickTime;
{
if(alive _x)then{
if(_x isKindOf "AllVehicles")then{
if!(_x getVariable["cleanup_ignore",false])then{
if!(_x getVariable["cleanup_setup",false])then{
_x setVariable["cleanup_type",(switch(true)do{
case(_x isKindOf wg7a3e):{
wgqqd8};
default{
wgiofi};
})];
_x setVariable["cleanup_setup",true];
_x setVariable["cleanup_at",0];
_x setVariable["cleanup_initial_pos",getPosASL _x];
_x addEventHandler["GetIn",{
_this call wgdjbi}];
_x addEventHandler["GetOut",{
_this call wgv2ib}];
_x addEventHandler["Killed",{
_this call wg2a46}];
if({
if(alive _x)exitWith{
1}}count crew(_x)==0)then{
_x call wgwk9m;
};
};
switch(_x getVariable["cleanup_type",wgiofi])do{
case wgqqd8:{
};
default{
if(_x getVariable["cleanup_at",0]==0)then{
if({
if(alive _x)exitWith{
1}}count crew(_x)==0)then{
_x call wgwk9m;
};
};
};
};
if(_x getVariable["cleanup_at",0]>0)then{
if(diag_tickTime>(_x getVariable["cleanup_at",0]))then{
if(switch(_x getVariable["cleanup_type",wgiofi])do{
case wgqqd8:{
((fuel _x<0.001)||(_x call wgmin2))&&!([getPosATL _x,wg5qbg]call wgdlru)&&true};
case wgiofi:{
(_x getVariable["cleanup_pos",[0,0,0]])vectorDistance(getPosASL _x)<5&&((_x getVariable["cleanup_initial_pos",[0,0,0]])vectorDistance(getPosASL _x)>10||(fuel _x<0.001)||!(canMove _x))&&!([getPosATL _x,wgstg6]call wgdlru)&&true};
default{
true};
}&&{
if(alive _x)exitWith{
1}}count crew(_x)==0)then{

#ifndef wgg71o
_x call wghoq7;

#else
_x setVariable["cleanup_ignore",true];
_x setVariable["cleanup_deleted",true];

#endif
}else{
_x call wgwk9m;
};
};
};
};
};
}else{
if!(_x getVariable["cleanup_setup",false])then{
_x setVariable["cleanup_setup",true];
_x call wgup8a;
};
if(_x getVariable["cleanup_at",0]>0)then{
if(diag_tickTime>_x getVariable["cleanup_at",0])then{
if(!([getPosATL _x,wg8do4]call wgdlru)&&true)then{
_x call wghoq7;
}else{
_x call wgup8a;
};
};
};
};
}forEach vehicles;
{
if!(_x getVariable["cleanup_setup",false])then{
if(!(_x in wgf9zc&&alive(_x getVariable["revive_player",objNull]))&&!isPlayer(_x)&&true)then{
_x setVariable["cleanup_setup",true];
_x call wgyi9i;
};
};
if(_x getVariable["cleanup_setup",true])then{
if(_x getVariable["cleanup_at",0]>0)then{
if(diag_tickTime>_x getVariable["cleanup_at",0])then{
if(!(_x getVariable["cleanup_goodgear",false])||!([getPosATL _x,wg17eq]call wgdlru))then{

#ifndef wgg71o
deleteVehicle _x
#else
_x setVariable["cleanup_ignore",true];
_x setVariable["cleanup_deleted",true];

#endif
}else{
_x call wgyi9i;
};
};
};
};
}forEach allDeadMen;
{
{
if!(_x getVariable["cleanup_setup",false])then{
_x setVariable["cleanup_setup",true];
_x call wgni8w;
};
if(_x getVariable["cleanup_at",0]>0)then{
if(diag_tickTime>_x getVariable["cleanup_at",0])then{
if(!([getPosATL _x,wgabws]call wgdlru)&&!(_x call wgayjq)&&isNull(_x getVariable["body",objNull])&&true)then{
deleteVehicle _x;
}else{
_x call wgni8w;
};
};
};
}forEach _x;
}forEach[allMissionObjects "GroundWeaponHolder",entities "WeaponHolderSimulated"];
_0c=0;
{
if(!isNull(_x))then{
if!(_x getVariable["cleanup_setup",false])then{
_x setVariable["cleanup_setup",true];
_x call wggopn;
};
if(_x getVariable["cleanup_at",0]>0)then{
if(diag_tickTime>_x getVariable["cleanup_at",0])then{
if(!([getPosATL _x,wgm14r]call wgv527)&&(_x getVariable["cleanup_pos",[0,0,0]])vectorDistance(getPosASL _x)>2&&true)then{
deleteVehicle _x}else{
_x call wggopn;
};
};
};
}else{
_0c=_0c+1;
};
}forEach wgck4t;
if(_0c>10)then{
wgck4t=wgck4t-[objNull];
};
wgvuli=wgvuli max(diag_tickTime-_0b);
format["Cleanup tick time: %1 (Longest: %2)",diag_tickTime-_0b,wgvuli]call wg16fu;

#ifdef wgg71o
systemChat str format["Cleanup tick time: %1 (Longest: %2)",diag_tickTime-_0b,wgvuli];

#endif
};
};
wgdjbi={
if((_this select 0)getVariable["cleanup_at",0]>0)then{
(_this select 0)setVariable["cleanup_at",0];
};
};
wgv2ib={
if({
if(alive _x)exitWith{
1}}count crew(_this select 0)==0)then{
(_this select 0)call wgwk9m;
};
};
wg2a46={
(_this select 0)setVariable["cleanup_setup",false];
};
wgwk9m={
private["_0d"];
_0d=_this call wg1euh;
if(!(canMove _this)||(fuel _this<0.001))then{
_0d=_0d/2;
};
if(_this call wgmokc)then{
_0d=_0d*4};
if(getText(configFile>>"CfgVehicles">>typeOf _this>>"vehicleclass")=="Support")then{
_0d=_0d*4};
_this setVariable["cleanup_at",(diag_tickTime+_0d)];
_this setVariable["cleanup_pos",getPosASL _this];
};
wg1euh={
private "_0e";
_0e=(wgbmz8 select 0)find(typeOf _this);
if(_0e>=0)exitWith{
wgbmz8 select 1 select _0e;
};
private "_0d";
_0d=(switch(true)do{
case(_this isKindOf "Tank"):{
wgcry4*60};
case(_this isKindOf "Air"):{
wgcry4*60};
case(_this isKindOf wg7a3e):{
wgcry4*60};
case(_this isKindOf "MRAP_01_base_F"):{
wgcry4*45};
case(_this isKindOf "MRAP_02_base_F"):{
wgcry4*45};
case(_this isKindOf "MRAP_03_base_F"):{
wgcry4*45};
case(_this isKindOf "Offroad_01_armed_base_F"):{
wgcry4*30};
case(_this isKindOf "Truck_F"):{
wgcry4*30};
default{
wgcry4*20};
});
(wgbmz8 select 0)pushBack(typeOf _this);
(wgbmz8 select 1)pushBack _0d;
_0d;
};
wgmokc={
switch(true)do{
case(count(_this getVariable["R3F_LOG_objets_charges",[]])>0):{
true};
case(count(backpackCargo _this)>0):{
true};
default{
false};
};
};
wgmin2={
private["_0f"];
_0f=getTerrainHeightASL(getPosASL _this);
(_0f<-40)||(_0f>10)};
wgup8a={
private["_0g","_0h"];
_0g=boundingBox _this;
_0h=ceil((_0g select 1 select 0)-(_0g select 0 select 0)+(_0g select 1 select 1)-(_0g select 0 select 1));
_this setVariable["cleanup_at",diag_tickTime+wgcry4*_0h];
};
wgyi9i={
_this setVariable["cleanup_goodgear",_this call wg16h1];
_this setVariable["cleanup_at",diag_tickTime+(switch(_this getVariable["cleanup_goodgear",false])do{
case true:{
wgcry4*15};
default{
wgcry4*2};
})];
};
wg16h1={
switch(true)do{
case(backpack _this!=""):{
true};
case(vest _this!=""):{
true};
default{
false};
};
};
wgni8w={
_this setVariable["cleanup_at",diag_tickTime+(((count(backpackCargo _this)+count(weaponCargo _this)+count(magazineCargo _this)+count(itemCargo _this))*2*(if(_this call wgayjq)then{
2}else{
1}))max 15)*wgcry4];
};
wgayjq={
if(count(backpackCargo _this)>0)exitWith{
true};
if(count(weaponCargo _this)>1)exitWith{
true};
if(count(magazineCargo _this)>10)exitWith{
true};
if(count(itemCargo _this)>3)exitWith{
true};
false};
wggopn={
_0d=(switch(typeOf _this)do{
case("Land_Sack_F"):{
if(_this getVariable["inventory_money",0]>=1000)then{
0}else{
wgcry4*10}};
default{
wgcry4*15};
});
if(_0d>0)then{
_this setVariable["cleanup_at",diag_tickTime+_0d];
};
};
wghoq7={
{
deleteVehicle _x}forEach(_x getVariable["R3F_LOG_objets_charges",[]]);
deleteVehicle _x;
};

#ifdef wgg71o
onEachFrame{
{
if(_x getVariable["cleanup_setup",false])then{
if(_x getVariable["cleanup_at",0]>0)then{
if(_x getVariable["cleanup_deleted",false])then{
drawIcon3D["",[1,0,0,1],getPos _x,0,0,0,format["DELETED",player distance _x],2,0.03,"PuristaMedium"];
}else{
drawIcon3D["",[1,1,1,1],getPos _x,0,0,0,format["%1: %2",typeOf _x,floor((_x getVariable["cleanup_at",0])-diag_tickTime),player distance _x],2,0.02,"PuristaMedium"];
};
};
};
}forEach vehicles;
{
if(_x getVariable["cleanup_setup",false])then{
if(_x getVariable["cleanup_at",0]>0)then{
if(_x getVariable["cleanup_deleted",false])then{
drawIcon3D["",[1,0,0,1],getPos _x,0,0,0,format["[Man] DELETED",player distance _x],2,0.03,"PuristaMedium"];
}else{
drawIcon3D["",[1,1,1,1],getPos _x,0,0,0,format["[Man] %1: %2",typeOf _x,floor((_x getVariable["cleanup_at",0])-diag_tickTime),player distance _x],2,0.02,"PuristaMedium"];
};
};
};
}forEach allDeadMen;
{
if(!isNull(_x))then{
if(_x getVariable["cleanup_setup",false])then{
if(_x getVariable["cleanup_at",0]>0)then{
drawIcon3D["",[0,1,1,1],getPos _x,0,0,0,format["Item: %1",floor((_x getVariable["cleanup_at",0])-diag_tickTime)],2,0.03,"PuristaMedium"];
};
};
};
}forEach wgck4t;

#define wg11jm	16
if(!isNull(findDisplay 12 displayCtrl 51))then{
if(isNil{
wgzpsi})then{
wgzpsi=(findDisplay 12 displayCtrl 51)ctrlAddEventHandler["Draw",{
{
if(_x getVariable["cleanup_setup",false])then{
(_this select 0)drawIcon(switch(true)do{
case(_x getVariable["cleanup_deleted",false]):{
["iconModule",[1,0,0,1],getPos _x,wg11jm,wg11jm,getDir _x,format["%1 (DELETED)",typeOf _x],2,0.04,"PuristaMedium","right"]};
case(_x getVariable["cleanup_at",0]>0):{
["iconModule",[0,0,1,1],getPos _x,wg11jm,wg11jm,getDir _x,format["%1 (Cleanup: %2)",typeOf _x,floor((_x getVariable["cleanup_at",0])-diag_tickTime)],2,0.04,"PuristaMedium","right"]};
default{
["iconModule",[1,1,1,1],getPos _x,wg11jm,wg11jm,getDir _x,typeOf _x,2,0.04,"PuristaMedium","right"]};
});
};
}forEach vehicles;
{
if(_x getVariable["cleanup_setup",false])then{
(_this select 0)drawIcon(switch(true)do{
case(_x getVariable["cleanup_deleted",false]):{
["iconManVirtual",[1,0,0,1],getPos _x,wg11jm,wg11jm,getDir _x,format["[Man] %1 (DELETED)",typeOf _x],2,0.04,"PuristaMedium","right"]};
case(_x getVariable["cleanup_at",0]>0):{
["iconManVirtual",[0,0,1,1],getPos _x,wg11jm,wg11jm,getDir _x,format["[Man] %1 (Cleanup: %2)",typeOf _x,floor((_x getVariable["cleanup_at",0])-diag_tickTime)],2,0.04,"PuristaMedium","right"]};
default{
["iconManVirtual",[1,1,1,1],getPos _x,wg11jm,wg11jm,getDir _x,format["[Man] %1",typeOf _x],2,0.04,"PuristaMedium","right"]};
});
};
}forEach allDeadMen;
}];
};
};
};

#endif