/*
	ArmA 3 Wasteland
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	
	
	Special build for Dwarden
	
	ESABQIEXHTFRGOFR
*/
private["_08h","_0zu"];_08h=_this select 0;_0zu=_this select 1;_08h addWeapon "ItemRadio";wgf99e=[player,getPlayerUID(player),playerSide];publicVariableServer "wgf99e";_08h call wgqx5z;if(!wg14a5)then{wg14a5=true;_0zu setVariable["revive_side",playerSide,true];_0zu setVariable["revive_name",wg4sje,true];_0zu setVariable["revive_group",group player,true];_0zu setVariable["revive_player",_08h,true];wg3re5=_0zu;private["_0af"];_0af=_0zu getVariable["revive_goggles",""];if(_0af!="")then{_0zu addGoggles _0af;}else{removeGoggles _0zu;};if!(_0zu in wgf9zc)then{wgrcj4=_0zu;publicVariableServer "wgrcj4";};}else{if(!isNull(wg3re5))then{wg3re5 setVariable["revive_player",_08h,true];wgrcj4=wg3re5;publicVariableServer "wgrcj4";};};