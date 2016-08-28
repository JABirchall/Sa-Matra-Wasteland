/*
	ArmA 3 Wasteland
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	Special build for Dwarden
	ESABQIEXHTFRGOFR
*/
wgmg5k={
call wgdkk2;
call wgq4pb;
call wgk39n;
true spawn wgqxed;
};
wgqxed={
while{
true}do{
wgltoi=round(serverTime+settings_gunStoreAssortimentUpdateInterval);
publicVariable "wgltoi";
waitUntil{
sleep 1;
(serverTime>=wgltoi)||((wgltoi-serverTime)>settings_gunStoreAssortimentUpdateInterval)};
call wgk39n;
};
};
wgdkk2={
wgh2lz=[];
wgrlse=[];
private["_0xf"];
_0xf=[];
for "_i" from 0 to(count database_gunStore_weaponsList-1)do{
_07=database_gunStore_WeaponsList select _i;
_0o=_07 select 0;
if(typeName _0o!=typeName[])then{
_0o=[_0o]};
{
wgh2lz set[count wgh2lz,[_x,(if(_07 select 5==-1)then{
ceil((_07 select 4)/2)}else{
_07 select 5})]];
}forEach _0o;
wgrlse pushBack(_0o);
_0zb=_07 select 6;
if(typeName(_0zb)==typeName[])then{
{
_0yf=_x select 0;
if(typeName(_0yf)==typeName(-1))then{
_0yf=getArray(configFile>>"CfgWeapons">>(_0o select 0)>>"magazines")select 0;
};
if!(_0yf in _0xf)then{
_0xf set[count _0xf,_0yf];
wgh2lz set[count wgh2lz,[_0yf,if(isNil{
_x select 3})then{
ceil((_x select 2)/2)}else{
_x select 3}]];
};
}forEach _0zb;
};
};
for "_i" from 0 to(count database_gunStore_miscList-1)do{
_0zf=database_gunStore_miscList select _i select 5;
if(_0zf==-1)then{
_0zf=ceil((database_gunStore_miscList select _i select 4)/2);
};
_0l=database_gunStore_miscList select _i select 0;
if(typeName(_0l)==typeName([]))then{
{
wgh2lz set[count wgh2lz,[_x,_0zf]];
}forEach _0l;
}else{
wgh2lz set[count wgh2lz,[_0l,_0zf]];
};
};
publicVariable "wgh2lz";
publicVariable "wgrlse";
};
wgk39n={
for "_i" from 0 to count(wg57oa)-1 do{
(wg57oa select _i)set[8,call wgfksf];
};
publicVariable "wg57oa";
};
wgfksf={
private["_01f","_02f","_03f","_04f"];
_01f=[];
_02f=[];
_03f=[];
_04f=[];
{
_05f=_x select 0;
_06f=_x select 1;
_07f=[];
{
_08f=[];
_09f=_x;
_03e=_09f select 1;
if(random 100>_09f select 2)then{
_03e=_03e-1};
for "_i" from 0 to(count _06f-1)do{
if((_06f select _i select 1)==_09f select 0)then{
if((_06f select _i select 2)==-1)then{
_07f set[count _07f,_i];
_03e=_03e-1;
}else{
for "_j" from 1 to(_06f select _i select 2)do{
_08f set[count _08f,_i];
};
};
};
};
for "_i" from 1 to _03e do{
if(count(_08f)>0)then{
_0qa=_08f select floor(random(count _08f));
_08f=_08f-[_0qa];
_07f set[count _07f,_0qa];
};
};
}forEach _05f;
switch(_x select 2)do{
case 0:{
_01f=_07f;
};
case 1:{
_02f=_07f;
};
};
}forEach[[database_gunStore_weaponsScheme,database_gunStore_weaponsList,0],[database_gunStore_miscScheme,database_gunStore_miscList,1]];
{
_0ag=_x;
if(typeName(database_gunStore_WeaponsList select _0ag select 6)==typeName "")then{
_0bg=false;
for "_i" from 0 to(count database_gunStore_WeaponsList-1)do{
if(typeName(database_gunStore_WeaponsList select _i select 0)==typeName "")then{
if(database_gunStore_WeaponsList select _i select 0==database_gunStore_WeaponsList select _0ag select 6)then{
_0bg=true;
_0ag=_i;
};
}else{
if((database_gunStore_WeaponsList select _0ag select 6)in(database_gunStore_WeaponsList select _i select 0))then{
_0bg=true;
_0ag=_i;
};
};
if(_0bg)exitWith{
};
};
};
_0cg=[];
_0zb=database_gunStore_WeaponsList select _0ag select 6;
for "_i" from 0 to(count _0zb-1)do{
for "_j" from 0 to(_0zb select _i select 1)do{
_0cg set[count _0cg,_i];
};
};
_0dg=database_gunStore_WeaponsList select _x select 0;
if(typeName _0dg==typeName[])then{
_0dg=_0dg select floor(random(count _0dg));
};
_0ed=_0zb select(_0cg select floor(random(count _0cg)));
if(typeName(_0ed select 0)==typeName(-1))then{
_0ed set[0,getArray(configFile>>"CfgWeapons">>_0dg>>"magazines")select 0];
};
_0eg=(database_gunStore_WeaponsList select _x select 4);
if(count(configFile>>"CfgWeapons">>_0dg>>"LinkedItems")>0)then{
_0fa=configFile>>"CfgWeapons">>_0dg>>"LinkedItems";
for "_i" from 0 to count(_0fa)-1 do{
_0fg=getText(_0fa select _i>>"item");
_0gg=({
if(switch(true)do{
case(typeName(_x select 0)==typeName[]):{
{
_0fg==_x}count(_x select 0)>0};
default{
_0fg==_x select 0};
})exitWith{
_x select 5};
}forEach database_gunStore_miscList);
_0eg=_0eg+_0gg;
};
};
_03f set[count _03f,[_0dg,_0eg,_0ed select 0,_0ed select 2,database_gunStore_WeaponsList select _x select 1]];
}forEach _01f;
_0hg=[_02f,{
random 1}]call wgz2mv;
_0ig=[];
for "_i" from 0 to 3 do{
_0ig set[_i,_0hg select _i];
};
{
_0jg=database_gunStore_miscList select _x select 0;
if(typeName(_0jg)==typeName([]))then{
_0jg=_0jg select floor(random(count(_0jg)));
};
_0eg=database_gunStore_miscList select _x select 4;
_0kg=0;
if(_x in _0ig)then{
if(database_gunStore_miscList select _x select 5==-1)then{
_0eg=ceil(_0eg/2);
_0kg=50;
}else{
_0eg=database_gunStore_miscList select _x select 5;
_0kg=ceil((((database_gunStore_miscList select _x select 4)-(database_gunStore_miscList select _x select 5))/(database_gunStore_miscList select _x select 4))*100);
};
};
_04f set[count _04f,[_0jg,_0eg,database_gunStore_miscList select _x select 1,_0kg]];
}forEach _02f;
[_03f,_04f]};

