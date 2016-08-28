/*
	ArmA 3 Wasteland
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	Special build for Dwarden
	ESABQIEXHTFRGOFR
*/
#define wg79jp	100
#define wgxwi4	1000
#define wgh5hf	(60 * 2)
#define wgseqa	(60 * 2)
#define wge2k7	10
#define wg7tue	(60 * 60)
#define wghcfi	1
#define wgf45w	1
#define wgqt2l		"Land_DieselGroundPowerUnit_01_F"
wgffst={
wgal4s=wggtg2;
wgg46n=diag_tickTime;
wgap4w=[];
wg6tqj=0;
wg73ec=[];
wgs36h=diag_tickTime;
wgqaf5=diag_frameno;
wgfyl2=0;
wgfzmm=[];
wgsz4h=0;
wgiflb=[];
wgw1fg=0;
wggs1m=diag_tickTime;
wg4quw=getNumber(configFile>>"CfgWorlds">>worldName>>"mapsize");
_0a=[[],{
false},{
call wgqezm},{
},{
}]execFSM "dll.fsm";
};
wgqezm={
if(wggtg2>0)then{
if(wggtg2<=wg7tue)exitWith{
wggtg2=0;
format["Saving :: Wipe timer ran out, about to wipe!"]call wg16fu;
call wg6r2d;
};
wggtg2=wgal4s-(diag_tickTime-wgg46n);
if(wg6tqj>=count wgap4w)then{
if(wgfyl2==0)then{
_0lh=diag_tickTime;
format["Saving :: All base objects walkthrough took %1 seconds and %2 frames, about to save %3 objects",diag_tickTime-wgs36h,diag_frameno-wgqaf5,count wgap4w]call wg16fu;
profileNamespace setVariable["wasteland_saving_objects",+wg73ec];
profileNamespace setVariable["wasteland_saving_objects_version",wghcfi];
saveProfileNamespace;
wg73ec=[];
format["Saving :: All base objects saving took %1 seconds",diag_tickTime-_0lh]call wg16fu;
wgfyl2=diag_tickTime;
};
if(diag_tickTime>=(wgfyl2+wgh5hf))then{
wg6tqj=0;
wgap4w=+wgikrs;
wgs36h=diag_tickTime;
wgqaf5=diag_frameno;
wgfyl2=0;
};
}else{
_0mh=wgap4w select wg6tqj;
if(switch(true)do{
case!(alive _0mh):{
false};
case(_0mh getVariable["owner_side",wgzaqo]==wgzaqo):{
false};
case!(_0mh call wg9zvu):{
false};
case(_0mh getVariable["R3F_LOG_disabled",false]):{
false};
default{
true};
})then{
wg73ec pushBack(_0mh call wgtp8f);
};
wg6tqj=wg6tqj+1;
};
if(diag_tickTime>(wgw1fg+wge2k7))then{
wgw1fg=diag_tickTime;
if(wgsz4h>=count(wgfzmm))then{
wgsz4h=0;
wgfzmm=+wgcug3;
profileNamespace setVariable["wasteland_saving_radars",+wgiflb];
profileNamespace setVariable["wasteland_saving_radars_version",wgf45w];
saveProfileNamespace;
wgiflb=[];
}else{
_0nh=wgfzmm select wgsz4h;
if(switch(true)do{
case(damage _0nh>=1):{
false};
case!(_0nh call wg9zvu):{
false};
default{
true};
})then{
wgiflb pushBack(_0nh call wg5h5c);
};
wgsz4h=wgsz4h+1;
};
};
if(diag_tickTime>(wggs1m+wgseqa))then{
wggs1m=diag_tickTime;
_0lh=diag_tickTime;
profileNamespace setVariable["wasteland_saving_scoreboard",+wga6l9];
profileNamespace setVariable["wasteland_saving_teamscoreboard",+wgbc5c];
profileNamespace setVariable["wasteland_saving_wipetimer",wggtg2];
profileNamespace setVariable["wasteland_saving_gunstores",+wgtjaf];
profileNamespace setVariable["wasteland_saving_world",worldName];
saveProfileNamespace;
format["Saving :: Misc stuff saving took %1 seconds",diag_tickTime-_0lh]call wg16fu;
};
};
};
wg6r2d={
format["Saving :: doWipe executed!"]call wg16fu;
profileNamespace setVariable["wasteland_saving_objects",nil];
profileNamespace setVariable["wasteland_saving_objects_version",nil];
profileNamespace setVariable["wasteland_saving_radars",nil];
profileNamespace setVariable["wasteland_saving_radars_version",nil];
profileNamespace setVariable["wasteland_saving_scoreboard",nil];
profileNamespace setVariable["wasteland_saving_teamscoreboard",nil];
profileNamespace setVariable["wasteland_saving_wipetimer",nil];
profileNamespace setVariable["wasteland_saving_gunstores",nil];
profileNamespace setVariable["wasteland_saving_world",nil];
saveProfileNamespace;
};
wg9zvu={
private "_pos";
_pos=_this call wgjafy;
if(_pos select 0<-wg79jp)exitWith{
false};
if(_pos select 0>(wg4quw+wg79jp))exitWith{
false};
if(_pos select 1<-wg79jp)exitWith{
false};
if(_pos select 1>(wg4quw+wg79jp))exitWith{
false};
if(_pos select 2>wgxwi4)exitWith{
false};
true;
};
wgjafy={
private "_0oh";
_0oh=_this getVariable["R3F_LOG_object_in_vehicle",objNull];
if(!isNull(_0oh))exitWith{
getPosWorld _0oh;
};
getPosWorld _this;
};
wgtp8f={
private["_0oh","_0ph"];
_0oh=_this getVariable["R3F_LOG_object_in_vehicle",objNull];
_0ph=(if(!isNull(_0oh))then{
_0oh}else{
_this});
[typeOf _this,getPosWorld _0ph,vectorDir _0ph,vectorUp _0ph,_this getVariable["owner_side",sideUnknown],_this getVariable["owner_uid",""],_this getVariable["object_locked",false]]};
wg5h5c={
[getPosWorld _this,vectorDir _this,vectorUp _this,damage _this,_this getVariable["owner_side",sideUnknown],_this getVariable["owner_uid",""],_this getVariable["object_locked",false],_this getVariable["radar_name",[]],_this getVariable["radar_light",false]]};
wgkgbn={
format["Saving :: doLoad executed!"]call wg16fu;
private["_0qh","_0rh","_0sh","_0th","_0uh"];
_0qh=profileNamespace getVariable["wasteland_saving_scoreboard",wga6l9];
_0rh=profileNamespace getVariable["wasteland_saving_teamscoreboard",wgbc5c];
_0sh=profileNamespace getVariable["wasteland_saving_wipetimer",wggtg2];
_0th=profileNamespace getVariable["wasteland_saving_gunstores",wgtjaf];
_0uh=profileNamespace getVariable["wasteland_saving_world",worldName];
if(_0uh!=worldName)exitWith{
format["Saving :: Mission has different world, performing wipe. Saved world: %1, Current world: %2",_0uh,worldName]call wg16fu;
wg6r2d;
};
wga6l9=+_0qh;
wgbc5c=+_0rh;
wgtjaf=+_0th;
wggtg2=_0sh;
private["_0vh","_0wh"];
_0vh=profileNamespace getVariable["wasteland_saving_objects",[]];
_0wh=profileNamespace getVariable["wasteland_saving_objects_version",0];
if(_0wh>0)then{
switch(true)do{
case(_0wh==1):{
{
wgikrs pushBack(_x call wg74y2);
}forEach _0vh;
};
};
};
private["_0xh","_0yh"];
_0xh=profileNamespace getVariable["wasteland_saving_radars",[]];
_0yh=profileNamespace getVariable["wasteland_saving_radars_version",0];
if(_0yh>0)then{
switch(true)do{
case(_0yh==1):{
{
wgcug3 pushBack(_x call wgafv9);
}forEach _0xh;
};
};
};
if(count(wgcug3)>0)then{
publicVariable "wgcug3";
};
[]call wgxlw7;
[]call wgvdw6;
call wgx46y;
call wglxj9;
private "_0zh";
_0zh=0;
{
_0zh=_0zh+count(_x select 0)}forEach _0qh;
format["============ LOADING REPORT ============="]call wg16fu;
format["Loaded objects: %1",count wgikrs]call wg16fu;
format["Loaded radars: %1",count wgcug3]call wg16fu;
format["Loaded scoreboard: %1",_0zh]call wg16fu;
format["========================================="]call wg16fu;
};
wg74y2={
private["_0mh","_0l","_01h","_02h","_03h","_uid","_04h"];
_0l=_this select 0;
_01h=_this select 1;
_02h=[_this select 2,_this select 3];
_03h=_this select 4;
_uid=_this select 5;
_04h=_this select 6;
_0mh=createVehicle[_0l,_01h,[],0,"CAN_COLLIDE"];
_0mh setPosWorld _01h;
_0mh setVectorDirAndUp _02h;
if(_03h!=sideUnknown)then{
_0mh setVariable["owner_side",_03h,true];
};
if(_uid!="")then{
_0mh setVariable["owner_uid",_uid,true];
};
if(_04h)then{
_0mh setVariable["object_locked",_04h,true];
};
[_0mh,false]call wgthvn;
if(_0mh isKindOf "Cargo_Tower_base_F")then{
[_0mh,false]call wg1bsw;
};
_0mh};
wgafv9={
private["_0nh","_01h","_02h","_05h","_03h","_uid","_04h","_name","_06h"];
_01h=_this select 0;
_02h=[_this select 1,_this select 2];
_05h=_this select 3;
_03h=_this select 4;
_uid=_this select 5;
_04h=_this select 6;
_name=_this select 7;
_06h=_this select 8;
_0nh=createVehicle[wgqt2l,_01h,[],0,"CAN_COLLIDE"];
_0nh setPosWorld _01h;
_0nh setVectorDirAndUp _02h;
_0nh setDamage _05h;
if(_03h!=sideUnknown)then{
_0nh setVariable["owner_side",_03h,true];
};
if(_uid!="")then{
_0nh setVariable["owner_uid",_uid,true];
};
if(_04h)then{
_0nh setVariable["object_locked",_04h,true];
};
if(count(_name)>0)then{
_0nh setVariable["radar_name",_name,true];
};
if(_06h)then{
_0nh setVariable["radar_light",_06h,true];
};
_0nh setVariable["radar_enabled_at",-9000,true];
_0nh allowDamage false;
_0nh spawn{
sleep 10;
_this allowDamage true;
};
_0nh};
