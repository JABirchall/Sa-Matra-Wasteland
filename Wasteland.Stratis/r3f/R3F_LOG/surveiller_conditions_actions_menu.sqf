/*
	ArmA 3 Wasteland
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	
	
	Special build for Dwarden
	
	ESABQIEXHTFRGOFR
*/
private["_0qv"];while{true}do{wgif8p=objNull;_0qv=cursorTarget;if!(isNull _0qv)then{if(player distance _0qv<15)then{wgif8p=_0qv;if({_0qv isKindOf _x}count wgnqhn>0)then{wgvbgm=(vehicle player==player&&(count crew _0qv==0)&&(isNull wgcty8)&&(isNull(_0qv getVariable "R3F_LOG_est_deplace_par")||(!alive(_0qv getVariable "R3F_LOG_est_deplace_par")))&&isNull(_0qv getVariable "R3F_LOG_est_transporte_par")&&!(_0qv getVariable "R3F_LOG_disabled"));};if({_0qv isKindOf _x}count wgk3rq>0)then{if({_0qv isKindOf _x}count wgnqhn>0)then{wg1fzi=(vehicle player==player&&(alive wgcty8)&&(count crew _0qv==0)&&(wgcty8==_0qv)&&({_x!=_0qv&&alive _x&&isNull(_x getVariable "R3F_LOG_remorque")&&([0,0,0]distance velocity _x<6)&&(getPos _x select 2<2)&&!(_x getVariable "R3F_LOG_disabled")}count(nearestObjects[_0qv,wgnoue,18]))>0&&!(_0qv getVariable "R3F_LOG_disabled"));};wga3kp=(vehicle player==player&&(alive _0qv||typeOf _0qv=="Land_DieselGroundPowerUnit_01_F")&&(count crew _0qv==0)&&isNull wgcty8&&isNull(_0qv getVariable "R3F_LOG_est_transporte_par")&&(isNull(_0qv getVariable "R3F_LOG_est_deplace_par")||(!alive(_0qv getVariable "R3F_LOG_est_deplace_par")))&&!(_0qv getVariable "R3F_LOG_disabled"));wgv1y7=(vehicle player==player&&(isNull wgcty8)&&!isNull(_0qv getVariable "R3F_LOG_est_transporte_par")&&!(_0qv getVariable "R3F_LOG_disabled"));};if({_0qv isKindOf _x}count wgqfwq>0)then{if({_0qv isKindOf _x}count wgnqhn>0)then{wgkaev=(vehicle player==player&&(count crew _0qv==0)&&(wgcty8==_0qv)&&({_x!=_0qv&&alive _x&&([0,0,0]distance velocity _x<6)&&(getPos _x select 2<2)&&!(_x getVariable "R3F_LOG_disabled")}count(nearestObjects[_0qv,wg7zyf,18])>0)&&!(_0qv getVariable "R3F_LOG_disabled"));};wgpuge=(vehicle player==player&&(count crew _0qv==0)&&isNull wgcty8&&isNull(_0qv getVariable "R3F_LOG_est_transporte_par")&&(isNull(_0qv getVariable "R3F_LOG_est_deplace_par")||(!alive(_0qv getVariable "R3F_LOG_est_deplace_par")))&&!(_0qv getVariable "R3F_LOG_disabled"));};if({_0qv isKindOf _x}count wgnoue>0)then{wg1fzi=(vehicle player==player&&(alive _0qv)&&(!isNull wgcty8)&&(alive wgcty8)&&!(wgcty8 getVariable "R3F_LOG_disabled")&&({wgcty8 isKindOf _x}count wgk3rq>0)&&isNull(_0qv getVariable "R3F_LOG_remorque")&&([0,0,0]distance velocity _0qv<6)&&(getPos _0qv select 2<2)&&!(_0qv getVariable "R3F_LOG_disabled"));wgz5fw=(vehicle player==player&&(alive _0qv)&&(isNull wgcty8)&&(!isNull wgm1lv)&&(wgm1lv!=_0qv)&&!(wgm1lv getVariable "R3F_LOG_disabled")&&({wgm1lv isKindOf _x}count wgk3rq>0)&&isNull(_0qv getVariable "R3F_LOG_remorque")&&([0,0,0]distance velocity _0qv<6)&&(getPos _0qv select 2<2)&&!(_0qv getVariable "R3F_LOG_disabled"));};if({_0qv isKindOf _x}count wg7zyf>0)then{wgkaev=(alive _0qv&&(vehicle player==player)&&(!isNull wgcty8)&&!(wgcty8 getVariable "R3F_LOG_disabled")&&({wgcty8 isKindOf _x}count wgqfwq>0)&&([0,0,0]distance velocity _0qv<6)&&(getPos _0qv select 2<2)&&!(_0qv getVariable "R3F_LOG_disabled")&&(_0qv!=wgcty8));wgya6o=(alive _0qv&&(vehicle player==player)&&(isNull wgcty8)&&(!isNull wgm1lv)&&(wgm1lv!=_0qv)&&!(wgm1lv getVariable "R3F_LOG_disabled")&&({wgm1lv isKindOf _x}count wgqfwq>0)&&([0,0,0]distance velocity _0qv<6)&&(getPos _0qv select 2<2)&&!(_0qv getVariable "R3F_LOG_disabled"));wgjrlz=(true&&(vehicle player==player)&&(isNull wgcty8)&&([0,0,0]distance velocity _0qv<6)&&(getPos _0qv select 2<2)&&!(_0qv getVariable "R3F_LOG_disabled"));};};};if({(vehicle player)isKindOf _x}count wg1kij>0)then{wgif8p=vehicle player;wgkaev=false;wgya6o=false;wgjrlz=false;wg1fzi=false;wgz5fw=false;_pos=getPos wgif8p;_06k=[0,0,0]distance velocity wgif8p;wgglzk=(driver wgif8p==player&&({_x!=wgif8p&&!(_x getVariable "R3F_LOG_disabled")}count(nearestObjects[wgif8p,wgfsgu,15])>0)&&isNull(wgif8p getVariable "R3F_LOG_heliporte")&&(_06k<6)&&(_pos select 2>1)&&!(wgif8p getVariable "R3F_LOG_disabled"));wg3khp=(driver wgif8p==player&&!isNull(wgif8p getVariable "R3F_LOG_heliporte")&&((_06k<15)||false)&&(getPosATL(wgif8p getVariable "R3F_LOG_heliporte")select 2>-0.3)&&!(wgif8p getVariable "R3F_LOG_disabled"));};sleep 0.3;};