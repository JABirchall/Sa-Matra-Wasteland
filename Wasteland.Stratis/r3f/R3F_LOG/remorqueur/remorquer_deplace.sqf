/*
	ArmA 3 Wasteland
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	
	
	Special build for Dwarden
	
	ESABQIEXHTFRGOFR
*/
if(wgwa58)then{systemChat wgv8c1;}else{wgwa58=true;private["_0cv","_04v"];_0cv=wgcty8;_04v=nearestObjects[_0cv,wgnoue,22];_04v=_04v-[_0cv];if(count _04v>0)then{_04v=_04v select 0;if(alive _04v&&isNull(_04v getVariable "R3F_LOG_remorque")&&([0,0,0]distance velocity _04v<6)&&(getPos _04v select 2<2)&&!(_04v getVariable "R3F_LOG_disabled"))then{_04v setVariable["R3F_LOG_remorque",_0cv,true];_0cv setVariable["R3F_LOG_est_transporte_par",_04v,true];player attachTo[_04v,[(boundingBox _04v select 1 select 0),(boundingBox _04v select 0 select 1)+1,(boundingBox _04v select 0 select 2)-(boundingBox player select 0 select 2)]];player setDir 270;player setPos(getPos player);wgcty8=objNull;player switchMove "AinvPknlMstpSnonWnonDnon_medic_1";player playMove "AinvPknlMstpSnonWnonDnon_medic_1";sleep 2;_05v=({if(_0cv isKindOf(_x select 0))exitWith{_x select 1}}forEach wguboy);if(isNil{_05v})then{_05v=0;};_06v=_04v;_07v=_0cv;_08v=boundingBoxReal _06v;_09v=boundingBoxReal _07v;_0aw=-(_09v select 1 select 1);_0bw=(_08v select 0 select 1);_0cw=(_08v select 0 select 2)-(_09v select 0 select 2);_07v attachTo[_06v,[0,_0aw+_0bw+_05v,_0cw]];detach player;if(_0cv isKindOf "StaticWeapon")then{private["_0wv"];_0wv=((_0cv weaponDirection(weapons _0cv select 0))select 0)atan2((_0cv weaponDirection(weapons _0cv select 0))select 1);if!(_0cv isKindOf "D30_Base")then{_0wv=_0wv+180;};wgbeie=[_0cv,(getDir _0cv)-_0wv];if(local _0cv)then{["wgbeie",wgbeie]spawn wguu3i;}else{publicVariable "wgbeie";};};sleep 5;};};wgwa58=false;};