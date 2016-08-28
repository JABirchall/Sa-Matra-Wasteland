/*
	ArmA 3 Wasteland
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	
	
	Special build for Dwarden
	
	ESABQIEXHTFRGOFR
*/
if(isNil{wg3rt9})then{wg3rt9="Land_Pier_F" createVehicleLocal[0,0,0];wg3rt9 setPosASL[-15000,4000+random 4000,10+random 10];wg3rt9 setDir 0;};_pos=getPosASL wg3rt9;if((getPosATL wg3rt9 select 2)<0)then{_pos set[2,getTerrainHeightASL _pos];}else{_pos set[2,(_pos select 2)+2];};_this setPosASL _pos;_this switchMove "amovppnemstpsraswpstdnon";