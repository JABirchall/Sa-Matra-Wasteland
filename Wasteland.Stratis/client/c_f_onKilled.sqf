/*
	ArmA 3 Wasteland
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	
	
	Special build for Dwarden
	
	ESABQIEXHTFRGOFR
*/
private["_09a","_0dj"];_0dj=_this select 0;player setVariable["ready",false,true];_09a=_0dj call wg3ef8;if(count(_09a)>0)then{wg8z7t=_09a;publicVariableServer "wg8z7t";};if(!isNull(wgcnta))then{call wguxaj;};_this call wgp58v;if(!wg14a5&&!wggw5j)then{private["_0t","_0u","_0zb","_0af"];_0t=[primaryWeapon _0dj,primaryWeaponItems _0dj,"",0];_0u=[secondaryWeapon _0dj,secondaryWeaponItems _0dj,"",0];_0zb=magazinesAmmoFull _0dj;if(_0t select 0!="")then{{if(_x select 4==_0t select 0)exitWith{_0t set[2,_x select 0];_0t set[3,_x select 1]}}forEach _0zb;};if(_0u select 0!="")then{{if(_x select 4==_0u select 0)exitWith{_0u set[2,_x select 0];_0u set[3,_x select 1]}}forEach _0zb;};_0af=goggles _0dj;[_0dj,_0t,_0u,_0af]spawn{sleep 0.2;private["_0dj","_03n","_0xu","_0yu","_0t","_0u","_0af"];_0dj=_this select 0;_03n=nearestObjects[_this select 0,["WeaponHolderSimulated"],5];_0xu=_0dj;_0yu=_0dj;_0t=(_this select 1);_0u=(_this select 2);_0af=(_this select 3);{if(local _x&&((weaponCargo _x)select 0==(_0t select 0)))exitWith{_0xu=_x;};}forEach _03n;{if(local _x&&((weaponCargo _x)select 0==(_0u select 0)))exitWith{_0yu=_x;};}forEach _03n;_0dj setVariable["revive_primary_wh",_0xu];_0dj setVariable["revive_primary",_0t];_0dj setVariable["revive_secondary_wh",_0yu];_0dj setVariable["revive_secondary",_0u];_0dj setVariable["revive_goggles",_0af];if(!isNull(_0xu))then{_0xu setVariable["body",_0dj,true];};if(!isNull(_0yu))then{_0yu setVariable["body",_0dj,true];};};_0dj setVariable["vehicle",vehicle _0dj,true];_0dj call wgi1ly;};