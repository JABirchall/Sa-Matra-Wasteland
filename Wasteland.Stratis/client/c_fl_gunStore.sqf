/*
	ArmA 3 Wasteland
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	
	
	Special build for Dwarden
	
	ESABQIEXHTFRGOFR
*/
#define wg7f8s	0
#define wgfoeu	1
#define wguw8v	2
#define wggeyc		3
#define wg8znq	4
#define wgqgsr	0
#define wga9d5	1
#define wg21ap	2
#define wgwydd	3
#define	wgjbql	4
#define wgqnoo	5
#define wguxuq	6
#define wgk121	7
#define wgiyks	8
#define wgsdkb	9
#define wgx3ei	10
#define wgrnnb	11
#define wg7m9n		12
#define wgxpua	13
#define wgpmr6	14
#define wgud5d	15
#define wglm9j	16
#define wgmj2s	0
#define wgnsrq	1
#define wgy7t5	2
#define wgfdmu	3
#define wgfsis	0,0.3,0.6
#define wgckuv	0.5,0,0
#define wgxh6t	0,0.5,0
#define wgyhug	0.4,0,0.5
#define wgofnq	"0,0.3,0.6"
#define wg1vl6		"0.5,0,0"
#define wglgmz		"0,0.5,0"
#define wg8khn		"0.4,0,0.5"
#define wgpp2k	"Box_NATO_Ammo_F"
#define wgrwbd	200
#define wg56su	1000
#define wgv585	1000
#define wgykus	100
#define wgtdpd	100
#define wgy2jb	-1
#define wg4es5		0
#define wg9xiu	1
#define wg9i6v	2
#define wgqc2d		"#(argb,8,8,3)color(0,0,0,0)"
#define wgseqx		"\A3\ui_f\data\map\VehicleIcons\iconvehicle_ca.paa"
#define wgqt2l		"Land_DieselGroundPowerUnit_01_F"
#include "hpp\settings.hpp"
#include "hpp\idcs.hpp"
wgjo8o={wgyjkx=_this;createDialog "Wasteland_StoreBuy";};wgarrn={private["_0nm","_0rm","_03m","_deliverycombo","_0om","_0pm"];disableSerialization;_0nm=uiNamespace getVariable "Wasteland_StoreBuy";if(isNil{_0nm})exitWith{};if(isNull(_0nm))exitWith{};(_0nm displayCtrl wglyxh)ctrlShow false;(_0nm displayCtrl wgzl24)ctrlShow false;(_0nm displayCtrl wgbboi)ctrlShow false;[_0nm,""]call bis_fnc_guiEffectTiles;(_0nm displayCtrl wgzgac)ctrlSetText wg4sje;(_0nm displayCtrl wgzgac)ctrlShow!isStreamFriendlyUIEnabled;(_0nm displayCtrl wgr4mb)lnbSetColumnsPos[0.075,0.68,0.78];_0om=wg57oa select wgyjkx;_0pm=(_0nm displayCtrl wgzl24);wgcmpe=+(_0om select 8 select 0);wgmmz9=+(_0om select 8 select 1);wglcll=0;wgcmp1=[];wgdng4=0;wg43z6=false;wgyqro=0;call wg8osq;if(side group player in[independent])then{_0qm=-1;for "_i" from 0 to(count wgmmz9-1)do{if((wgmmz9 select _i select 0)==wgqt2l)exitWith{_0qm=_i;};};wgmmz9 deleteAt _0qm;};_0rm=(ctrlPosition(_0nm displayCtrl(wgoxly)))select 1;_0rm=_0rm+0.01;for "_i" from 0 to(count wgcmpe-1)do{_0sm=(_0nm displayCtrl(wgn24s+_i));_0tm=(_0nm displayCtrl(wg7tht+_i));_0um=(_0nm displayCtrl(wgjdgv+_i));_0vm=(_0nm displayCtrl(wgkrwc+_i));_0wm=(_0nm displayCtrl(wgki15+_i));_0xm=(_0nm displayCtrl(wgb8za+_i));_0ym=(_0nm displayCtrl(wgbl16+_i));_0zm=(_0nm displayCtrl(wg54rm+_i));_01m=(_0nm displayCtrl(wgoxly+_i));_07=wgcmpe select _i;_0sm ctrlSetText getText(configFile>>"CfgWeapons">>_07 select 0>>"picture");_0tm ctrlSetText getText(configFile>>"CfgMagazines">>_07 select 2>>"picture");_0um ctrlSetText getText(configFile>>"CfgWeapons">>_07 select 0>>"displayname");_0vm ctrlSetText getText(configFile>>"CfgMagazines">>_07 select 2>>"displayname");_0ym ctrlSetText format["$%1",(_07 select 1)];_0zm ctrlSetText format["$%1",(_07 select 3)];{_pos=ctrlPosition _x;_pos set[1,(_pos select 1)+_0rm*_i];_x ctrlSetPosition _pos;_x ctrlCommit 0;}forEach[_0sm,_0tm,_0um,_0vm,_0wm,_0xm,_0ym,_0zm,_01m];};_0rm=0.13;_02m=-1;_03m=ctrlPosition(_0nm displayCtrl(wgxusg))select 3;_03m=_03m+0.01;for "_i" from 0 to(count wgmmz9-1)do{_04m=(_0nm displayCtrl(wghrvh+_i));_05m=(_0nm displayCtrl(wgzak4+_i));_06m=(_0nm displayCtrl(wgqrx8+_i));_0zf=(_0nm displayCtrl(wggc6a+_i));_07m=(_0nm displayCtrl(wg3md2+_i));_08m=wgmmz9 select _i;if(_02m!=_08m select 2)then{if(_08m select 2 in[wgrnnb,wga9d5,wgjbql,wgk121,wgqnoo,wgpmr6,wgud5d])then{_09m=(_0nm displayCtrl(wgxusg+wglcll));wglcll=wglcll+1;_pos=ctrlPosition _09m;_pos set[1,(_pos select 1)+_0rm*_i+(wglcll-1)*_03m];_09m ctrlSetPosition _pos;_09m ctrlCommit 0;switch(_08m select 2)do{case wgrnnb:{_09m ctrlSetText "Attachments";};case wga9d5:{_09m ctrlSetText "Grenades";};case wgjbql:{_09m ctrlSetText "Explosives";};case wgk121:{_09m ctrlSetText "Backpacks";};case wgqnoo:{_09m ctrlSetText "Equipment";};case wgpmr6:{_09m ctrlSetText "Other";};case wgud5d:{_09m ctrlSetText "Facewear";}};};};_02m=_08m select 2;_0fa="CfgWeapons";switch(true)do{case((_08m select 2)in[wga9d5,wg21ap,wgwydd,wgjbql]):{_0fa="CfgMagazines";};case((_08m select 2)in[wgk121]):{_0fa="CfgVehicles";};case((_08m select 2)in[wgud5d]):{_0fa="CfgGlasses";};};_0an="???";switch(true)do{case(_08m select 2 in[wgqgsr,wgxpua,wgx3ei,wgrnnb,wg7m9n,wglm9j]):{_0an=str(parseText(getText(configFile>>"CfgWeapons">>(_08m select 0)>>"descriptionshort")))};case(_08m select 2 in[wga9d5,wgjbql]||(_08m select 0=="1Rnd_HE_Grenade_shell")):{_0k=configFile>>"CfgAmmo">>(getText(configFile>>"CfgMagazines">>(_08m select 0)>>"ammo"));if(getNumber(_0k>>"directionalexplosion")==1)then{_0an=format["Directional damage: %1 over %2m",getNumber(_0k>>"indirecthit"),getNumber(_0k>>"indirecthitrange")];}else{_0an=format["Radial damage: %3 to %1 over %2m",getNumber(_0k>>"indirecthit"),getNumber(_0k>>"indirecthitrange"),getNumber(_0k>>"hit")];};};case(_08m select 2 in[wg21ap,wgwydd]):{_0an=getText(configFile>>"CfgMagazines">>(_08m select 0)>>"displaynameshort")};case(_08m select 2 in[wgqnoo]):{_0bn=configFile>>"CfgVehicles">>getText(configFile>>"CfgWeapons">>(_08m select 0)>>"ItemInfo">>"uniformclass")>>"HitPoints";_0an=format["Capacity: %1. Armor: %2 %3 %4 %5",getNumber(configFile>>"CfgVehicles">>getText(configFile>>"CfgWeapons">>(_08m select 0)>>"ItemInfo">>"containerclass")>>"maximumload"),getNumber(_0bn>>"HitHead">>"armor"),getNumber(_0bn>>"HitBody">>"armor"),getNumber(_0bn>>"HitHands">>"armor"),getNumber(_0bn>>"HitLegs">>"armor")];};case(_08m select 2 in[wguxuq]):{_0an=format["Capacity: %1. Armor rate: %2",getNumber(configFile>>"CfgVehicles">>getText(configFile>>"CfgWeapons">>(_08m select 0)>>"ItemInfo">>"containerclass")>>"maximumload"),getNumber(configFile>>"CfgWeapons">>(_08m select 0)>>"ItemInfo">>"armor")];};case(_08m select 2 in[wgiyks,wgsdkb]):{_0an=format["Armor rate: %1",getNumber(configFile>>"CfgWeapons">>(_08m select 0)>>"ItemInfo">>"armor")];};case(_08m select 2 in[wgk121]):{_0an=format["Capacity: %1",getNumber(configFile>>"CfgVehicles">>(_08m select 0)>>"maximumload")];};case(_08m select 2 in[wgud5d]):{_0an="";};};if((_08m select 2)in[wgpmr6])then{_0cn=(_08m select 0)call wg8wxm;_04m ctrlSetText(_0cn select 0);_05m ctrlSetText(_0cn select 1);_0an=(_0cn select 2);}else{_0dn=getText(configFile>>_0fa>>_08m select 0>>"displayname");if(_0dn=="")then{_0dn=_08m select 0};_04m ctrlSetText getText(configFile>>_0fa>>_08m select 0>>"picture");_05m ctrlSetText _0dn;};_07m ctrlSetText _0an;if((_08m select 3)>0)then{_0zf ctrlSetStructuredText parseText format["<t color='#ffff00'>$%1</t> <t color='#ffffff'>SALE! -%2%3!</t>",(_08m select 1),(_08m select 3),"%"];}else{_0zf ctrlSetText format["$%1",(_08m select 1)];};{_pos=ctrlPosition _x;_pos set[1,(_pos select 1)+_0rm*_i+wglcll*_03m];_x ctrlSetPosition _pos;_x ctrlCommit 0;}forEach[_04m,_05m,_06m,_0zf,_07m];if((_08m select 2)in[wgx3ei,wgrnnb,wg7m9n,wglm9j])then{_0en=ctrlPosition _05m;_pos=[(_0en select 0)+(_0en select 2)-(_0en select 3)*1.5,(_0en select 1),(_0en select 3)*(getResolution select 3)/(getResolution select 2)*1.1,(_0en select 3)*1.1];_0fn=_0nm ctrlCreate["RscButtonMenu",-1,_0pm];_0fn ctrlSetText "?";_0fn ctrlSetPosition _pos;_0fn buttonSetAction format["wga1wh = ""%1""; createDialog ""Wasteland_Compatible"";",(_08m select 0)];_0fn ctrlCommit 0;};};0 call wg1o4i;true call wgy598;true spawn wgzyih;(_0nm displayCtrl wgl1wh)ctrlSetFade 1;(_0nm displayCtrl wgl1wh)ctrlCommit 0.1;};wgzyih={if(isNil{wgltoi})exitWith{};private["_0nm","_0gn"];disableSerialization;_0nm=uiNamespace getVariable "Wasteland_StoreBuy";_0gn=_0nm displayCtrl wguuld;_0hn=wgltoi;while{!isNull(_0nm)}do{_0d=(_0hn-serverTime)max 0;_0gn ctrlSetText format["%1 until new assortment",_0d call wgc61g];sleep 0.3;};};wg8wxm={private["_0cn"];switch(_this)do{case "Land_CanisterFuel_F":{_0cn="fuelcan" call wgxe7d;};case "Land_Suitcase_F":{_0cn="repairkit" call wgxe7d;};case "Land_Ammobox_rounds_F":{_0cn="vehammo" call wgxe7d;};case "Snake_random_F":{_0cn="snake" call wgxe7d;};case "Rabbit_F":{_0cn="rabbit" call wgxe7d;};case wgqt2l:{_0cn=["i\a3_radar_new.paa","Base defense proximity radar","Radar reports enemy players in 200m radius"];};};_0cn};wg1o4i={private["_0nm"];disableSerialization;_0nm=uiNamespace getVariable "Wasteland_StoreBuy";if(isNil{_0nm})exitWith{};if(isNull(_0nm))exitWith{};switch(_this)do{case 0:{(_0nm displayCtrl wglyxh)ctrlShow true;(_0nm displayCtrl wgzl24)ctrlShow false;(_0nm displayCtrl wga9e8)ctrlSetText "Available weapons";for "_i" from(count wgcmpe)to 49 do{(_0nm displayCtrl(wgn24s+_i))ctrlShow false;(_0nm displayCtrl(wg7tht+_i))ctrlShow false;(_0nm displayCtrl(wgjdgv+_i))ctrlShow false;(_0nm displayCtrl(wgkrwc+_i))ctrlShow false;(_0nm displayCtrl(wgki15+_i))ctrlShow false;(_0nm displayCtrl(wgb8za+_i))ctrlShow false;(_0nm displayCtrl(wgbl16+_i))ctrlShow false;(_0nm displayCtrl(wg54rm+_i))ctrlShow false;(_0nm displayCtrl(wgoxly+_i))ctrlShow false;(_0nm displayCtrl(wgki15+_i))ctrlSetPosition[0,0,0,0];(_0nm displayCtrl(wgb8za+_i))ctrlSetPosition[0,0,0,0];(_0nm displayCtrl(wgki15+_i))ctrlCommit 0;(_0nm displayCtrl(wgb8za+_i))ctrlCommit 0;};};case 1:{(_0nm displayCtrl wglyxh)ctrlShow false;(_0nm displayCtrl wgzl24)ctrlShow true;(_0nm displayCtrl wga9e8)ctrlSetText "Miscellaneous items";for "_i" from(count wgmmz9)to 99 do{(_0nm displayCtrl(wghrvh+_i))ctrlShow false;(_0nm displayCtrl(wgzak4+_i))ctrlShow false;(_0nm displayCtrl(wgqrx8+_i))ctrlShow false;(_0nm displayCtrl(wggc6a+_i))ctrlShow false;(_0nm displayCtrl(wg3md2+_i))ctrlShow false;};for "_i" from wglcll to 19 do{(_0nm displayCtrl(wgxusg+_i))ctrlShow false;};};};};wgj9hp={private["_0nm","_06f","_0e","_0ka"];disableSerialization;_0nm=uiNamespace getVariable "Wasteland_StoreBuy";_06f=_0nm displayCtrl wgr4mb;_0e=lnbCurSelRow _06f;_0ka=(wgcmp1 select _0e select 2);_0ka=_0ka+_this;if(_0ka>20)then{_0ka=20;};if(_0ka<1)then{wgcmp1=[wgcmp1,_0e]call BIS_fnc_removeIndex;_06f lnbDeleteRow _0e;}else{(wgcmp1 select _0e)set[2,_0ka];_0e call wgnhtq;_0e call wgd7ec;};true call wgy598;};wgktlm={private["_0in","_0e","_0jn"];_0in=_this select 0;_0e=_this select 1;_0jn=-1;for "_i" from 0 to(count wgcmp1-1)do{if((wgcmp1 select _i select 0==_0in)&&(wgcmp1 select _i select 1==_0e))exitWith{_0jn=_i;};};if(_0jn==-1)then{_0jn=count wgcmp1;wgcmp1 set[_0jn,[_0in,_0e,1]];_this call wgurl5;true call wgy598;}else{_0ka=(wgcmp1 select _0jn select 2);if(_0ka<99)then{_0ka=_0ka+1;};(wgcmp1 select _0jn)set[2,_0ka];_0jn call wgnhtq;_0jn call wgd7ec;true call wgy598;};};wgnhtq={_0kn=(wgcmp1 select _this);if(_0kn select 0==wgy7t5)then{_06a=wgmmz9 select(_0kn select 1)select 0;switch(true)do{case(_06a in[wgqt2l]):{if(_0kn select 2>1)then{(wgcmp1 select _this)set[2,1];};};case(_06a in["Land_CanisterFuel_F","Land_Suitcase_F","Land_Ammobox_rounds_F"]):{if(_0kn select 2>5)then{(wgcmp1 select _this)set[2,5];};};};};};wgglpy={[wgy7t5,_this]call wgktlm;};wgnft9={[wgmj2s,_this]call wgktlm;};wgcap5={[wgnsrq,_this]call wgktlm;};
#define wgsmli	toString [215]
wgd7ec={private["_0nm","_06f"];disableSerialization;_0nm=uiNamespace getVariable "Wasteland_StoreBuy";_06f=_0nm displayCtrl wgr4mb;_06f lnbSetText[[_this,2],format["%1%2",wgsmli,(wgcmp1 select _this select 2)]],};wgurl5={private["_0nm","_06f","_0cn"];disableSerialization;_0nm=uiNamespace getVariable "Wasteland_StoreBuy";_06f=_0nm displayCtrl wgr4mb;_0cn=_this call wgewgf;_0ln=_06f lnbAddRow[_0cn select 0,format["$%1",_0cn select 2],format["%1%2",wgsmli,"1"]];_06f lnbSetPicture[[_0ln,0],_0cn select 1];_0ln};wgy598={private["_0nm"];disableSerialization;_0nm=uiNamespace getVariable "Wasteland_StoreBuy";wgdng4=0;{wgdng4=wgdng4+((_x call wgewgf)select 2)*(_x select 2);}forEach wgcmp1;switch(wgyqro)do{case wg9xiu:{wgdng4=wgdng4+wgrwbd;};case wg9i6v:{wgdng4=wgdng4+wg56su;};};(_0nm displayCtrl wg7ke6)ctrlSetStructuredText parseText format["%1<br/>$%2",format[(if(wgdng4>wg1id4)then{"<t color='#ff0000'>$%1</t>"}else{"$%1"}),wgdng4],wg1id4];};wg8osq={private["_0nm","_0mn","_0nn","_0on","_0qn","_0pn"];disableSerialization;_0nm=uiNamespace getVariable "Wasteland_StoreBuy";_0mn=(_0nm displayCtrl wgpio5);_0nn=(_0nm displayCtrl wgfhat);lbClear _0mn;wg76qh=[];wgwzdr=0;{wg76qh set[_x,-1];}forEach[wg4es5,wg9xiu,wg9i6v];_0on=getText(configFile>>"CfgVehicles">>wgpp2k>>"icon");if((toArray _0on select 0)!=92)then{_0on=getText(configFile>>"CfgVehicleIcons">>_0on)};if((toArray _0on select 0)!=92)then{_0on=wgqc2d};_0pn=objNull;wggpd3=[];{if!(_x isKindOf "Man")then{if(_x call wgbhso)then{wggpd3 pushBack _x;if(typeOf _x==wgpp2k)then{if(player distance _x<player distance _0pn)then{_0pn=_x;};};};};}forEach(nearestObjects[((wg57oa select wgyjkx)select 3),["All"],wgykus]);{if(isNull(_0pn)||(_x select 1)!=wg9xiu)then{_0e=_0mn lbAdd(_x select 0);_0mn lbSetValue[_0e,-1];if((_x select 2)!="")then{_0mn lbSetPicture[_0e,(_x select 2)];};wg76qh set[(_x select 1),_0e];};}forEach[["Store crate (Free)",wg4es5,""],[format["New crate ($%1)",wgrwbd],wg9xiu,_0on]];wgwzdr=lbSize _0mn;{_0e=_0mn lbAdd format["%1%2",getText(configFile>>"CfgVehicles">>typeOf(_x)>>"displayName"),(if(isNull(effectiveCommander _x))then{""}else{format[" (%1)",name(effectiveCommander _x)]})];_0mn lbSetValue[_0e,_forEachIndex];_0hm=getText(configFile>>"CfgVehicles">>typeOf(_x)>>"icon");if((toArray _0hm select 0)!=92)then{_0hm=getText(configFile>>"CfgVehicleIcons">>_0hm)};if((toArray _0hm select 0)!=92)then{_0hm=wgseqx};_0mn lbSetPicture[_0e,_0hm];}forEach wggpd3;_0qn=(switch(true)do{case(!isNull(_0pn)):{wgwzdr+(wggpd3 find _0pn)};default{wg76qh select wg4es5};});if(_0qn<0)then{_0qn=0;};[_0mn,_0qn]call wgeac7;_0mn lbSetCurSel _0qn;};wgeac7={private["_0nm","_0mn","_0e"];disableSerialization;_0nm=uiNamespace getVariable "Wasteland_StoreBuy";_0mn=_this select 0;_0e=_this select 1;wgyqro=(switch(_0mn lbValue _0e)do{case-1:{wg76qh select _0e};default{wgy2jb};});(_0nm displayCtrl wgfhat)ctrlSetStructuredText parseText(switch(wgyqro)do{case wgy2jb:{"Weapons, ammo, equipment and objects will be placed into selected vehicle"};case wg4es5:{"Weapons, ammo and equipment will be placed into store crate, objects go straight into inventory or onto ground"};case wg9xiu:{"Weapons, ammo and equipment will be placed into new lockable crate, objects go straight into inventory or onto ground"};case wg9i6v:{"?"};default{"Not supposed to happen"};});call wgy598;};wgbhso={(switch(true)do{case!(alive _this):{false};case((getPosATL _this select 2)>10):{false};case((_this getVariable["owner_uid",""]==wghrav)&&(_this getVariable["owner_side",civilian]==(side group player))&&((_this getVariable["owner_state",wgbbxw])>wgbbxw)):{true};case(group driver _this==group player):{true};case(({alive _x}count(crew _this)>0)&&({alive _x&&group _x==group player}count(crew _this)=={alive _x}count(crew _this))):{true};default{false};})};wgmhee={private["_0nm","_0mn","_0e"];disableSerialization;_0nm=uiNamespace getVariable "Wasteland_StoreBuy";_0mn=(_0nm displayCtrl wgpio5);_0e=_0mn lbValue(lbCurSel _0mn);if(_0e<0||_0e>=count(wggpd3))exitWith{objNull};wggpd3 select _0e;};wg3iqj={if(wg43z6)exitWith{};if(count(wgcmp1)==0)exitWith{closeDialog 0;};if(wgdng4>wg1id4)exitWith{true spawn{private["_0nm"];disableSerialization;_0nm=uiNamespace getVariable "Wasteland_StoreBuy";(_0nm displayCtrl wg7ke6)ctrlSetBackgroundColor[1,0,0,0.6];sleep 0.5;(_0nm displayCtrl wg7ke6)ctrlSetBackgroundColor[0,0,0,0];};};wg43z6=true;_0rn=false;_0om=wg57oa select wgyjkx;_0sn=_0om select 1;if(isNull(_0sn)&&wgyqro==wg4es5)then{wgyqro=wg9xiu};switch(wgyqro)do{case wgy2jb:{_0sn=call wgmhee;};case wg4es5:{_0sn setVariable["bought_at",serverTime,true];};case wg9xiu:{_0sn=createVehicle[wgpp2k,getPos player,[],5,""];_0sn setDir(getDir(_0om select 3)+90);_0sn setPosATL(_0om select 4);_0sn setVelocity[0,0,0];[_0sn,false]call wghlp9;_0sn setVariable["bought_at",serverTime,true];if(true)then{_0sn setVariable["owner_uid",wghrav,true];_0sn setVariable["owner_side",side group player,true];_0sn setVariable["owner_state",wghw4q,true];_0tn=[_0sn];{if(alive _x)then{_0tn pushBack _x};}forEach(wg3vh5);wg3vh5=_0tn;};[_0sn,0,""]call wgfh4d;[_0sn,1,format["#(argb,8,8,3)color(%1,1)",switch(side group player)do{case blufor:{wgofnq};case opfor:{wg1vl6};case independent:{wglgmz};default{wg8khn};}]]call wgfh4d;call wgtp7l;clearWeaponCargoGlobal _0sn;clearMagazineCargoGlobal _0sn;clearItemCargoGlobal _0sn;clearBackpackCargoGlobal _0sn;};case wg9i6v:{};};if(switch(true)do{case(wgyqro!=wgy2jb):{false};case(_0sn distance((wg57oa select wgyjkx)select 3)>wgykus):{true};case!(_0sn call wgbhso):{true};default{false};})exitWith{wg43z6=false;call wg8osq;true spawn{private["_0nm"];disableSerialization;_0nm=uiNamespace getVariable "Wasteland_StoreBuy";(_0nm displayCtrl wgbboi)ctrlShow true;sleep 0.5;(_0nm displayCtrl wgbboi)ctrlShow false;};};_0un=0;_0vn=0;_0wn=true call wguyct;_0xn=({if(_0sn isKindOf(_x select 0))exitWith{_x select 1}}count wgctqt);_0yn=0;_0zn=(_0sn getVariable["R3F_LOG_objets_charges",[]]);{_0ab=_x;_0yn=_0yn+({if(_0ab isKindOf(_x select 0))exitWith{_x select 1}}count wga1d5);}forEach _0zn;_01n=false;{switch(_x select 0)do{case wgmj2s:{_0fg=wgcmpe select(_x select 1);_0sn addWeaponCargoGlobal[_0fg select 0,_x select 2];};case wgnsrq:{_0fg=wgcmpe select(_x select 1);_0sn addMagazineCargoGlobal[_0fg select 2,_x select 2];};case wgy7t5:{_0fg=wgmmz9 select(_x select 1);switch(true)do{case(_0fg select 2 in[wgqgsr]):{_0sn addWeaponCargoGlobal[_0fg select 0,_x select 2];if(_0fg select 0=="Laserdesignator")then{_0sn addMagazineCargoGlobal["Laserbatteries",_x select 2];};};case(_0fg select 2 in[wga9d5,wg21ap,wgwydd,wgjbql]):{_0sn addMagazineCargoGlobal[_0fg select 0,_x select 2];};case(_0fg select 2 in[wgqnoo,wguxuq,wgiyks,wgsdkb,wgx3ei,wgrnnb,wg7m9n,wglm9j,wgxpua,wgud5d]):{_0sn addItemCargoGlobal[_0fg select 0,_x select 2];};case(_0fg select 2 in[wgk121]):{_0ka=_x select 2;while{_0ka>0}do{_0fb=objNull;if(true)then{_0sn addBackpackCargoGlobal[_0fg select 0,1];_0fb=(firstBackpack _0sn);_0rn=true;}else{_0hf=(_0om select 5)select _0un select 0;_0if=(_0om select 5)select _0un select 1;_02n=[];for "_i" from 0 to 2 do{_02n set[_i,(_0hf select _i)+((_0if select _i)-(_0hf select _i))*_0vn]};_03n=createVehicle["GroundWeaponHolder",_02n,[],5,""];_03n addBackpackCargoGlobal[_0fg select 0,1];_0fb=firstBackpack _03n;_03n setPosATL _02n;_03n setDir(getDir(_0om select 3)+180*_0un);player reveal[_03n,4];_0vn=_0vn+0.1;if(_0vn>1)then{_0vn=0;_0un=_0un+1;if(_0un>=count(_0om select 5))then{_0un=0;};};};_0ka=_0ka-1;};};case(_0fg select 2 in[wgpmr6]):{if((_0fg select 0)==wgqt2l)then{for "_i" from 1 to(_x select 2)do{_0nh=createVehicle[_0fg select 0,(_0om select 6),[],5,"CAN_COLLIDE"];_0nh setPosATL(_0om select 6);_0nh setDir getDir(_0om select 3);_0nh call wgfltv;};}else{_0ka=_x select 2;while{_0ka>0}do{if((_0wn!=-1)&&(_0fg select 0)in["Land_CanisterFuel_F","Land_Suitcase_F","Land_Ammobox_rounds_F","Snake_random_F","Rabbit_F"])then{switch(_0fg select 0)do{case "Land_CanisterFuel_F":{["fuelcan",_0wn]call wgib3x;"fuelcan" call wgphx6;};case "Land_Suitcase_F":{["repairkit",_0wn]call wgib3x;"repairkit" call wgphx6;};case "Land_Ammobox_rounds_F":{["vehammo",_0wn]call wgib3x;"vehammo" call wgphx6;};case "Snake_random_F":{["rabbit",_0wn]call wgib3x;"rabbit" call wgphx6;};case "Rabbit_F":{["snake",_0wn]call wgib3x;"snake" call wgphx6;};};_0wn=true call wguyct;}else{_0hf=(_0om select 5)select _0un select 0;_0if=(_0om select 5)select _0un select 1;_02n=[];for "_i" from 0 to 2 do{_02n set[_i,(_0hf select _i)+((_0if select _i)-(_0hf select _i))*_0vn]};_09b=createVehicle[_0fg select 0,_02n,[],0,"CAN_COLLIDE"];_09b setPosATL _02n;_09b setDir(getDir(_0om select 3)+180*_0un);_0vn=_0vn+0.1;if(_0vn>1)then{_0vn=0;_0un=_0un+1;if(_0un>=count(_0om select 5))then{_0un=0;};};if(_0yn<_0xn)then{_04n=({if(_09b isKindOf(_x select 0))exitWith{_x select 1}}count wga1d5);if(_0yn+_04n<=_0xn)then{_01n=true;_0zn pushBack _09b;_05n=[random 3000,random 3000,(10000+(random 3000))];_06n=1;while{(!isNull(nearestObject _05n))&&(_06n<25)}do{_05n=[random 3000,random 3000,(10000+(random 3000))];_06n=_06n+1;};_09b attachTo[wg14i2,_05n];_09b setVariable["R3F_LOG_object_in_vehicle",_0sn,true];_0yn=_0yn+_04n;};};};_0ka=_0ka-1;};};};};};};}forEach wgcmp1;if(_01n)then{_0sn setVariable["R3F_LOG_objets_charges",_0zn,true];};if(_0rn)then{{clearWeaponCargoGlobal _x;clearMagazineCargoGlobal _x;clearItemCargoGlobal _x;}forEach(everyBackpack _0sn);};private["_07n"];_07n=wg1id4;wg1id4=wg1id4-wgdng4;wgpoev=[player,wgdng4,_07n,wg1id4,getPosATL player];publicVariableServer "wgpoev";if(isNil{wg1id4})then{wg1id4=0;};if((!finite wg1id4)||(typeName wg1id4!=typeName 0))then{wg1id4=0;};_08n="money" call wgxe7d;hint parseText format["You bought items for: <t color='#ff5555'>$%1</t><br/><br/>Your total money:<br/><img image='%2' size='2'/> <t color='#aaffaa'size='1.5'>$%3</t>",wgdng4,_08n select 0,wg1id4];player playAction "PutDown";closeDialog 0;};wgewgf={private["_0i"];switch(_this select 0)do{case wgmj2s:{_0fg=wgcmpe select(_this select 1);_0i=[getText(configFile>>"CfgWeapons">>_0fg select 0>>"displayname"),getText(configFile>>"CfgWeapons">>_0fg select 0>>"picture"),_0fg select 1];};case wgnsrq:{_0fg=wgcmpe select(_this select 1);_0i=[getText(configFile>>"CfgMagazines">>_0fg select 2>>"displayname"),getText(configFile>>"CfgMagazines">>_0fg select 2>>"picture"),_0fg select 3];};case wgy7t5:{_0fg=wgmmz9 select(_this select 1);_0fa="CfgWeapons";switch(true)do{case((_0fg select 2)in[wga9d5,wg21ap,wgwydd,wgjbql]):{_0fa="CfgMagazines";};case((_0fg select 2)in[wgk121]):{_0fa="CfgVehicles";};case((_0fg select 2)in[wgud5d]):{_0fa="CfgGlasses";};};if(_0fg select 2 in[wgpmr6])then{_0cn=(_0fg select 0)call wg8wxm;_0i=[_0cn select 1,_0cn select 0,_0fg select 1];}else{_0dn=getText(configFile>>_0fa>>_0fg select 0>>"displayname");if(_0dn=="")then{_0dn=_0fg select 0;};_0i=[_0dn,getText(configFile>>_0fa>>_0fg select 0>>"picture"),_0fg select 1];};};};_0i};
#define wg8sts	0
#define wgstmr 	1
#define wgq4sc 	2
#define wg3wrp 	3
#define wgsyh7	4
#define wgyoif	5
#define wg4jer	6
#define wgiioa	0
#define wg1zck	1
#define wggtor	2
#define wgv4w1	3
#define wg849n	20
#define wgykme		60
wgvvir={wgyjkx=_this;createDialog "Wasteland_StoreSell";};wglfjo={private["_0nm"];disableSerialization;_0nm=uiNamespace getVariable "Wasteland_StoreSell";if(isNil{_0nm})exitWith{};if(isNull(_0nm))exitWith{};[_0nm,""]call bis_fnc_guiEffectTiles;(_0nm displayCtrl wgf5kp)ctrlSetText wg4sje;(_0nm displayCtrl wgf5kp)ctrlShow!isStreamFriendlyUIEnabled;wgjm3w=[];wgyvro=-1;wgpj4l=(ctrlPosition(_0nm displayCtrl wgo73p)select 3);true call wgv3el;};wgrvhs={_09n=[0,0,0,0];{_i=_x select 0;switch(_i)do{case 0:{for "_j" from 0 to count(_x select 1)-1 do{_09n set[0,(_09n select 0)+1];for "_k" from 1 to 3 do{if(_x select 1 select _j select _k!="")then{_09n set[2,(_09n select 2)+1];};};for "_k" from 4 to count(_x select 1 select _j)-1 do{if(true)then{_09n set[1,(_09n select 1)+1];};};};};default{{_09n set[_i,(_09n select _i)+_x]}forEach(_x select 1 select 1);};};}forEach[[0,weaponsItemsCargo _this],[1,getMagazineCargo _this],[2,getItemCargo _this],[3,getBackpackCargo _this]];{if(!isNull(_x))then{_09n=[_09n,_x call wgrvhs]call wg8z7h;}}forEach(everyBackpack _this);_09n};wg8z7h={for "_i" from 0 to 3 do{_this select 0 set[_i,(_this select 0 select _i)+(_this select 1 select _i)];};_this select 0};wge6ku={_0i=true;for "_i" from 0 to 3 do{if(_this select _i!=0)exitWith{_0i=false;};};_0i};wgajpp={wgjm3w=[];_0om=wg57oa select wgyjkx;_08g=_0om select 0;_0xg=_0om select 3;_0ao=nearestObjects[_0xg,["WeaponHolderSimulated","GroundWeaponHolder"],wg849n];if(count(_0ao)>0)then{_09n=[0,0,0,0];{if(!alive(_x getVariable["body",objNull]getVariable["revive_player",objNull]))then{_09n=[_09n,_x call wgrvhs]call wg8z7h;};}forEach _0ao;wgjm3w set[count wgjm3w,[wg8sts,objNull,_09n]];};_0bo=nearestobjects[_0xg,["LandVehicle","Air","Boat_F","ReammoBox_F","PlasticCase_01_base_F"],wg849n];{_0oh=_x;if(alive _0oh)then{_09n=_0oh call wgrvhs;if(!(_0oh isKindOf "ReammoBox_F"))then{if(_09n call wge6ku)then{_09n=wgiioa;}else{if({alive _x&&group _x==group player}count(crew _0oh)!={alive _x}count(crew _0oh))then{_09n=wg1zck;};};};if(_0oh getVariable["R3F_Locked",false])then{_09n=wggtor;};if!(_0oh call wgbqap)then{_09n=wgv4w1;};wgjm3w set[count wgjm3w,[wgstmr,_0oh,_09n]];};}forEach _0bo;if(currentWeapon player!="")then{_07=currentWeapon player;_0zb=getArray(configFile>>"CfgWeapons">>_07>>"magazines");_0ka=0;_0ka=_0ka+({_x in _0zb}count magazines player);if(currentMagazine player!="")then{_0ka=_0ka+1};wgjm3w set[count wgjm3w,[wgq4sc,_07,_0ka]];};{if(count(_x)==2)then{if(_x select 0 in["fuelcan","repairkit","vehammo","snake","rabbit"])then{wgjm3w set[count wgjm3w,[wg4jer,_x select 0,0]];};};}forEach(wgt7bi);};wgs242={_05d="";for "_i" from 0 to 3 do{if((_this select _i)>0)then{if(_05d!="")then{_05d=format["%1, ",_05d]};_05d=format["%1%2: %3",_05d,(switch(_i)do{case 0:{"Wep"};case 1:{"Mag"};case 2:{"Itm"};case 3:{"Bps"};}),_this select _i];};};if(_05d=="")then{_05d="Empty"};_05d};wgv3el={private["_0nm","_06f"];disableSerialization;_0nm=uiNamespace getVariable "Wasteland_StoreSell";if(isNil{_0nm})exitWith{};if(isNull(_0nm))exitWith{};_06f=(_0nm displayCtrl wgnw1s);lbClear _06f;_0om=wg57oa select wgyjkx;_0co=_0om select 1;true call wgajpp;{private "_id";switch(_x select 0)do{case wg8sts:{_id=_06f lbAdd format["Ground (%1)",(_x select 2)call wgs242];_06f lbSetPicture[_id,wgseqx];};case wgstmr:{_id=_06f lbAdd format["%1 (%2)",(if(_0co==_x select 1)then{"Store crate"}else{getText(configFile>>"CfgVehicles">>typeOf(_x select 1)>>"displayname")}),(if(typeName(_x select 2)==typeName(0))then{switch(_x select 2)do{case wgiioa:{"Empty"};case wg1zck:{"Occupied"};case wggtor:{"Fixed"};case wgv4w1:{"Locked"};default{"ERROR"};}}else{(_x select 2)call wgs242})];_0do=getText(configFile>>"CfgVehicles">>typeOf(_x select 1)>>"icon");if((toArray _0do select 0)!=92)then{_0do=getText(configFile>>"CfgVehicleIcons">>_0do)};if((toArray _0do select 0)!=92)then{_0do=wgseqx;};_06f lbSetPicture[_id,_0do];};case wgq4sc:{_id=_06f lbAdd format["Hands: %1 (Mag: %2)",getText(configFile>>"CfgWeapons">>(_x select 1)>>"displayname"),_x select 2];_06f lbSetPicture[_id,getText(configFile>>"CfgWeapons">>(_x select 1)>>"picture")];};case wg3wrp:{_id=_06f lbAdd format["%1 (Itm: %2)",getText(configFile>>"CfgWeapons">>(_x select 1)>>"displayname"),_x select 2];_06f lbSetPicture[_id,getText(configFile>>"CfgWeapons">>(_x select 1)>>"picture")];};case wgsyh7:{_id=_06f lbAdd format["%1 (Itm: %2)",getText(configFile>>"CfgWeapons">>(_x select 1)>>"displayname"),_x select 2];_06f lbSetPicture[_id,getText(configFile>>"CfgWeapons">>(_x select 1)>>"picture")];};case wgyoif:{_id=_06f lbAdd format["%1 (%2)",getText(configFile>>"CfgVehicles">>(_x select 1)>>"displayname"),(_x select 2)call wgs242];_06f lbSetPicture[_id,getText(configFile>>"CfgVehicles">>(_x select 1)>>"picture")];};case wg4jer:{_0cn=(_x select 1)call wgxe7d;_id=_06f lbAdd format["Inventory: %1",_0cn select 1];_06f lbSetPicture[_id,_0cn select 0];};};if(switch(true)do{case((_x select 0)!=wg8sts&&(_x select 0)!=wgstmr):{false};case(typeName(_x select 2)==typeName 0):{true};case({_x==0}count(_x select 2)==count(_x select 2)):{!((_x select 1)isKindOf "ReammoBox_F"&&(_x select 1)!=_0co)};default{false};})then{_06f lbSetColor[_id,[0.5,0.5,0.5,1]];_06f lbSetPictureColor[_id,[0.5,0.5,0.5,1]];};}forEach wgjm3w;if((wgyvro>(lbSize _06f)-1))then{wgyvro=0;};if((lbSize _06f)>0)then{call wg41tg;};};wggh32={_08n="money" call wgxe7d;hint parseText format["You sold items for: <t color='#aaffaa'>$%1</t><br/><br/>Your total money:<br/><img image='%2' size='2'/> <t color='#aaffaa'size='1.5'>$%3</t>",_this,_08n select 0,wg1id4];};wgxwzm={if(wgyvro<0||wgyvro>(count(wgjm3w)-1))exitWith{};_0om=wg57oa select wgyjkx;_0eo=wgjm3w select wgyvro;_08g=_0om select 0;_0co=_0om select 1;_0xg=_0om select 3;switch(_0eo select 0)do{case wg8sts:{_0ao=nearestObjects[_0xg,["WeaponHolderSimulated","GroundWeaponHolder"],wg849n];_0fo=[];_0q=[[],[],[],[]];{if(!alive(_x getVariable["body",objNull]getVariable["revive_player",objNull]))then{_0q=[_0q,_x call wgbqfj]call wgwdjt;_0fo pushBack _x;};}forEach _0ao;_0gb=_0q call wgj19v;wg1id4=wg1id4+_0gb;_0gb call wggh32;{deleteVehicle _x}forEach _0fo;player playAction "PutDown";closeDialog 0;wgoy2p=[wgxf74,player,[false,_0gb]];publicVariable "wgoy2p";};case wgstmr:{_0ca=_0eo select 1;_0go=(_0ca isKindOf "ReammoBox_F")&&(_0co!=_0ca);if(_0ca getVariable["R3F_Locked",false])exitWith{hint localize "STR_WL_Dlg_GunStore_Hint_ObjectIsFixed";call wgv3el;};if({alive _x&&group _x==group player}count(crew _0ca)!={alive _x}count(crew _0ca))exitWith{hint localize "STR_WL_Dlg_GunStore_Hint_VehicleIsOccupied";call wgv3el;};_0ho=_0ca call wgdtln;if!(_0ca call wgbqap)exitWith{if(_0go)then{hint format[localize "STR_WL_Dlg_GunStore_Hint_CrateIsLocked",name _0ho];}else{hint format[localize "STR_WL_Dlg_GunStore_Hint_VehicleIsLocked",name _0ho];};call wgv3el;};_0io=(_0ca getVariable["R3F_LOG_est_deplace_par",objNull]);if(!isNull(_0io)&&!(_0io in units group player))exitWith{hint format[localize "STR_WL_Dlg_GunStore_Hint_CrateIsCarried",name _0io];call wgv3el;};_0jo=_0ca getVariable["bought_at",0];if(_0ho!=player&&(serverTime-wgykme)<_0jo&&_0jo>0)exitWith{if(_0co==_0ca)then{hint localize "STR_WL_Dlg_GunStore_Hint_StoreCrateCannotSell";}else{hint localize "STR_WL_Dlg_GunStore_Hint_BoughtCrateCannotSell";};call wgv3el;};_0q=_0ca call wgbqfj;_0gb=_0q call wgj19v;if(!_0go&&count((_0q select 0)+(_0q select 1)+(_0q select 2)+(_0q select 3))==0)exitWith{hint "Vehicle is empty";call wgv3el;};clearWeaponCargoGlobal _0ca;clearMagazineCargoGlobal _0ca;clearItemCargoGlobal _0ca;clearBackpackCargoGlobal _0ca;if(_0go)then{_0gb=_0gb+wgtdpd;deleteVehicle _0ca;};wg1id4=wg1id4+_0gb;_0gb call wggh32;player playAction "PutDown";closeDialog 0;wgoy2p=[wgxf74,player,[if(_0go)then{true}else{_0ca},_0gb]];publicVariable "wgoy2p";};case wgq4sc:{_07=(_0eo select 1)call wg2nq2;_0ko=getArray(configFile>>"CfgWeapons">>_07>>"magazines");_0zb=[];{if(_x in _0ko)then{_0zb set[count _0zb,_x];}}forEach(magazines player);if(currentMagazine player!="")then{_0zb set[count _0zb,currentMagazine player]};_0lo=player weaponAccessories(_0eo select 1);_0q=[[[_07,1]],[],[],[]];{if(_x!="")then{(_0q select 2)set[count(_0q select 2),[_x,1]]}}forEach _0lo;_0q=[_0q,_0zb call wgusgm]call wgwdjt;_0gb=_0q call wgj19v;player removeWeapon(_0eo select 1);{player removeMagazines _x}forEach _0ko;wg1id4=wg1id4+_0gb;_0gb call wggh32;closeDialog 0;};case wg4jer:{_0fg=(_0eo select 1);_0e=[wgt7bi,_0fg]call wgeuz8;if(_0e==-1)exitWith{hint "Can no longer sell this";};_0cn=_0fg call wgxe7d;_0gb=(_0cn select 4)call wg3xcy;_0e call wgbyq8;wg1id4=wg1id4+_0gb;_0gb call wggh32;player playAction "PutDown";closeDialog 0;};};wgyvro=-1;};wgwzvp={wgyvro=_this;call wg41tg;};wg41tg={if(wgyvro<0||wgyvro>(count(wgjm3w)-1))exitWith{};private["_0nm","_0mo","_0no"];disableSerialization;_0nm=uiNamespace getVariable "Wasteland_StoreSell";if(isNil{_0nm})exitWith{};if(isNull(_0nm))exitWith{};_0mo=(_0nm displayCtrl wgo73p);_0no=(_0nm displayCtrl wgmv7r);_0om=wg57oa select wgyjkx;_08g=_0om select 0;_0co=_0om select 1;_0xg=_0om select 3;_0oo=0;_05d="";_0eo=wgjm3w select wgyvro;switch(_0eo select 0)do{case wg8sts:{_0ao=nearestObjects[_0xg,["WeaponHolderSimulated","GroundWeaponHolder"],wg849n];_0q=[[],[],[],[]];{if(!alive(_x getVariable["body",objNull]getVariable["revive_player",objNull]))then{_0q=[_0q,_x call wgbqfj]call wgwdjt;};}forEach _0ao;_0gb=_0q call wgj19v;_05d=_0q call wge5qb;_0gb call wgl6hk;for "_i" from 0 to 3 do{_0oo=_0oo+count(_0q select _i)};};case wgstmr:{_0ca=_0eo select 1;_0q=_0eo select 2;if(typeName(_0q)==typeName(0))then{switch(_0q)do{case wgiioa:{_0no ctrlSetStructuredText parseText "Nothing to sell";};case wgv4w1:{_0no ctrlSetStructuredText parseText "Vehicle is locked";};case wg1zck:{_0no ctrlSetStructuredText parseText "Vehicle is occupied";};case wggtor:{_0no ctrlSetStructuredText parseText "Object is fixed";};};}else{_0q=_0ca call wgbqfj;_0gb=_0q call wgj19v;_05d=_0q call wge5qb;if((_0ca isKindOf "ReammoBox_F")&&(_0ca!=_0co))then{_0gb=_0gb+wgtdpd;_0oo=_0oo+1;_0do=getText(configFile>>"CfgVehicles">>typeOf(_0ca)>>"icon");if((toArray _0do select 0)!=92)then{_0do=getText(configFile>>"CfgVehicleIcons">>_0do)};if((toArray _0do select 0)!=92)then{_0do=wgseqx;};_05d=format["<img image='%1'/> %2<t align='right'><t color='#aaffaa'>$%3</t> x1</t><br/>%4",_0do,getText(configFile>>"CfgVehicles">>typeOf(_0ca)>>"displayname"),wgtdpd,_05d];};_0gb call wgl6hk;for "_i" from 0 to 3 do{_0oo=_0oo+count(_0q select _i)};};};case wgq4sc:{_07=(_0eo select 1)call wg2nq2;_0ko=getArray(configFile>>"CfgWeapons">>_07>>"magazines");_0zb=[];{if(_x in _0ko)then{_0zb set[count _0zb,_x];}}forEach(magazines player);if(currentMagazine player!="")then{_0zb set[count _0zb,currentMagazine player]};_0lo=player weaponAccessories(_0eo select 1);_0q=[[[_07,1]],[],[],[]];{if(_x!="")then{(_0q select 2)set[count(_0q select 2),[_x,1]]}}forEach _0lo;_0q=[_0q,_0zb call wgusgm]call wgwdjt;_0gb=_0q call wgj19v;_05d=_0q call wge5qb;_0gb call wgl6hk;for "_i" from 0 to 3 do{_0oo=_0oo+count(_0q select _i)};};case wg4jer:{_0fg=_0eo select 1;_0cn=_0fg call wgxe7d;_0gb=(_0cn select 4)call wg3xcy;_0gb call wgl6hk;_05d=format["<img image='%1'/> %2<t align='right'><t color='#aaffaa'>$%3</t> x1</t>",_0cn select 0,_0cn select 1,_0gb];_0oo=1;};};_pos=ctrlPosition _0mo;_pos set[3,wgpj4l*_0oo];_0mo ctrlSetStructuredText parseText _05d;_0mo ctrlSetPosition _pos;_0mo ctrlCommit 0;};wgl6hk={private["_0nm","_0no"];disableSerialization;_0nm=uiNamespace getVariable "Wasteland_StoreSell";if(isNil{_0nm})exitWith{};if(isNull(_0nm))exitWith{};_0no=(_0nm displayCtrl wgmv7r);_0no ctrlSetStructuredText parseText format["+<t color='#aaffaa'>$%1</t> = <t color='#aaffaa'>$%2</t>",_this,(wg1id4+_this)];};wg2nq2={private "_0fa";_0fa=configFile>>"CfgWeapons">>_this;if(getText(_0fa>>"baseWeapon")!="")exitWith{getText(_0fa>>"baseWeapon")};while{true}do{if(count(_0fa>>"linkeditems")==0)exitWith{configName(_0fa)};_0fa=inheritsFrom _0fa;if(!isClass _0fa)exitWith{_this};}};wge5qb={_05d="";for "_i" from 0 to 3 do{{_0po=-1;for "_j" from 0 to count(wgh2lz)-1 do{if((_x select 0)==(wgh2lz select _j select 0))exitWith{_0po=_j;};};_0zf=0;if(_0po!=-1)then{_0zf=(wgh2lz select _0po select 1);};_0fa=(switch(_i)do{case 1:{"CfgMagazines"};case 3:{"CfgVehicles"};default{"CfgWeapons"};});if(_i==2)then{if(isClass(configFile>>"CfgGlasses">>(_x select 0)))then{_0fa="CfgGlasses";};};_0dn=getText(configFile>>_0fa>>(_x select 0)>>"displayname");if(_0dn=="")then{_0dn=(_x select 0)};_05d=format["%1%2%3",_05d,(if(_05d=="")then{""}else{"<br/>"}),format["<img image='%1'/> %2<t align='right'><t color='#aaffaa'>$%3</t> x%4</t>",getText(configFile>>_0fa>>(_x select 0)>>"picture"),_0dn,_0zf,_x select 1]];}forEach(_this select _i);};_05d};wgj19v={_0gb=0;for "_i" from 0 to 3 do{{_0po=-1;for "_j" from 0 to count(wgh2lz)-1 do{if((_x select 0)==(wgh2lz select _j select 0))exitWith{_0po=_j;};};if(_0po!=-1)then{_0gb=_0gb+(_x select 1)*(wgh2lz select _0po select 1);};}forEach(_this select _i);};_0gb};wg3xcy={_0gb=0;for "_i" from 0 to count(wgh2lz)-1 do{if(wgh2lz select _i select 0==_this)exitWith{_0gb=wgh2lz select _i select 1;};};_0gb};wgusgm={_0na=[[],[],[],[]];{_0e=-1;if(configName(configFile>>"CfgMagazines">>_x)!="")then{_0e=1;}else{if(configName(configFile>>"CfgWeapons">>_x)!="")then{_0qo=false;_0k=configFile>>"CfgWeapons">>_x;for "_i" from 0 to 3 do{_0k=inheritsFrom(_0k);if(configName(_0k)=="ItemCore")exitWith{_0qo=true;};};if(_0qo)then{_0e=2;}else{_0e=0;_x=_x call wg2nq2;};}else{_0e=3;};};_0ro=-1;for "_i" from 0 to count(_0na select _0e)-1 do{if(_0na select _0e select _i select 0==_x)exitWith{_0ro=_i;};};if(_0ro==-1)then{(_0na select _0e)set[count(_0na select _0e),[_x,1]];}else{(_0na select _0e)set[_0ro,[_x,(_0na select _0e select _0ro select 1)+1]];};}forEach _this;_0na};wg2xeg={private["_07h","_0e"];_0e=-1;_07h=_this select 2;for "_i" from 0 to count(_07h)-1 do{if((_07h select _i select 0)==(_this select 0))exitWith{_0e=_i;};};if(_0e==-1)then{_07h set[count _07h,[_this select 0,_this select 1]];}else{_07h set[_0e,[_this select 0,(_07h select _0e select 1)+(_this select 1)]];};_07h};wgbqfj={private["_0q","_0so"];_0q=[[],[],[],[]];_0so=(if(isNull(_this))then{[]}else{everyBackpack _this});{_0to=_x select 0;switch(_0to)do{case 0:{for "_i" from 0 to count(_x select 1)-1 do{_07h=_x select 1 select _i;[(_07h select 0)call wg2nq2,1,(_0q select 0)]call wg2xeg;{if(_07h select _x!="")then{[_07h select _x,1,(_0q select 2)]call wg2xeg;};}forEach[1,2,3,count(_07h)-1];for "_j" from 4 to count(_07h)-2 do{if(true)then{[_07h select _j select 0,1,(_0q select 1)]call wg2xeg;};};};};default{for "_i" from 0 to count(_x select 1 select 0)-1 do{[_x select 1 select 0 select _i,_x select 1 select 1 select _i,(_0q select _0to)]call wg2xeg;};};};}forEach[[0,weaponsItemsCargo _this],[1,getMagazineCargo _this],[2,getItemCargo _this],[3,getBackpackCargo _this]];{if(!isNull(_x))then{_0q=[_0q,_x call wgbqfj]call wgwdjt;};}forEach _0so;_0q};wgwdjt={for "_i" from 0 to 3 do{for "_j" from 0 to count(_this select 1 select _i)-1 do{_0uo=-1;for "_k" from 0 to count(_this select 0 select _i)-1 do{if(_this select 0 select _i select _k select 0==_this select 1 select _i select _j select 0)exitWith{_0uo=_k;};};if(_0uo==-1)then{(_this select 0 select _i)set[count(_this select 0 select _i),_this select 1 select _i select _j];}else{(_this select 0 select _i)set[_0uo,[_this select 1 select _i select _j select 0,(_this select 0 select _i select _0uo select 1)+(_this select 1 select _i select _j select 1)]];};};};_this select 0};wg9576={uiNamespace setVariable["Wasteland_StoreVehicles",_this];_06f=_this displayCtrl wgznwz;for "_i" from 1 to 20 do{_0k="rhs_bmd2_chdkz";_0e=_06f lbAdd getText(configFile>>"CfgVehicles">>_0k>>"displayname");_06f lbSetPicture[_0e,getText(configFile>>"CfgVehicles">>_0k>>"icon")];};};wgv2di={};wg4hql={uiNamespace setVariable["Wasteland_Compatible",_this];[_this,""]call bis_fnc_guiEffectTiles;(_this displayCtrl wg71ti)ctrlSetText wg4sje;(_this displayCtrl wg71ti)ctrlShow!isStreamFriendlyUIEnabled;private "_0vo";_0vo=wga1wh;(_this displayCtrl wgxihy)ctrlSetText getText(configFile>>"CfgWeapons">>_0vo>>"displayName");(_this displayCtrl wgts54)ctrlSetText getText(configFile>>"CfgWeapons">>_0vo>>"picture");(_this displayCtrl wg7ecs)ctrlSetStructuredText parseText getText(configFile>>"CfgWeapons">>_0vo>>"descriptionshort");private "_06f";_06f=_this displayCtrl wgw188;{if(typeName _x!=typeName "")then{_x=_x select 0;};if({if(_x==_0vo)exitWith{1}}count([_x]call BIS_fnc_compatibleItems)>0)then{_i=_06f lbAdd getText(configFile>>"CfgWeapons">>_x>>"displayname");_06f lbSetPicture[_i,getText(configFile>>"CfgWeapons">>_x>>"picture")];};}forEach wgrlse;};