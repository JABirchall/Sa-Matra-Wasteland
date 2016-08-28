/*
	Copyright (C) 2010 madbull ~R3F~
	
	This program is free software under the terms of the GNU General Public License version 3.
	You should have received a copy of the GNU General Public License
	along with this program.  If not, see <http://www.gnu.org/licenses/>.
	
	R3F modifications and improvements made by Sa-Matra
	Additional graphics made by Aaron Hooker (Kai)
	Using these modifications or graphics without direct permission is forbidden
	
	Special build for Dwarden
	
	ESABQIEXHTFRGOFR
*/
#include "R3F_ARTY_disable_enable.sqf"
#include "R3F_LOG_disable_enable.sqf"
sleep 0.1;private["_0jv","_0kv","_0lv","_0mv","_i","_0cv"];
#ifdef wg3y5h
_0jv=wgnqhn+wgfsgu+wgk3rq+wgqfwq;
#endif
_0kv=[];wg6tej=0;wgegq4=0;while{true}do{if!(isNull player)then{_0lv=(nearestObjects[player,["Static","AllVehicles","Thing"],80])-_0kv;_0mv=count _0lv;if(_0mv>0)then{for[{_i=0},{_i<_0mv},{_i=_i+1}]do{_0cv=_0lv select _i;
#ifdef wg3y5h
if({_0cv isKindOf _x}count _0jv>0)then{[_0cv]spawn wgqnh5;wg6tej=wg6tej+1;};if({_0cv isKindOf _x}count wg1kij>0)then{[_0cv]spawn wgmkfe;wg6tej=wg6tej+1;};if({_0cv isKindOf _x}count wg7zyf>0)then{[_0cv]spawn wghov9;wg6tej=wg6tej+1;};if({_0cv isKindOf _x}count wgnoue>0)then{[_0cv]spawn wggjcw;wg6tej=wg6tej+1;};
#endif
sleep(10/_0mv);};_0kv=_0kv+_0lv;wgegq4=count _0kv;}else{sleep 10;};}else{sleep 2;};};