#include "defs.hpp"
#define GET_DISPLAY (findDisplay balca_debug_WC_IDD)
#define GET_CTRL(a) (GET_DISPLAY displayCtrl ##a)
#define GET_SELECTED_DATA(a) ([##a] call {_0yk = _this select 0;_selection = (lbSelection GET_CTRL(_0yk) select 0);if (isNil {_selection}) then {_selection = 0};(GET_CTRL(_0yk) lbData _selection)})
#define __cfgWeap configFile >> "cfgWeapons"


_0ta = _this select 0;
_item_type = _this select 1;
switch (_0ta) do {
case 0: {//fill weapon list
		_cfgweapons = configFile >> "cfgWeapons";
		_generalCondition = {
			((getNumber(_this >> "scope")>=1)&&(getNumber(_this >> "access")!=0)&&(getText(_this >> "model")!="")&&(getText(_this >> "displayName")!=""))
		};
		_haveOptics = {
			(getText(_this >> "ModelOptics")!="-")||(getNumber(configFile >> "cfgWeapons" >> getText(_this >> "LinkedItems" >> "LinkedItemsOptic" >> "item") >> "ItemInfo" >> "OpticType")>0)
		};
		_condition = switch (_item_type) do {
/*			case 0: {{ (_this call _generalCondition)&&(getNumber(_this >> "type")==1)&&(getNumber(_this >> "WeaponSlotsInfo" >> "mass")<70)&&!(_this call _haveOptics)}};//rifles
			case 1: {{ (_this call _generalCondition)&&(getNumber(_this >> "type")==1)&&(getNumber(_this >> "WeaponSlotsInfo" >> "mass")<70)&&(_this call _haveOptics)}};//scoped rifles
			case 2: {{ (_this call _generalCondition)&&(getNumber(_this >> "type") in [1,5])&&(getNumber(_this >> "WeaponSlotsInfo" >> "mass")>=70)}};//heavy*/
			case 3: {{ (_this call _generalCondition)&&(getNumber(_this >> "type")==4)}};//secondary weapon
			case 4: {{ (_this call _generalCondition)&&(getNumber(_this >> "type")==2)}};//pistol
			case 5: {{ (getNumber(_this >> "type")==0)&&(getText(_this >> "ModelOptics")=="")}};//put/throw
			case 6: {{ (_this call _generalCondition)&&(getNumber(_this >> "type")==4096)}};//BinocularSlot
			case 7: {{ (_this call _generalCondition)&&(getNumber(_this >> "type")==131072)&&(getNumber(_this >> "ItemInfo" >> "type")==0)}};//SmallItems
			case 8: {{ (_this call _generalCondition)&&(getNumber(_this >> "type")==131072)&&(getNumber(_this >> "ItemInfo" >> "type") in [701,801,605,619, 607, 401])}};//wear
			case 9: {{ (_this call _generalCondition)&&(getNumber(_this >> "type")==131072)&&(getNumber(_this >> "ItemInfo" >> "type") in [201, 301, 101])}};//attachments
			default {{ (_this call _generalCondition)&&(getNumber(_this >> "type") in [1,5])}};
		};
		lbClear GET_CTRL(balca_WC_weaplist_IDC);
		for "_i" from 0 to (count _cfgweapons)-1 do {
			_0dg = _cfgweapons select _i;
			if (isClass _0dg) then {
				if (_0dg call _condition) then {
					GET_CTRL(balca_WC_weaplist_IDC) lbAdd getText(_0dg >> "displayName");
					GET_CTRL(balca_WC_weaplist_IDC) lbSetData [(lbSize GET_CTRL(balca_WC_weaplist_IDC))-1,configName _0dg];
					GET_CTRL(balca_WC_weaplist_IDC) lbSetPicture [(lbSize GET_CTRL(balca_WC_weaplist_IDC))-1,getText(_0dg >> "picture")];
				};
			};
		};
		lbSort GET_CTRL(balca_WC_weaplist_IDC);		


	};
case 1: {//weap info, fill magazines
		_weap_type = GET_SELECTED_DATA(balca_WC_weaplist_IDC);
		_0dg = (configFile >> "cfgWeapons" >> _weap_type);
		_0dn = getText(_0dg >> "displayName");
		_picture = getText(_0dg >> "picture");
		_library = getText(_0dg >> "Library" >> "libTextDesc");
		_dispersion = getNumber(_0dg >> "dispersion");
		_0r = [];
		{
			_0r = _0r + getArray( (if ( _x == "this" ) then { _0dg } else { _0dg >> _x }) >> "magazines")
		} forEach getArray(_0dg >> "muzzles");
		_dispersion = getNumber(_0dg >> "dispersion");
		{
			_dispersion =  getNumber(_0dg >> _x >> "dispersion")
		} forEach getArray (_0dg >> "modes");
		GET_CTRL(balca_WC_weapon_shortcut_IDC) ctrlSetText (_picture);
		_lb = parseText "<br/>";

		_atts_cfg = (_0dg >> "LinkedItems");
		_atts_str = "<br/><br/>";
		for "_i" from 0 to count(_atts_cfg) - 1 do {
			_0vo = getText((_atts_cfg select _i) >> "item");
			_att_cfg = configFile >> "CfgWeapons" >> _0vo;
			_atts_str = _atts_str + format ["<img image='%1' size = '1.8'/> %2<br/>", getText(_att_cfg >> "picture"), getText(_att_cfg >> "displayname")];
		};

		_0pr = composeText ["Class: ",str configName(_0dg),_lb,
			"DisplayName: ",str _0dn,_lb,
			"Dispersion: ",str _dispersion,
			parseText _atts_str,
			_lb, _lb, parseText _library];
		GET_CTRL(balca_WC_weap_info_IDC) ctrlSetStructuredText _0pr;
		lbClear GET_CTRL(balca_WC_magazinelist_IDC);
		{
			GET_CTRL(balca_WC_magazinelist_IDC) lbAdd (getText(configFile >> "cfgMagazines" >> _x >> "displayName"));
			GET_CTRL(balca_WC_magazinelist_IDC) lbSetData [(lbSize GET_CTRL(balca_WC_magazinelist_IDC))-1,configName(configFile >> "cfgMagazines" >> _x)];
			GET_CTRL(balca_WC_magazinelist_IDC) lbSetPicture [(lbSize GET_CTRL(balca_WC_magazinelist_IDC))-1,getText(configFile >> "cfgMagazines" >> _x >> "picture")];
		} forEach _0r;

	};

case 2: {//addweapon
		_0dg = GET_SELECTED_DATA(balca_WC_weaplist_IDC);
		switch true do {
			case (getNumber(configFile >> "cfgWeapons" >> _0dg >> "ItemInfo" >> "type")==801): { player forceAddUniform _0dg};
			case (getNumber(configFile >> "cfgWeapons" >> _0dg >> "ItemInfo" >> "type")==701): { player addVest _0dg};
			case (getNumber(configFile >> "cfgWeapons" >> _0dg >> "ItemInfo" >> "type")==605): { player addHeadgear _0dg};
			case (getNumber(configFile >> "cfgWeapons" >> _0dg >> "ItemInfo" >> "type")==603): { player addGoggles _0dg};
			case (getNumber(configFile >> "cfgWeapons" >> _0dg >> "ItemInfo" >> "type")>0): { player addItem _0dg};
			default {
				PG_set(MAGS,[]);
				[_0dg] call PG_get(FNC_ADD_WEAPON);
				PG_set(WEAPONS,weapons player);
			};
		};
	};

case 3: {//ammo info
		_0ed = GET_SELECTED_DATA(balca_WC_magazinelist_IDC);
		_03e = getNumber(configFile>>"CfgMagazines">>_0ed>>"count");
		_0dn = getText (configFile >> "CfgMagazines" >> _0ed >> "displayName");
		_initSpeed = getNumber(configFile >> "cfgMagazines" >> _0ed >> "initSpeed");
		_shell = getText(configFile >> "cfgMagazines" >> _0ed >> "ammo");
		_0dn = getText (configFile >> "CfgAmmo" >> _shell >> "displayName");
		_hit = getNumber(configFile >> "cfgAmmo" >> _shell >> "hit");
		_indirectHit = getNumber(configFile >> "cfgAmmo" >> _shell >> "indirectHit");
		_indirectHitRange = getNumber(configFile >> "cfgAmmo" >> _shell >> "indirectHitRange");
		_ACE_damage = getNumber(configFile >> "cfgAmmo" >> _shell >> "ACE_hit");
		_timeToLive = getNumber(configFile >> "cfgAmmo" >> _shell >> "timeToLive");
		_airFriction = getNumber(configFile >> "cfgAmmo" >> _shell >> "airFriction");

		_lb = parseText "<br/>";
		_0pr = composeText ["Class: ",str _0ed,_lb,
			"Ammo class: ",str _shell,_lb,
			"DisplayName: ",str _0dn,_lb,
			"Count: ",str _03e,_lb,
			"Damage: ", str _hit,_lb];
		/*if (_ACE_damage >0) then {
			_0pr = composeText [_0pr,"ACE damage: ",str _ACE_damage,_lb];
		};*/
		if (_indirectHit >0) then {
			_0pr = composeText [_0pr,"Indirect damage: ",str _indirectHit,_lb,"Explosion radius: ", str _indirectHitRange,_lb];
		};
		_0pr = composeText [_0pr,"InitSpeed: ",str _initSpeed,_0pr,"AirFriction: ",str _airFriction,_lb,"LifeTime: ", str _timeToLive];
		GET_CTRL(balca_WC_magazine_info_IDC) ctrlSetStructuredText _0pr;
	};

case 4: {//addMagazine
		_0ed = GET_SELECTED_DATA(balca_WC_magazinelist_IDC);
		player addMagazine _0ed;
		PG_set(MAGS,magazines player);
	};

case 5: {//weap to clipboard
	copyToClipboard (""""+GET_SELECTED_DATA(balca_WC_weaplist_IDC)+"""");
	};

case 6: {//ammo to clipboard
	copyToClipboard (""""+GET_SELECTED_DATA(balca_WC_magazinelist_IDC)+"""");
	};
};