/*
	ArmA 3 Wasteland
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	
	
	Special build for Dwarden
	
	ESABQIEXHTFRGOFR
*/
#include "config.sqf"
wgjdri=-20;wgurro=-8;wgoif1=-7;wgdv8x=5;wg8utn=objNull;wgvwar={if((!(isNull(_this select 0 getVariable "R3F_LOG_est_deplace_par"))&&(alive(_this select 0 getVariable "R3F_LOG_est_deplace_par")))||!(isNull(_this select 0 getVariable "R3F_LOG_est_transporte_par")))then{player action["eject",_this select 0];systemChat wgt5pg;true;}else{false;};};if(isServer)then{wg14i2="Land_HelipadEmpty_F" createVehicle[0,0,0];publicVariable "wg14i2";};if!(isServer&&isDedicated)then{waitUntil{!isNil "wg14i2"};wgcty8=objNull;wgwa58=false;wgm1lv=objNull;wg7zyf=[];{wg7zyf=wg7zyf+[_x select 0];}forEach wgctqt;wgqfwq=[];{wgqfwq=wgqfwq+[_x select 0];}forEach wga1d5;wgqnh5=compile preprocessFile "r3f\R3F_LOG\objet_init.sqf";wgmkfe=compile preprocessFile "r3f\R3F_LOG\heliporteur\heliporteur_init.sqf";wggjcw=compile preprocessFile "r3f\R3F_LOG\remorqueur\remorqueur_init.sqf";wghov9=compile preprocessFile "r3f\R3F_LOG\transporteur\transporteur_init.sqf";wgif8p=objNull;wgkaev=false;wgya6o=false;wgjrlz=false;wgubws=false;wg1fzi=false;wgz5fw=false;wgglzk=false;wg3khp=false;wgvbgm=false;wg1fzi=false;wga3kp=false;wgv1y7=false;wgkaev=false;wgpuge=false;execVM "r3f\R3F_LOG\surveiller_conditions_actions_menu.sqf";};