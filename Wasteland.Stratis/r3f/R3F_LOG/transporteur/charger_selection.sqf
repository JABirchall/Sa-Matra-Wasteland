/*
	ArmA 3 Wasteland
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	
	
	Special build for Dwarden
	
	ESABQIEXHTFRGOFR
*/
if(wgwa58)then{systemChat wgv8c1;}else{wgwa58=true;private["_0cv","_classes_transporteurs","_0gw","_i"];_0cv=wgm1lv;_0gw=_this select 0;if(!(isNull _0cv)&&!(_0cv getVariable "R3F_LOG_disabled"))then{if(isNull(_0cv getVariable "R3F_LOG_est_transporte_par")&&(isNull(_0cv getVariable "R3F_LOG_est_deplace_par")||(!alive(_0cv getVariable "R3F_LOG_est_deplace_par"))))then{private["_0hw","_0iw","_0jw","_0kw"];_0hw=_0gw getVariable "R3F_LOG_objets_charges";if(isNil{_0hw})then{_0hw=[];};_0iw=0;{for[{_i=0},{_i<count wga1d5},{_i=_i+1}]do{if(_x isKindOf(wga1d5 select _i select 0))exitWith{_0iw=_0iw+(wga1d5 select _i select 1);};};}forEach _0hw;_0jw=99999;for[{_i=0},{_i<count wga1d5},{_i=_i+1}]do{if(_0cv isKindOf(wga1d5 select _i select 0))exitWith{_0jw=(wga1d5 select _i select 1);};};_0kw=0;for[{_i=0},{_i<count wgctqt},{_i=_i+1}]do{if(_0gw isKindOf(wgctqt select _i select 0))exitWith{_0kw=(wgctqt select _i select 1);};};if(_0iw+_0jw<=_0kw)then{if(_0cv distance _0gw<=30)then{_0hw=_0hw+[_0cv];_0gw setVariable["R3F_LOG_objets_charges",_0hw,true];systemChat wgaebv;sleep 2;private["_06n","_05n"];_05n=[random 3000,random 3000,(10000+(random 3000))];_06n=1;while{(!isNull(nearestObject _05n))&&(_06n<25)}do{_05n=[random 3000,random 3000,(10000+(random 3000))];_06n=_06n+1;};_0cv attachTo[wg14i2,_05n];_0cv setVariable["R3F_LOG_object_in_vehicle",_0gw,true];wgm1lv=objNull;systemChat format[wg1itb,getText(configFile>>"CfgVehicles">>(typeOf _0cv)>>"displayName")];}else{systemChat format[wgglaj,getText(configFile>>"CfgVehicles">>(typeOf _0cv)>>"displayName")];};}else{systemChat format[wga3w7,(_0kw-_0iw),_0jw];};}else{systemChat format[wg9yvi,getText(configFile>>"CfgVehicles">>(typeOf _0cv)>>"displayName")];};};wgwa58=false;};