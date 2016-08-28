/*
	ArmA 3 Wasteland
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	
	
	Special build for Dwarden
	
	ESABQIEXHTFRGOFR
*/
#include "hpp\idcs.hpp"
#define wgay54		0
#define wg5gnl		1
#define wgceyj	1200
#define wgn98q	1000
#define wg7iej		100
#define wg3pqf			9
#define wgei9u		(uiNamespace getVariable ["BIS_fnc_camera_draw3D", -1] != -1)
#define wgzdu3			(!isNil{c_proving_ground_balca_satcam})
wg1cbm={if(!isNil{wggyc3})exitWith{};wggyc3=true;wg3pqf cutrsc["Wasteland_IconsHUD","PLAIN"];wgofoz=0;wg6eam=false;wgelnm=playerSide call wgri6x;wg1cby=["B_UAV_AI","O_UAV_AI","I_UAV_AI"];wgribd=[];wg5vnl=[];wgudqb=0;wgjy7y=0;wgnvrc=0;wgvn75=0;wg7hjj=format["<img image='%1'/>",wgelnm];wgtmyk=parseText wg7hjj;wgi2k1=[];[{private["_01r","_02r","_pos"];_01r=[];_02r=call wgfj8p;{if((_x!=player)&&(((side group _x==playerSide)&&(playerSide!=independent))||(group _x==group player)||(wgzdu3&&wg6eam))&&((_03r distance(getPosASL _x))<_02r))then{if(!((typeOf _x)in wg1cby))then{_pos=getPosASL _x;_pos set[2,(_pos select 2)+2];if(_pos select 2<0)then{_pos set[2,0.5];};if(!terrainIntersectASL[_03r,_pos])then{_x call wgn1o1;_01r set[count _01r,[_x,0]];};};};}forEach(if(wgzdu3)then{allUnits}else{wgcsd3});if(count(wgi2k1)>0)then{_01r=_01r+wgi2k1;};_01r},{{if(alive(_x select 0)&&wgudqb<(wg7iej-1))then{_0cf=_x select 0;_04r=_x select 1;_pos=visiblePosition _0cf;_pos set[2,((_0cf modelToWorld(_0cf selectionPosition "head"))select 2)+0.5];_05r=worldToScreen _pos;if(_05r call wgsz5o)then{_06r=_0zl distance _pos;_07r=[_05r,_06r]call wgiecy;_08r=_07r select 0;_09r=_07r select 1;_0as=_07r select 2;_0aq=_07r select 3;if(vehicle _0cf!=_0cf)then{_0aq=0;};if(vehicle _0cf==vehicle player&&player!=_0cf)then{_0aq=0.7;};_0bs=_0jk displayCtrl(wgtu2w+wgudqb);_0bs ctrlSetPosition[_08r,_09r,0.5,0.05*(SafeZoneW/1.5)];_0bs ctrlSetScale _0as;if(wg6eam)then{if(group player==group _0cf)then{_0bs ctrlSetStructuredText(_0cf getVariable "IconsHUD_Fullname_Group");}else{_0bs ctrlSetStructuredText(_0cf getVariable "IconsHUD_Fullname");};_0bs ctrlSetFade 0;}else{_0bs ctrlSetStructuredText wgtmyk;_0bs ctrlSetFade _0aq;};if(wgzdu3&&wg6eam)then{_0bs ctrlSetStructuredText(_0cf getVariable "IconsHUD_Debugname");};_0bs ctrlCommit 0;wgudqb=wgudqb+1;};};}forEach(wg5vnl select _this);},1]call wgt138;[{private["_01r","_pos"];_01r=[];wgi2k1=[];{if(side _x==playerSide&&count(crew _x)>0)then{if((_03r distance(getPosASL _x))<wgceyj)then{private["_0cs","_0ds"];_0cs=uavControl _x;_0ds=false;if(_0cs select 0==player)then{if(_0cs select 1!="")then{if((_03r distance(getPosASL player))<wgewiy)then{player call wgn1o1;wgi2k1 set[count wgi2k1,[player,0]];_0ds=true;};};};if(!_0ds)then{if(playerSide!=independent||group(_0cs select 0)==group player)then{private["_pos","_0es"];_pos=getPosASL _x;_pos set[2,(_pos select 2)+2];if(!terrainIntersectASL[_03r,_pos])then{_0es=getText(configFile>>"CfgVehicles">>typeOf(_x)>>"displayname");if(!isNull(_0cs select 0))then{if(_0cs select 0==player)then{_0es=format["%1 (%2)",_0es,localize "STR_WL_Yours"];}else{_0es=format["%1: %2",_0es,name(_0cs select 0)];};};_01r set[count _01r,[_x,_0es,group(_0cs select 0)==group player]];};};};};};}forEach allUnitsUav;_01r},{{if(alive(_x select 0)&&wgudqb<(wg7iej-1))then{_0cf=_x select 0;_pos=visiblePosition _0cf;_pos set[2,(_pos select 2)+0.8];_05r=worldToScreen _pos;if(_05r call wgsz5o)then{_06r=_0zl distance _0cf;_07r=[_05r,_06r]call wgiecy;_08r=_07r select 0;_09r=_07r select 1;_0as=_07r select 2;_0aq=_07r select 3;_0bs=_0jk displayCtrl(wgtu2w+wgudqb);_0bs ctrlSetPosition[_08r,_09r,0.5,0.05];_0bs ctrlSetScale _0as;if(wg6eam)then{if(_x select 2)then{_0bs ctrlSetStructuredText parseText format["%1 <t color='#55cc55'>%2</t>",wg7hjj,(_x select 1)];}else{_0bs ctrlSetStructuredText parseText format["%1 %2",wg7hjj,(_x select 1)];};_0bs ctrlSetFade 0;}else{_0bs ctrlSetStructuredText wgtmyk;_0bs ctrlSetFade _0aq;};_0bs ctrlCommit 0;wgudqb=wgudqb+1;};};}forEach(wg5vnl select _this);},1]call wgt138;wgg37r=format["<img image='%1' color='#%2'/>","a3\ui_f\data\map\VehicleIcons\pictureheal_ca.paa","ee0000"];wg23zy=parseText wgg37r;[{private["_01r","_02r","_pos"];_01r=[];_02r=call wgfj8p;{if((((_x getVariable["revive_side",civilian]==playerSide)&&(playerSide!=independent))||(_x getVariable["revive_group",grpNull]==group player)||(wgzdu3&&wg6eam))&&alive(_x getVariable["revive_player",objNull])&&((_03r distance(getPosASL _x))<_02r))then{_pos=getPosASL _x;_pos set[2,(_pos select 2)+2];if(_pos select 2<0)then{_pos set[2,0.5];};if(!terrainIntersectASL[_03r,_pos])then{if(isnil{_x getVariable "IconsHUD_Body_Fullname"})then{_x setVariable["IconsHUD_Body_Fullname",parseText format["%1 %2",wgg37r,_x getVariable["revive_name","Player"]]];};if(isnil{_x getVariable "IconsHUD_Body_Fullname_Group"})then{_x setVariable["IconsHUD_Body_Fullname_Group",parseText format["%1 <t color='#55cc55'>%2</t>",wgg37r,_x getVariable["revive_name","Player"]]];};_01r set[count _01r,_x];};};}forEach wgf9zc;_01r},{{if(wgudqb<(wg7iej-1))then{_0dj=_x;_pos=(if(_0dj getVariable["vehicle",_0dj]!=_0dj)then{(if(surfaceIsWater(getPosASL _0dj))then{visiblePositionASL _0dj}else{visiblePosition _0dj})}else{_0dj modelToWorld(_0dj selectionPosition "head")});_pos set[2,(_pos select 2)+0.5];_05r=worldToScreen _pos;if(_05r call wgsz5o)then{_06r=_0zl distance _pos;_07r=[_05r,_06r]call wgiecy;_08r=_07r select 0;_09r=_07r select 1;_0as=_07r select 2;_0aq=_07r select 3;if(vehicle _0dj!=_0dj)then{_0aq=0;};if(vehicle _0dj==vehicle player&&player!=_0dj)then{_0aq=0.7;};_0bs=_0jk displayCtrl(wgtu2w+wgudqb);_0bs ctrlSetPosition[_08r,_09r,0.5,0.05*(SafeZoneW/1.5)];_0bs ctrlSetScale _0as;if(wg6eam)then{if(group player==_0dj getVariable["revive_group",grpNull])then{_0bs ctrlSetStructuredText(_0dj getVariable "IconsHUD_Body_Fullname_Group");}else{_0bs ctrlSetStructuredText(_0dj getVariable "IconsHUD_Body_Fullname");};_0bs ctrlSetFade 0;}else{_0bs ctrlSetStructuredText wg23zy;_0bs ctrlSetFade((0.5+_0aq*0.5)min 1);};_0bs ctrlCommit 0;wgudqb=wgudqb+1;};};}forEach(wg5vnl select _this);},1]call wgt138;wgay54 call wgucbb;true spawn wgprxm;};wgucbb={if(!wggyc3)exitWith{};wg24bf=_this;switch(wg24bf)do{case wgay54:{true spawn wgcwer;};case wg5gnl:{true spawn wgdp42;};};};wgn1o1={if(isnil{_this getVariable "IconsHUD_Fullname"})then{_this setVariable["IconsHUD_Fullname",parseText format["%1 %2",wg7hjj,name _this]];};if(isnil{_this getVariable "IconsHUD_Fullname_Group"})then{_this setVariable["IconsHUD_Fullname_Group",parseText format["%1 <t color='#55cc55'>%2</t>",wg7hjj,name _this]];};if(wgzdu3)then{if(isnil{_this getVariable "IconsHUD_Debugname"})then{_this setVariable["IconsHUD_Debugname",parseText format["%1 %2",format["<img image='%1'/>",(side group _this)call wgri6x],name _this]];};};};wg3exa={([0.5,0.5]distance worldToScreen positionCameraToWorld[0,1.05,1])*(getResolution select 5)};wgiecy={_08r=(_this select 0)select 0;_09r=(_this select 0)select 1;_06r=_this select 1;_0fs=_06r/_0gs;_0as=0.99 min(((1-(_0fs/40))max 0.35)+0.05);if(_0fs>100&&!wg6eam)then{_0as=0.2;_09r=_09r-0.01;}else{_09r=_09r-((1-_0as)*(0.1*_0as));};_0as=_0as*(SafeZoneW/1.5);_08r=_08r-(0.03*_0as);_0aq=(0.5 min((_06r-10)/60)max 0);[_08r,_09r,_0as,_0aq]};wgsz5o={if(count(_this)==0)exitWith{false};if((_05r select 0)<(safeZoneXAbs-0.2)||(_05r select 0)>(safeZoneWAbs+0.2)||(_05r select 1)<(safeZoneY-0.1)||(_05r select 1)>(safeZoneH+0.1))exitWith{false};true};wgprxm={waitUntil{if(wg6eam&&wgofoz<serverTime)then{wg6eam=false;};false};};wgt138={private["_i","_id"];_id=count wgribd;wgribd set[_id,_this];wg5vnl set[_id,[]];wgwudv set[count wgwudv,[{_this call wgzb63},_id,_this select 2]];_id};wg5g6y={if(count(wgribd)>_this)then{wgribd set[_this,nil];wg5vnl=[];};};wgrlxr={private["_0jk","_0zl"];disableSerialization;_0jk=uiNamespace getVariable "Wasteland_IconsHUD";wgudqb=0;wgnvrc=0;_0zl=call wg483g;_0gs=call wg3exa;for "_i" from 0 to count(wgribd)-1 do{_i call(wgribd select _i select 1);};for "_i" from 0 to((wgjy7y max wgudqb)-1)do{if(_i>=wgjy7y)then{_0bs=_0jk displayCtrl(wgtu2w+_i);_0bs ctrlShow true;};if(_i>=wgudqb)then{_0bs=_0jk displayCtrl(wgtu2w+_i);_0bs ctrlShow false;};};for "_i" from 0 to((wgvn75 max wgnvrc)-1)do{if(_i>=wgvn75)then{_0bs=_0jk displayCtrl(wgjs2k+_i);_0bs ctrlShow true;};if(_i>=wgnvrc)then{_0bs=_0jk displayCtrl(wgjs2k+_i);_0bs ctrlShow false;};};wgjy7y=wgudqb;wgvn75=wgnvrc;};wgzb63={private["_0hs","_03r"];_0hs=wgribd select _this;_03r=call wgpcca;wg5vnl set[_this,call(_0hs select 0)];};wgmngb={private["_0hs","_03r"];_0hs=wgribd select _this;while{!isNil{wgribd select _this}}do{_03r=call wgpcca;wg5vnl set[_this,call(_0hs select 0)];sleep(_0hs select 2);};};wgpcca={private["_0pl"];_0pl=positionCameraToWorld[0,0,0];if(!surfaceIsWater(_0pl))then{_0pl=ATLtoASL(_0pl);}else{if(_0pl select 2<3)then{_0pl set[2,3];};};_0pl};wg483g={positionCameraToWorld[0,0,0]};wgcwer={wggyc3=false;sleep 1;wggyc3=true;wgmxdg=addMissionEventHandler["draw3D",wgrlxr];waitUntil{if(visibleMap)then{disableSerialization;_0jk=uiNamespace getVariable "Wasteland_IconsHUD";for "_i" from 0 to(wgudqb-1)do{(_0jk displayCtrl(wgtu2w+_i))ctrlShow false};for "_i" from 0 to(wgnvrc-1)do{(_0jk displayCtrl(wgjs2k+_i))ctrlShow false};waitUntil{!visibleMap||!wggyc3};for "_i" from 0 to(wgudqb-1)do{(_0jk displayCtrl(wgtu2w+_i))ctrlShow true};for "_i" from 0 to(wgnvrc-1)do{(_0jk displayCtrl(wgjs2k+_i))ctrlShow true};};!wggyc3};if(!isNil{wgmxdg})then{removeMissionEventHandler["draw3D",wgmxdg];};wgudqb=0;wgnvrc=0;};wgdp42={private["_0jk"];wggyc3=false;sleep 1;wggyc3=true;waitUntil{if(visibleMap)then{disableSerialization;_0jk=uiNamespace getVariable "Wasteland_IconsHUD";for "_i" from 0 to(wgudqb-1)do{(_0jk displayCtrl(wgtu2w+_i))ctrlShow false};for "_i" from 0 to(wgnvrc-1)do{(_0jk displayCtrl(wgjs2k+_i))ctrlShow false};waitUntil{!visibleMap||!wggyc3};if(wggyc3)then{for "_i" from 0 to(wgudqb-1)do{(_0jk displayCtrl(wgtu2w+_i))ctrlShow true};for "_i" from 0 to(wgnvrc-1)do{(_0jk displayCtrl(wgjs2k+_i))ctrlShow true};};}else{call wgrlxr;};sleep 0.05;!wggyc3};wgudqb=0;wgnvrc=0;};