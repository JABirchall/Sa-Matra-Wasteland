#include "defs.hpp"
disableSerialization;
_0gn = _this select 0 select 0;
_0e = _this select 0 select 1;

_0ed = _0gn lbData _0e;

_03e = getNumber(configFile>>"CfgMagazines">>_0ed>>"count");
_0dn = getText (configFile >> "CfgMagazines" >> _0ed >> "displayName");
_initSpeed = getnumber(configFile >> "cfgMagazines" >> _0ed >> "initSpeed");
_shell = gettext(configFile >> "cfgMagazines" >> _0ed >> "ammo");
_0dn = getText (configFile >> "CfgAmmo" >> _shell >> "displayName");
_hit = getnumber(configFile >> "cfgAmmo" >> _shell >> "hit");
_indirectHit = getnumber(configFile >> "cfgAmmo" >> _shell >> "indirectHit");
_indirectHitRange = getnumber(configFile >> "cfgAmmo" >> _shell >> "indirectHitRange");
_ACE_damage = getnumber(configFile >> "cfgAmmo" >> _shell >> "ACE_hit");
_timeToLive = getnumber(configFile >> "cfgAmmo" >> _shell >> "timeToLive");


_lb = parseText "<br/>";
_0pr = composeText [str _shell,_lb,"Count: ",str _03e,_lb,"Damage: ", str _hit,_lb];
if (_ACE_damage >0) then {
_0pr = composeText [_0pr,"ACE damage: ",str _ACE_damage,_lb];
};
if (_indirectHit >0) then {
_0pr = composeText [_0pr,"Indirect damage: ",str _indirectHit,_lb,"Explosion radius: ", str _indirectHitRange,_lb];
};
_0pr = composeText [_0pr,"InitSpeed: ",str _initSpeed,_lb,"LifeTime:", str _timeToLive];
GET_CTRL(balca_loader_ammo_info_IDC) ctrlSetStructuredText _0pr;