#define wgtwgp	1500
wgq4pb={
private["_0ug","_0lg","_0mg"];
_0lg=call database_gunStore_numberCode;
_0mg=[];
if(_0lg!=-1)then{
if(count(wgtjaf)>0)then{
{
_0mg pushBack(database_gunStore_locationsList select _x);
}forEach wgtjaf;
}else{
for "_i" from 1 to _0lg do{
_0ng=[];
{
_l=_x;
if({
if((_l select 0)vectorDistance(_x select 0)<wgtwgp)exitWith{
1}}count _0mg==0)then{
_0ng pushBack _forEachIndex;
};
}forEach database_gunStore_locationsList;
if(count(_0ng)==0)exitWith{
};
_0og=_0ng select floor(random(count _0ng));
_0mg pushBack(database_gunStore_locationsList select _0og);
wgtjaf pushBack _0og;
};
};
}else{
_0mg=database_gunStore_locationsList;
};
_0pg=[];
_0qg=(configFile>>"CfgFaces">>"Man_A3");
for "_i" from 0 to count(_0qg)-1 do{
_0rg=configName(_0qg select _i);
if(_0rg!="Custom")then{
_0pg pushBack _0rg;
};
};
_0sg=[];
_0tg=configFile>>"CfgGlasses";
for "_i" from 0 to count(_0tg)-1 do{
_0l=configName(_0tg select _i);
if(_0l!=""&&_0l!="None")then{
_0sg pushBack _0l;
};
};
_0ug=[];
{
_pos=_x select 0;
_05a=_x select 1;
_0vg=_x select 2;
_0wg=_x select 3;
if(_0vg!=0)then{
_0vg=180};
{
if(typeOf _x=="")then{
_x setDamage 1;
};
}forEach nearestObjects[ASLtoATL(_pos),[],20];
_05a=_05a;
_0xg=createVehicle["Land_i_Garage_V1_F",_pos,[],0,"CAN_COLLIDE"];
_0xg setDir _05a;
_0xg setPosASL _pos;
_0yg=createVehicle["Land_HelipadSquare_F",_pos,[],0,"CAN_COLLIDE"];
_0zg=+_pos;
_0zg set[0,(_0zg select 0)+sin(_0vg+_05a)*10];
_0zg set[1,(_0zg select 1)+cos(_0vg+_05a)*10];
_0zg set[2,0];
_0yg setDir(_05a+270);
_0yg setPosATL _0zg;
_01g=objNull;
_02g=database_gunStore_sellerAnimations select floor(random(count database_gunStore_sellerAnimations));
_03g=createVehicle["Land_Bench_F",_pos,[],0,"CAN_COLLIDE"];
_03g attachTo[_0xg,[4.7,-1.55,_02g select 3]];
_03g setDir-5;
[_03g,_0xg,_02g select 3]spawn{
waitUntil{
time>0};
sleep 30;
detach(_this select 0);
sleep 1;
(_this select 0)attachTo[_this select 1,[4.7,-1.55,_this select 2]];
(_this select 0)setDir-5;
};
_04g=createVehicle["Land_PlasticCase_01_medium_F",_pos,[],0,"CAN_COLLIDE"];
_04g attachTo[_0xg,[4.85,0.5,0.06]];
_04g enableSimulation false;
_04g allowDamage false;
[_04g,0,""]call wgfh4d;
call wgtp7l;
clearWeaponCargoGlobal _04g;
clearMagazineCargoGlobal _04g;
clearItemCargoGlobal _04g;
clearBackpackCargoGlobal _04g;
[_04g,_0xg]spawn{
waitUntil{
time>0};
sleep 30;
detach(_this select 0);
sleep 1;
(_this select 0)attachTo[_this select 1,[4.85,0.5,0.06]];
};
_05g=createVehicle["Land_CashDesk_F",_pos,[],0,"CAN_COLLIDE"];
_05g attachTo[_0xg,[3.5,-1.63,-0.12]];
_05g setDir 90;
[_05g,_0xg]spawn{
waitUntil{
time>0};
sleep 30;
detach(_this select 0);
sleep 1;
(_this select 0)attachTo[_this select 1,[3.5,-1.63,-0.12]];
(_this select 0)setDir 90;
};
_06g=createVehicle["Land_LampHarbour_F",_pos,[],0,"CAN_COLLIDE"];
_06g setDir(getDir _0xg-45);
_06g setPosATL(_0xg modelToWorld[4.98539,-2.41157,-3.08219]);
_07g=createVehicle["Land_LampHalogen_F",_pos,[],0,"CAN_COLLIDE"];
_07g setDir(getDir _0xg+(if(_0vg==0)then{
90}else{
-90}));
_07g setPosATL(_0xg modelToWorld[0,(if(_0vg==0)then{
3.3}else{
-3.3}),-9.81112]);
_03=(database_gunStore_sellerUniforms select floor(random(count(database_gunStore_sellerUniforms))));
_08g=createVehicle["C_Nikos",_pos,[],0,"CAN_COLLIDE"];
_08g switchMove(_02g select 0);
_08g setDir(_05a+(_02g select 2));
_08g setPosATL(_0xg modelToWorld(_02g select 1));
_08g setFace(_0pg select floor(random(count _0pg)));
_08g addUniform _03;
if(random 10>7)then{
_08g addHeadgear(database_gunStore_sellerHats select floor(random(count(database_gunStore_sellerHats))));
};
if(_03=="U_NikosBody")then{
_08g spawn{
sleep 1;
removeHeadgear _this;
};
}else{
if(random 3<1)then{
_08g addGoggles(_0sg select floor(random(count _0sg)));
};
};
[_08g,false]call wghlp9;
[_08g,false]call wgayif;
{
[_x,false]call wghlp9;
[_x,false]call wgayif;
_x setVariable["R3F_LOG_disabled",true,true];
}forEach[_0xg,_0yg,_01g,_03g,_05g,_06g,_07g,_04g];
_08g spawn{
_pos=getPosATL _this;
_05a=getDir _this;
while{
!isNull(_this)}do{
if((getPosATL _this)distance _pos>0.2)then{
_this setVelocity[0,0,0];
_this setPosATL _pos;
_this setDir _05a;
};
sleep 1;
};
};
_06g call wgh54g;
_07g call wgh54g;
_0ug set[count _0ug,[_08g,_04g,_0yg,_0xg,_0xg modelToWorld[2.4603,-2.17207,-0.0974827],[[_0xg modelToWorld[1.60694,-2.02246,-0.0974808],_0xg modelToWorld[-2.00216,-2.10102,-0.0974827]],[_0xg modelToWorld[2.36994,2.16844,-0.0974827],_0xg modelToWorld[-1.78887,2.12589,-0.0974846]]],_0xg modelToWorld[-2.04926,0.0286955,-0.05],_0wg,[[],[]]]];
}forEach _0mg;
wg57oa=_0ug;
publicVariable "wg57oa";
};
