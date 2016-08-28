/*
	Copyright (C) 2010 madbull ~R3F~
	
	This program is free software under the terms of the GNU General Public License version 3.
	You should have received a copy of the GNU General Public License
	along with this program.  If not, see <http://www.gnu.org/licenses/>.
	
	R3F modifications and improvements made by Sa-Matra
	Additional graphics made by Aaron Hooker (Kai)
	Using these modifications or graphics without direct permission is forbidden
	
	Special build for Dwarden
	
	ESABQIEXHTFRGOFR
*/
#include "config.sqf"
#include "R3F_ARTY_disable_enable.sqf"
#include "R3F_LOG_disable_enable.sqf"
call compile preprocessFile format["r3f\%1_strings_lang.sqf",wgcqru];if(isServer)then{"wgfg5m" addPublicVariableEventHandler{_0ab=_this select 1 select 0;_08h=_this select 1 select 1;if(diag_tickTime>(_0ab getVariable["last_request",0])+1)then{if((owner _0ab!=owner _08h)&&({alive _x}count(crew _0ab)==0))then{_0ab setOwner(owner _08h);};wg8utn=_0ab;(owner _08h)publicVariableClient "wg8utn";_0ab setVariable["last_request",diag_tickTime];};};};if(isServer||true)then{wguu3i={private["_0cv","_0dv"];_0cv=_this select 1 select 0;_0dv=_this select 1 select 1;if(local _0cv)then{_0cv setDir _0dv;};};"wgbeie" addPublicVariableEventHandler wguu3i;"wgsdmn" addPublicVariableEventHandler{if(local(_this select 1 select 0))exitWith{(_this select 1)call wgw4n2;};if(isServer)then{owner(_this select 1 select 0)publicVariableClient "wgsdmn";};};wgw4n2={_0mh=_this select 0;_0ev=_this select 1;_0fv=_this select 2;_0gv=false;detach _0mh;_0hv=0;switch(typeOf _0mh)do{case "Land_Canal_WallSmall_10m_F":{_0hv=3;};case "Land_Canal_Wall_Stairs_F":{_0hv=3;};case "Land_Canal_Wall_10m_F":{_0hv=3;};case "BlockConcrete_F":{_0hv=-0.5;};case "Land_Concrete_SmallWall_8m_F":{_0hv=1.3;};case "Land_Concrete_SmallWall_4m_F":{_0hv=1.3;};case "Land_PierLadder_F":{_0hv=2;};};_0tt=getPosWorld _0mh;_0iv=getTerrainHeightASL _0tt;if(_0ev<_0iv)then{_0ev=_0iv;_0gv=true;};if(_0ev-_0iv<0.5)then{_0ev=_0iv;_0gv=true;};_0ev=_0ev+_0hv;_0ev=_0ev-(getPosASL _0mh select 2)+(_0tt select 2);_0tt set[2,_0ev];_0mh setPosWorld _0tt;if(_0gv&&!_0fv)then{_0mh setVectorUp(surfaceNormal _0tt);};if((_0fv||(!_0gv&&underwater player))&&(vectorUp _0mh select 2!=0))then{_0mh setVectorUp[0,0,1];};};};
#ifdef wgwl3y
#include "R3F_ARTY\init.sqf"
wgu2id=true;
#endif
#ifdef wg3y5h
#include "R3F_LOG\init.sqf"
wgnbj5=true;
#else
wgcty8=objNull;
#endif
if!(isServer&&isDedicated)then{execVM "r3f\surveiller_nouveaux_objets.sqf";}else{execVM "r3f\surveiller_nouveaux_objets_dedie.sqf";};