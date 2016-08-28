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
#ifdef wgwl3y
sleep 0.1;private["_0kv","_0lv","_0mv","_i","_0cv"];_0kv=[];while{true}do{_0lv=vehicles-_0kv;_0mv=count _0lv;if(_0mv>0)then{for[{_i=0},{_i<_0mv},{_i=_i+1}]do{_0cv=_0lv select _i;if({_0cv isKindOf _x}count wglfti>0)then{[_0cv]spawn wgropx;};sleep(18/_0mv);};_0kv=_0kv+_0lv;}else{sleep 18;};};
#endif