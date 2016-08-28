/*
	ArmA 3 Wasteland
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	Special build for Dwarden
	ESABQIEXHTFRGOFR
*/
#include "worlds\defines.hpp"
wgy415={
wgb8ln=[blufor,opfor,independent];

#define wg3l5e	[[], [], [], []]
wga6l9=[wg3l5e,wg3l5e,wg3l5e];
wgbpb6=[];
for "_i" from 0 to(count(wgpwun)-1)do{
wgbpb6 set[count wgbpb6,0]};

#define wgltyd		[wgpwun, wgpwun, wgpwun]
wgbc5c=[wgltyd,wgltyd,wgltyd];
wg71yb=0;
wgka5v=[];
wg1fvz=0;
wg1v7n=0;
wgdgm4=[];
wgty4c=0;
wg1x61=0;
wg4ewa=[];
wgnas4=0;
wgwa47=[];
for "_i" from 0 to(count(wgpwun)-1)do{
wgwa47 set[count wgwa47,[]]};
publicVariable "wgwa47";
wgsiro=[];
for "_i" from 0 to(count(wgpwun)-1)do{
wgsiro set[count wgsiro,[]]};
publicVariable "wgsiro";
_0a=[[],{
false},{
call wgrysw},{
},{
}]execFSM "dll.fsm";
};
wgrysw={
if(wg71yb!=0)then{
if(diag_tickTime>wg71yb)then{
wgka5v call wgxlw7;
wg71yb=0;
wgka5v=[];
};
};
if(wg1v7n!=0)then{
if(diag_tickTime>wg1v7n)then{
wgdgm4 call wgvdw6;
wg1v7n=0;
wgdgm4=[];
};
};
if(wg1x61!=0)then{
if(diag_tickTime>wg1x61)then{
{
if(!isNull(_x select 0))then{
wgrlrj=(wga6l9 select(_x select 1)select 2 select(_x select 2));
(owner(_x select 0))publicVariableClient "wgrlrj";
};
}forEach(wg4ewa);
wg1x61=0;
wg4ewa=[];
};
};
};
wgf69r={
};
wg2vwi={
private "_uid";
_uid=getPlayerUID(_this);
if(_uid=="")exitWith{
-1};
private["_0e","_07h"];
_07h=(wga6l9 select(switch(side group _this)do{
case blufor:{
0};
case opfor:{
1};
default{
2};
}));
_0e=(_07h select 0)find _uid;
if(_0e==-1)then{
_0e=count(_07h select 0);
(_07h select 0)pushBack _uid;
(_07h select 1)pushBack(name _this);
(_07h select 2)pushBack wgpwun;
(_07h select 3)pushBack wgpwun;
wgrlrj=wgpwun;
(owner _this)publicVariableClient "wgrlrj";
}else{
wgrlrj=_07h select 2 select _0e;
(owner _this)publicVariableClient "wgrlrj";
};
_this setVariable["score_setup",true];
_0e};
wgsw69={
private["_08h","_09h","_0ai","_uid","_0di","_0ei","_0e","_0ci","_0bi"];
_08h=_this select 0;
_09h=_this select 1;
_0ai=_this select 2;
_uid=getPlayerUID _08h;
if(_uid=="")exitWith{
};
_0bi=(switch(side group _08h)do{
case blufor:{
0};
case opfor:{
1};
default{
2};
});
_0ci=(wga6l9 select _0bi);
_0e=(_0ci select 0)find _uid;
if(_0e==-1)then{
_0e=_08h call wg2vwi};
if(_0e==-1)exitWith{
};
_0di=(_0ci select 2 select _0e select _09h);
_0ei=(_0di+_0ai)max 0;
(_0ci select 2 select _0e)set[_09h,_0ei];
(_0ci select 3 select _0e)set[_09h,diag_tickTime];
if(_0ei>=(wgbpb6 select _09h))then{
if!(_09h in wgka5v)then{
wgka5v pushBack _09h;
};
wg71yb=diag_tickTime+0.1;
};
if!(_08h in wg4ewa)then{
wg4ewa pushBack[_08h,_0bi,_0e];
wg1x61=diag_tickTime+0.1;
};
_0fi=(wgbc5c select _0bi);
(_0fi select 0)set[_09h,(_0fi select 0 select _09h)+_0ai];
(_0fi select 1)set[_09h,diag_tickTime];
if(_0di==0)then{
if(_0ei>0)then{
(_0fi select 2)set[_09h,(_0fi select 2 select _09h)+1];
};
};
if!(_09h in wgdgm4)then{
wgdgm4 pushBack _09h;
wg1v7n=diag_tickTime+0.1;
};
};
wgrlu4={
(_this select 3)*-1};
wgfk9x={
(_this select 1)*-1};
wgxlw7={
_0gi=diag_tickTime;
private["_0ii","_0hi","_0ji","_0qh"];
if(typeName _this!="ARRAY")then{
_this=[];
};
format["updateScoreboard for %1",_this]call wg16fu;

#ifdef wgrcjv
systemChat format["updateScoreboard for %1",_this];

#endif
for "_09h" from 0 to count(wgpwun)-1 do{
if((count(_this)==0)||(_09h in _this))then{
_0hi=(wgbpb6 select _09h);
_0ii=[];
for "_0bi" from 0 to count(wga6l9)-1 do{
{
if((_x select _09h)>0&&(_x select _09h)>=_0hi)then{
_0ii pushBack[(wga6l9 select _0bi select 0 select _forEachIndex),wgb8ln select _0bi,(wga6l9 select _0bi select 1 select _forEachIndex),(wga6l9 select _0bi select 2 select _forEachIndex select _09h),(wga6l9 select _0bi select 3 select _forEachIndex select _09h)];
};
}forEach(wga6l9 select _0bi select 2);
};
format["Players tosort has size of %1",count _0ii]call wg16fu;

#ifdef wgrcjv
systemChat format["Players tosort has size of %1",count _0ii];

#endif
if(count(_0ii)>0)then{
_0ji=[_0ii,wgrlu4]call wgz2mv;
_0qh=[];
if(count(_0ji)>=wgm4xz)then{
wgbpb6 set[_09h,_0ji select(wgm4xz-1)select 3];
};
for "_i" from 0 to(count(_0ji)min wgm4xz)-1 do{
_0qh pushBack(_0ji select _i);
};
wgwa47 set[_09h,_0qh];
};
};
};
publicVariable "wgwa47";
_0ki=(diag_tickTime-_0gi);
wg1fvz=wg1fvz max _0ki;
format["Scoreboard update took %1 (Longest=%2)",_0ki,wg1fvz]call wg16fu;

#ifdef wgrcjv
systemChat format["Scoreboard update took %1 (Longest=%2)",_0ki,wg1fvz];

#endif
};
wgvdw6={
_0gi=diag_tickTime;
private["_0ii","_0ji","_0qh"];
if(typeName _this!="ARRAY")then{
_this=[];
};
for "_09h" from 0 to count(wgpwun)-1 do{
if((count(_this)==0)||(_09h in _this))then{
_0ii=[];
for "_i" from 0 to count(wgbc5c)-1 do{
if((wgb8ln select _i)!=independent)then{
if(wgbc5c select _i select 0 select _09h>0)then{
_0ii pushBack[wgb8ln select _i,wgbc5c select _i select 0 select _09h,wgbc5c select _i select 2 select _09h,wgbc5c select _i select 1 select _09h];
};
};
};
_0qh=[];
if(count(_0ii)>0)then{
_0ji=[_0ii,wgfk9x]call wgz2mv;
for "_i" from 0 to(count(_0ji)min count(wgbc5c)min 2)-1 do{
_0qh pushBack(_0ji select _i);
};
};
wgsiro set[_09h,_0qh];
};
};
publicVariable "wgsiro";
_0ki=(diag_tickTime-_0gi);
wgty4c=wgty4c max _0ki;
format["Team scoreboard update took %1 (Longest=%2)",_0ki,wgty4c]call wg16fu;

#ifdef wgrcjv
systemChat format["Team scoreboard update took %1 (Longest=%2)",_0ki,wgty4c];

#endif
};
wguqlj={
_0ze=_this select 0;
_0li=_this select 1;
_0mi=objNull;
_0ni=false;
if(isPlayer(_0ze))then{
[_0ze,wgfevz,1]call wgsw69;
_0ni=true;
};
if(((side group _0ze)in[independent,sideEnemy]||(side group _0ze!=side group _0li))&&(group _0ze!=group _0li)&&(count crew _0li>0))then{
_0oi=wgoduz;
if(_0li isKindOf "Man")then{
_0oi=(if(vehicle _0li!=_0li)then{
wgwleo}else{
wghzsx});
_0mi=_0li;
}else{
_0oi=wgcw4t;
_0ca=(_0li);
_0ad=configFile>>"CfgVehicles">>typeof _0ca>>"turrets";
_0pi=[[-1]];
if(count _0ad>0)then{
for "_i" from 0 to(count _0ad-1)do{
_0qi=_0ad select _i;
_0ri=_0qi>>"turrets";
_0pi=_0pi+[[_i]];
for "_j" from 0 to(count _0ri-1)do{
_0si=_0ri select _j;
_0pi=_0pi+[[_i,_j]];
};
};
};
_0ti=wgwmy1;
_0ui=[];
{
_0dd=(_0ca weaponsTurret _x)-_0ti;
if(count _0dd>0)then{
_0vi=objNull;
if(_x select 0==-1)then{
_0vi=driver _0ca;
}else{
_0vi=_0ca turretUnit _x;
};
if(!isNull _0vi)then{
_0ui=_0ui+[_0vi];
};
};
}forEach _0pi;
if(count _0ui==1)then{
_0mi=_0ui select 0;
}else{
_0mi=effectiveCommander _0ca;
};
};
if(isPlayer(_0mi))then{
if(isPlayer(_0ze))then{
[_0mi,wgg9ze,1]call wgsw69;
}else{
[_0mi,wggrpg,1]call wgsw69;
};
_0ni=true;
};
};
if(_0mi==_0ze||isNull(_0mi))then{
diag_log format["WASTELAND :: KILL LOG :: %1 died",_0ze call wg4zvl];
}else{
diag_log format["WASTELAND :: KILL LOG :: %1 killed %2",_0mi call wg4zvl,_0ze call wg4zvl];
};
};
wg4zvl={
private["_03h"];
_03h=switch(side group _this)do{
case blufor:{
"BLUFOR"};
case opfor:{
"OPFOR"};
case independent:{
"Independent"};
case civilian:{
"AI"};
default{
str(_03h)};
};
if(isPlayer _this)then{
format["Player %1 (side=%2) (vehicle=%3) (role=%4) (uid=%5)",name _this,_03h,typeOf vehicle _this,_this,getPlayerUID _this];
}else{
format["AI %1 (side=%2) (vehicle=%3)",name _this,_03h,typeOf vehicle _this];
};
};
wgy8tg={

#define wg3l5e	[[], [], [], []]
wga6l9=[wg3l5e,wg3l5e,wg3l5e];
for "_i" from 0 to 2 do{
for "_j" from 1 to 100+floor(random 100)do{
_uid="";
for "_i" from 0 to 15 do{
_uid=_uid+toString[65+floor(random(90-65+1))]};
_0ei=wgpwun;
{
_0ei set[_forEachIndex,(10+floor(random 490))];
}forEach _0ei;
_0wi=wgpwun;
{
_0wi set[_forEachIndex,(random 10000)];
}forEach _0wi;
(wga6l9 select _i select 0)pushBack _uid;
(wga6l9 select _i select 1)pushBack format["%1_%2",(switch(_i)do{
case 0:{
"BLUFOR"};
case 1:{
"OPFOR"};
case 2:{
"INDEP"};
}),_j];
(wga6l9 select _i select 2)pushBack _0ei;
(wga6l9 select _i select 3)pushBack _0wi;
};
};
};
