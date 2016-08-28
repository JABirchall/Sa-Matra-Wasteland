/*
	ArmA 3 Wasteland
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	
	
	Special build for Dwarden
	
	ESABQIEXHTFRGOFR
*/
if(wgwa58)then{systemChat wgv8c1;}else{wgwa58=true;private["_0cv","_classes_transporteurs","_0gw","_i"];_0cv=wgcty8;_0gw=nearestObjects[_0cv,wg7zyf,22];_0gw=_0gw-[_0cv];if(count _0gw>0)then{_0gw=_0gw select 0;if(alive _0gw&&([0,0,0]distance velocity _0gw<6)&&(getPos _0gw select 2<2)&&!(_0gw getVariable "R3F_LOG_disabled"))then{private["_0hw","_0iw","_0jw","_0kw"];_0hw=_0gw getVariable "R3F_LOG_objets_charges";if(isNil{_0hw})then{_0hw=[];};_0iw=0;{for[{_i=0},{_i<count wga1d5},{_i=_i+1}]do{if(_x isKindOf(wga1d5 select _i select 0))exitWith{_0iw=_0iw+(wga1d5 select _i select 1);};};}forEach _0hw;_0jw=99999;for[{_i=0},{_i<count wga1d5},{_i=_i+1}]do{if(_0cv isKindOf(wga1d5 select _i select 0))exitWith{_0jw=(wga1d5 select _i select 1);};};_0kw=0;for[{_i=0},{_i<count wgctqt},{_i=_i+1}]do{if(_0gw isKindOf(wgctqt select _i select 0))exitWith{_0kw=(wgctqt select _i select 1);};};if(_0iw+_0jw<=_0kw)then{_0hw=_0hw+[_0cv];_0gw setVariable["R3F_LOG_objets_charges",_0hw,true];systemChat wgjser;wgcty8=objNull;private["_06n","_05n"];_05n=[random 3000,random 3000,(10000+(random 3000))];_06n=1;while{(!isNull(nearestObject _05n))&&(_06n<25)}do{_05n=[random 3000,random 3000,(10000+(random 3000))];_06n=_06n+1;};_0cv attachTo[wg14i2,_05n];_0cv setVariable["R3F_LOG_object_in_vehicle",_0gw,true];systemChat format[wg2djg,getText(configFile>>"CfgVehicles">>(typeOf _0gw)>>"displayName")];}else{systemChat wg5doq;};};};wgwa58=false;};