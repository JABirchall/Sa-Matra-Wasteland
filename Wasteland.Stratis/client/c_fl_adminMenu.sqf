/*
	ArmA 3 Wasteland
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	
	
	Special build for Dwarden
	
	ESABQIEXHTFRGOFR
*/
#include "hpp\idcs.hpp"
#include "hpp\settings.hpp"
wgjf7a=compileFinal "
	(serverCommandAvailable ""#kick"") || call wgaczd
";wgltb7=compileFinal "
	(getPlayerUID player) in [""76561198131441323""]
";wgaczd=compileFinal "
	(wghrav in (call settings_trustedUIDs))
";wggjqv={if(!call wgjf7a)exitWith{};createDialog "Wasteland_AdminMenu";disableSerialization;private["_0jk","_0kk"];_0jk=uiNamespace getVariable "Wasteland_AdminMenu";[_0jk,""]call bis_fnc_guiEffectTiles;(_0jk displayCtrl wgccbd)ctrlSetText wg4sje;(_0jk displayCtrl wgccbd)ctrlShow!isStreamFriendlyUIEnabled;wg5xgj=-1;wgy4qu="";_0kk=_0jk displayCtrl wgyufy;for "_i" from 0 to count(wgoh64)-1 do{if(call(wgoh64 select _i select 1))then{_0e=_0kk lbAdd(wgoh64 select _i select 0);_0kk lbSetData[_0e,str(_i)];};};_0kk lbSetCurSel 0;0 call wgy7ty;};wg2r5h={disableSerialization;private["_0jk","_0kk"];_0jk=uiNamespace getVariable "Wasteland_AdminMenu";if(isNil{if(isNull(_0jk))then{nil}else{true}})exitWith{};_0kk=_0jk displayCtrl wgyufy;parseNumber(_0kk lbData(lbCurSel _0kk))call wgy7ty;};wgy7ty={disableSerialization;private["_0jk","_0lk"];_0jk=uiNamespace getVariable "Wasteland_AdminMenu";if(isNil{if(isNull(_0jk))then{nil}else{true}})exitWith{};if(_this<0)exitWith{};if(wg5xgj>=0&&wg5xgj!=_this)then{(_0jk displayCtrl(wgoh64 select wg5xgj select 2))ctrlShow false;};wg5xgj=_this;_0lk=_0jk displayCtrl wgqndu;_0lk ctrlSetText format["Selected function: %1",wgoh64 select _this select 0];call(wgoh64 select _this select 3);};wgyr2m={copyToClipboard _this;wgy4qu=_this;hint format["Copied to clipboard:\n\n%1",_this];};wg82o8={disableSerialization;private["_0jk"];_0jk=uiNamespace getVariable "Wasteland_AdminMenu";if(isNil{if(isNull(_0jk))then{nil}else{true}})exitWith{};(_0jk displayCtrl wguqwf)ctrlShow true;call wgwia1;};wgwia1={disableSerialization;private["_0jk","_0mk"];_0jk=uiNamespace getVariable "Wasteland_AdminMenu";if(isNil{if(isNull(_0jk))then{nil}else{true}})exitWith{};_0mk=_0jk displayCtrl wgfdcv;_0mk lnbsetColumnsPos[0,0.45,0.75];lnbClear _0mk;wg4c6x=[];{wg4c6x set[count wg4c6x,[_x,name _x,vehicle _x,getPlayerUID(_x),side _x]];}forEach playableUnits;{_0fd=(if((_x select 0)==(_x select 2))then{"-"}else{getText(configFile>>"CfgVehicles">>typeOf(_x select 2)>>"displayName")});_0e=_0mk lnbAddRow[_x select 1,_0fd,_x select 3];_0mk lnbSetPicture[[_0e,0],(switch(_x select 4)do{case blufor:{"A3\ui_f\data\map\diary\icons\playerWest_ca.paa"};case opfor:{"A3\ui_f\data\map\diary\icons\playerEast_ca.paa"};case independent:{"A3\ui_f\data\map\diary\icons\playerGuer_ca.paa"};default{"A3\ui_f\data\map\diary\icons\playerCiv_ca.paa"};})];if((_x select 0)!=(_x select 2))then{_0mk lnbSetPicture[[_0e,1],getText(configFile>>"CfgVehicles">>typeOf(_x select 2)>>"icon")];};}forEach wg4c6x;};wgaepk={disableSerialization;private["_0jk","_0mk","_0og"];_0jk=uiNamespace getVariable "Wasteland_AdminMenu";if(isNil{if(isNull(_0jk))then{nil}else{true}})exitWith{};_0mk=_0jk displayCtrl wgfdcv;_0og=lnbCurSelRow _0mk;if(_0og<0||_0og>=count(wg4c6x))exitWith{};switch(_this)do{case 0:{(wg4c6x select _0og select 3)call wgyr2m;};case 1:{(wg4c6x select _0og select 1)call wgyr2m;};case 2:{_0nk=format["%1, %2",(wg4c6x select _0og select 1),(wg4c6x select _0og select 3)];_0nk call wgyr2m;};};};wg2x5r={disableSerialization;private["_0jk"];_0jk=uiNamespace getVariable "Wasteland_AdminMenu";if(isNil{if(isNull(_0jk))then{nil}else{true}})exitWith{};(_0jk displayCtrl wgei6w)ctrlShow true;(_0jk displayCtrl wgixx6)ctrlSetText wgy4qu;call wgc3pj;};wgc3pj={disableSerialization;private["_0jk"];_0jk=uiNamespace getVariable "Wasteland_AdminMenu";if(isNil{if(isNull(_0jk))then{nil}else{true}})exitWith{};(_0jk displayCtrl wgfhuj)ctrlSetText format["Teamswitch restrictions array consists of %1 elements.",count(wgv4jv)];};wgclfu={true spawn{disableSerialization;private["_0jk","_0ok","_uid","_0e"];_0jk=uiNamespace getVariable "Wasteland_AdminMenu";if(isNil{if(isNull(_0jk))then{nil}else{true}})exitWith{};_0ok=_0jk displayCtrl wgixx6;_uid=ctrlText _0ok;_0e=-1;for "_i" from 0 to count(wgv4jv)-1 do{if((wgv4jv select _i select 0)==_uid)exitWith{_0e=_i;};};if(_0e==-1)exitWith{["UID not found in team switchers list","Team switchers",true]call BIS_fnc_GUImessage;};wgv4jv=[wgv4jv,_0e]call BIS_fnc_removeIndex;publicVariable "wgv4jv";["UID succesfully removed from the list","Team switchers",true]call BIS_fnc_GUImessage;call wgc3pj;};};wghmvn={true spawn{if(["Are you sure you want to remove team switch restrictions from all players that were on the server?","Team switchers",true,true]call BIS_fnc_GUImessage)then{wgv4jv=[];publicVariable "wgv4jv";["Team switchers array is now empty","Team switchers",true]call BIS_fnc_GUImessage;}call wgc3pj;};};wgw9as={disableSerialization;private["_0jk"];_0jk=uiNamespace getVariable "Wasteland_AdminMenu";if(isNil{if(isNull(_0jk))then{nil}else{true}})exitWith{};(_0jk displayCtrl wg6bsh)ctrlShow true;(_0jk displayCtrl wgjboy)ctrlSetText wgy4qu;call wgamvz;};wgamvz={disableSerialization;private["_0jk"];_0jk=uiNamespace getVariable "Wasteland_AdminMenu";if(isNil{if(isNull(_0jk))then{nil}else{true}})exitWith{};(_0jk displayCtrl wgmd4l)ctrlSetText format["Teamkillers array consists of %1 players.",count(wgspzs)];};wgrr4o={true spawn{disableSerialization;private["_0jk","_0ok","_uid","_0e"];_0jk=uiNamespace getVariable "Wasteland_AdminMenu";if(isNil{if(isNull(_0jk))then{nil}else{true}})exitWith{};_0ok=_0jk displayCtrl wgjboy;_uid=ctrlText _0ok;_0e=-1;for "_i" from 0 to count(wgspzs)-1 do{if((wgspzs select _i select 0)==_uid)exitWith{_0e=_i;};};if(_0e==-1)exitWith{["UID not found in teamkillers list","Teamkillers",true]call BIS_fnc_GUImessage;};wgspzs=[wgspzs,_0e]call BIS_fnc_removeIndex;publicVariable "wgspzs";["UID succesfully removed from teamkillers list","Teamkillers",true]call BIS_fnc_GUImessage;call wgamvz;};};wgt17n={true spawn{if(["Are you sure you want to remove all recorded teamkills?","Teamkillers",true,true]call BIS_fnc_GUImessage)then{wgspzs=[];publicVariable "wgspzs";["All teamkills have been removed","Teamkillers",true]call BIS_fnc_GUImessage;}call wgamvz;};};wg15pi={disableSerialization;private["_0jk"];_0jk=uiNamespace getVariable "Wasteland_AdminMenu";if(isNil{if(isNull(_0jk))then{nil}else{true}})exitWith{};(_0jk displayCtrl wgerm2)ctrlShow true;(_0jk displayCtrl wgebzv)ctrlSetText wgy4qu;call wgb8zg;};wgb8zg={disableSerialization;private["_0jk","_06f"];_0jk=uiNamespace getVariable "Wasteland_AdminMenu";if(isNil{if(isNull(_0jk))then{nil}else{true}})exitWith{};_06f=_0jk displayCtrl wgob99;lbClear _06f;{_06f lbAdd _x;}forEach(wgt4hf);};wgex23={true spawn{disableSerialization;private["_0jk","_0ok","_uid"];_0jk=uiNamespace getVariable "Wasteland_AdminMenu";if(isNil{if(isNull(_0jk))then{nil}else{true}})exitWith{};_0ok=_0jk displayCtrl wgebzv;_uid=ctrlText _0ok;if!(_uid in wgt4hf)then{_0fj=objNull;_0pk=true;{if(getPlayerUID(_x)==_uid)exitWith{_0fj=_x};}forEach playableUnits;if(!isNull(_0fj))then{_0pk=[format["Player %1 (%2) is currently in the game, are you sure you want to remove him?",name _0fj,_uid],"Remove players",true,true]call BIS_fnc_GUImessage;};if(_0pk)then{wgt4hf set[count wgt4hf,_uid];publicVariable "wgt4hf";call wgb8zg;};};};};wgi23x={disableSerialization;private["_0jk","_06f","_0og","_uid"];_0jk=uiNamespace getVariable "Wasteland_AdminMenu";if(isNil{if(isNull(_0jk))then{nil}else{true}})exitWith{};_06f=_0jk displayCtrl wgob99;_0og=lbCurSel _06f;if(_0og<0||_0og>=count(wgt4hf))exitWith{};_uid=_06f lbText _0og;if(_uid in wgt4hf)then{wgt4hf=wgt4hf-[_uid];publicVariable "wgt4hf";call wgb8zg;};};wgsw39={disableSerialization;private["_0jk"];_0jk=uiNamespace getVariable "Wasteland_AdminMenu";if(isNil{if(isNull(_0jk))then{nil}else{true}})exitWith{};(_0jk displayCtrl wgyfek)ctrlShow true;};wgoh64=[["Players list",{true},wguqwf,wg82o8],["Team switchers",{false},wgei6w,wg2x5r],["Teamkillers",{true},wg6bsh,wgw9as],["Remove players",{true},wgerm2,wg15pi],["Spectating",{true},wgyfek,wgsw39]];