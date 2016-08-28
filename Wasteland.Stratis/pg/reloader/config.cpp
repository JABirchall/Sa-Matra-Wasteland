////////////////////////////////////////////////////////////////////
//DeRap: Produced from mikero's Dos Tools Dll version 4.97
//Sun May 10 10:01:50 2015 : Source 'file' date Sun May 10 10:01:50 2015
//http://dev-heaven.net/projects/list_files/mikero-pbodll
////////////////////////////////////////////////////////////////////

#define _ARMA_

//Class Wasteland_by_Sa-Matra_for_DWARDEN.Stratis : pg\reloader\config.bin{
class balca_loader_main
{
	idd = 66361;
	name = "balca_loader_main";
	movingEnable = "false";
	controlsBackground[] = {"balca_loader_background"};
	objects[] = {};
	controls[] = {"balca_loader_vehicle_shortcut","balca_loader_vehicle_list_desc","balca_loader_turret_list_desc","balca_loader_weapon_list_desc","balca_loader_vehicle_list","balca_loader_turret_list","balca_loader_weapon_list","balca_loader_capacity","balca_loader_default_loadout_desc","balca_loader_default_loadout","balca_loader_compatible_magazines_desc","balca_loader_current_magazines_desc","balca_loader_ammo_info_desc","balca_loader_compatible_magazines","balca_loader_current_magazines","balca_loader_ammo_info","balca_loader_restore_btn","balca_loader_load_btn","balca_loader_unload_btn","balca_loader_close_btn"};
	class balca_loader_background
	{
		idc = -1;
		type = 0;
		style = 512;
		x = 0.1;
		w = 0.9;
		y = 0.1;
		h = "1-0.06";
		colorText[] = {1,1,1,1};
		colorBackground[] = {0.1,0.1,0.1,0.7};
		background = 1;
		text = "";
		font = "PuristaMedium";
		sizeEx = 0.032;
	};
	class balca_loader_text
	{
		idc = -1;
		type = 0;
		style = 0;
		x = 0.0;
		w = 0.3;
		y = 0.0;
		h = 0.03;
		sizeEx = 0.023;
		colorBackground[] = {0.5,0.5,0.5,0};
		colorText[] = {0.85,0.85,0.85,1};
		font = "PuristaMedium";
		text = "";
	};
	class balca_loader_image
	{
		idc = -1;
		type = 0;
		style = "48+ 0x800";
		x = 0.25;
		w = 0.1;
		y = 0.1;
		h = 0.1;
		colorText[] = {1,1,1,1};
		colorBackground[] = {0,0,0,0};
		text = "";
		font = "PuristaMedium";
		sizeEx = 0.032;
	};
	class balca_loader_btn
	{
		idc = -1;
		type = 1;
		style = 2;
		text = "btn";
		action = "";
		x = 0;
		y = 0;
		w = 0.23;
		h = 0.04;
		shadow = 2;
		font = "FontM";
		size = "(   (   (   ((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
		sizeEx = "(   (   (   ((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
		colorText[] = {1,1,1,1.0};
		colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",0.7};
		colorBackgroundActive[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",1};
		colorBackgroundDisabled[] = {0.95,0.95,0.95,1};
		colorDisabled[] = {1,1,1,0.25};
		offsetX = 0.003;
		offsetY = 0.003;
		offsetPressedX = 0.002;
		offsetPressedY = 0.002;
		colorFocused[] = {1,1,1,0.5};
		colorFocused2[] = {1,1,1,0.1};
		colorShadow[] = {0,0,0,1};
		colorBorder[] = {0,0,0,1};
		borderSize = 0.0;
		soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1};
		soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1};
		soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1};
		soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1};
		period = 1.2;
	};
	class balca_loader_list
	{
		type = 5;
		style = 0;
		idc = -1;
		text = "";
		w = 0.275;
		h = 0.04;
		colorSelect[] = {1,1,1,1};
		colorText[] = {1,1,1,1};
		colorBackground[] = {0.8,0.8,0.8,1};
		colorSelectBackground[] = {0.4,0.43,0.28,0.5};
		colorScrollbar[] = {0.2,0.2,0.2,1};
		wholeHeight = 0.45;
		rowHeight = 0.04;
		color[] = {0.3,0.32,0.21,1};
		colorActive[] = {0,0,0,1};
		colorDisabled[] = {0,0,0,0.3};
		font = "PuristaMedium";
		sizeEx = 0.023;
		soundSelect[] = {"",0.1,1};
		soundExpand[] = {"",0.1,1};
		soundCollapse[] = {"",0.1,1};
		maxHistoryDelay = 1;
		autoScrollSpeed = -1;
		autoScrollDelay = 5;
		autoScrollRewind = 0;
		class ScrollBar
		{
			color[] = {0.3,0.32,0.21,0.6};
			colorActive[] = {0.3,0.32,0.21,1};
			colorDisabled[] = {0.3,0.32,0.21,0.3};
			thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
			arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
			arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
			border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
		};
	};
	class balca_loader_pict
	{
		idc = -1;
		type = 0;
		style = 48;
		x = 0.25;
		w = 0.5;
		y = 0.1;
		h = 0.8;
		colorText[] = {1,1,1,1};
		colorBackground[] = {0,0,0,0};
		text = "";
		font = "PuristaMedium";
		sizeEx = 0.032;
	};
	class balca_loader_vehicle_list_desc: balca_loader_text
	{
		x = "0.1+ 0.03+ 0.2";
		w = "0.2- 0.03";
		y = "0.1+ 0.01";
		h = 0.04;
		colorText[] = {1,1,1,1};
		colorBackground[] = {0,0,0,0};
		text = "Vehicles";
	};
	class balca_loader_turret_list_desc: balca_loader_text
	{
		x = "0.1+ 0.03+ 0.2*2";
		w = "0.2- 0.03";
		y = "0.1+ 0.01";
		h = 0.04;
		colorText[] = {1,1,1,1};
		colorBackground[] = {0,0,0,0};
		text = "Turrets";
	};
	class balca_loader_weapon_list_desc: balca_loader_text
	{
		x = "0.1+ 0.03+ 0.2*3";
		w = "0.2- 0.03";
		y = "0.1+ 0.01";
		h = 0.04;
		colorText[] = {1,1,1,1};
		colorBackground[] = {0,0,0,0};
		text = "Weapons";
	};
	class balca_loader_capacity: balca_loader_text
	{
		idc = "(66361+ 5)";
		x = "0.1+ 0.03+ 0.2*3";
		w = "0.2- 0.03";
		y = "1/2 - 0.04";
		h = 0.04;
		colorText[] = {1,1,1,1};
		colorBackground[] = {0,0,0,0};
		text = "Capacity";
	};
	class balca_loader_default_loadout_desc: balca_loader_text
	{
		x = "0.1+ 0.03";
		w = "0.2- 0.03";
		y = "1/2 + 0.01*2";
		h = 0.04;
		colorText[] = {1,1,1,1};
		colorBackground[] = {0,0,0,0};
		text = "Default loadout";
	};
	class balca_loader_compatible_magazines_desc: balca_loader_text
	{
		x = "0.1+ 0.03+ 0.2*1";
		w = "0.2- 0.03";
		y = "1/2 + 0.01*2";
		h = 0.04;
		colorText[] = {1,1,1,1};
		colorBackground[] = {0,0,0,0};
		text = "Compatible magazines";
	};
	class balca_loader_current_magazines_desc: balca_loader_text
	{
		x = "0.1+ 0.03+ 0.2*2";
		w = "0.2- 0.03";
		y = "1/2 + 0.01*2";
		h = 0.04;
		colorText[] = {1,1,1,1};
		colorBackground[] = {0,0,0,0};
		text = "Current magazines";
	};
	class balca_loader_ammo_info_desc: balca_loader_text
	{
		x = "0.1+ 0.03+ 0.2*3";
		w = "0.2- 0.03";
		y = "1/2 + 0.01*2";
		h = 0.04;
		colorText[] = {1,1,1,1};
		colorBackground[] = {0,0,0,0};
		text = "Ammo info";
	};
	class balca_loader_ammo_info: balca_loader_text
	{
		idc = "(66361+ 9)";
		type = 13;
		size = 0.023;
		x = "0.1+ 0.03+ 0.2*3";
		w = "0.2- 0.03";
		y = "1/2 + 0.01*2 + 0.05";
		h = "1/2 - 0.06- (0.1+ 0.01+ 0.05)";
		colorText[] = {1,1,1,1};
		colorBackground[] = {0,0,0,0};
		text = "";
	};
	class balca_loader_vehicle_shortcut: balca_loader_image
	{
		idc = "(66361+ 1)";
		x = "0.1+ 0.03";
		w = "0.2- 0.03";
		y = "0.1+ 0.01+ 0.05";
		h = 0.24;
		colorText[] = {1,1,1,1};
		colorBackground[] = {0,0,0,0};
		text = "";
	};
	class balca_loader_vehicle_list: balca_loader_list
	{
		idc = "(66361+ 2)";
		x = "0.1+ 0.03+ 0.2*1";
		w = "0.2- 0.01";
		y = "0.1+ 0.01+ 0.05";
		h = "1/2 - 0.06- (0.1+ 0.01+ 0.05)";
		colorText[] = {1,1,1,1};
		colorBackground[] = {0,0,0,0};
		onLBSelChanged = "[_this] call c_proving_ground_reloader_fnc_fill_turret_list;";
		onLBDblClick = "[_this] call c_proving_ground_reloader_fnc_fill_turret_list;";
	};
	class balca_loader_turret_list: balca_loader_list
	{
		idc = "(66361+ 3)";
		x = "0.1+ 0.03+ 0.2*2";
		w = "0.2- 0.01";
		y = "0.1+ 0.01+ 0.05";
		h = "1/2 - 0.06- (0.1+ 0.01+ 0.05)";
		colorText[] = {1,1,1,1};
		colorBackground[] = {0,0,0,0};
		onLBSelChanged = "[_this] call c_proving_ground_reloader_fnc_fill_weapon_list;";
		onLBDblClick = "[_this] call c_proving_ground_reloader_fnc_fill_weapon_list;";
	};
	class balca_loader_weapon_list: balca_loader_list
	{
		idc = "(66361+ 4)";
		x = "0.1+ 0.03+ 0.2*3";
		w = "0.2- 0.01";
		y = "0.1+ 0.01+ 0.05";
		h = "1/2 - 0.06- (0.1+ 0.01+ 0.05)";
		colorText[] = {1,1,1,1};
		colorBackground[] = {0,0,0,0};
		onLBSelChanged = "[_this] call c_proving_ground_reloader_fnc_fill_compatible_magazines_list;[_this] call c_proving_ground_reloader_fnc_fill_current_magazines_list;";
		onLBDblClick = "[_this] call c_proving_ground_reloader_fnc_fill_compatible_magazines_list;[_this] call c_proving_ground_reloader_fnc_fill_current_magazines_list;";
	};
	class balca_loader_default_loadout: balca_loader_list
	{
		idc = "(66361+ 6)";
		x = "0.1+ 0.03";
		w = "0.2- 0.01";
		y = "1/2 + 0.01*2 + 0.05";
		h = "1/2 - 0.06- (0.1+ 0.01+ 0.05)";
		colorText[] = {1,1,1,1};
		colorBackground[] = {0,0,0,0};
		onLBSelChanged = "[_this] call c_proving_ground_reloader_fnc_ammo_info;";
	};
	class balca_loader_compatible_magazines: balca_loader_list
	{
		idc = "(66361+ 7)";
		x = "0.1+ 0.03+ 0.2*1";
		w = "0.2- 0.01";
		y = "1/2 + 0.01*2 + 0.05";
		h = "1/2 - 0.06- (0.1+ 0.01+ 0.05)";
		colorText[] = {1,1,1,1};
		colorBackground[] = {0,0,0,0};
		onLBSelChanged = "[_this] call c_proving_ground_reloader_fnc_ammo_info;";
		onLBDblClick = "[_this] call c_proving_ground_reloader_fnc_add_magazine;";
	};
	class balca_loader_current_magazines: balca_loader_list
	{
		idc = "(66361+ 8)";
		x = "0.1+ 0.03+ 0.2*2";
		w = "0.2- 0.01";
		y = "1/2 + 0.01*2 + 0.05";
		h = "1/2 - 0.06- (0.1+ 0.01+ 0.05)";
		colorText[] = {1,1,1,1};
		colorBackground[] = {0,0,0,0};
		onLBSelChanged = "[_this] call c_proving_ground_reloader_fnc_ammo_info;";
		onLBDblClick = "[_this] call c_proving_ground_reloader_fnc_remove_magazine;";
	};
	class balca_loader_restore_btn: balca_loader_btn
	{
		idc = "(66361+ 10)";
		x = "0.1+ 0.03";
		w = 0.16;
		y = "1- 0.16";
		text = "Restore";
		action = "call c_proving_ground_reloader_fnc_restore_loadout;";
	};
	class balca_loader_load_btn: balca_loader_btn
	{
		idc = "(66361+ 11)";
		x = "0.1+ 0.03+ 0.2*1";
		w = 0.16;
		y = "1- 0.16";
		text = "Load";
		action = "call c_proving_ground_reloader_fnc_add_magazine;";
	};
	class balca_loader_unload_btn: balca_loader_btn
	{
		idc = "(66361+ 12)";
		x = "0.1+ 0.03+ 0.2*2";
		w = 0.16;
		y = "1- 0.16";
		text = "Unload";
		action = "call c_proving_ground_reloader_fnc_remove_magazine";
	};
	class balca_loader_close_btn: balca_loader_btn
	{
		x = "0.1+ 0.03+ 0.2*3";
		w = 0.16;
		y = "1- 0.16";
		text = "Close";
		action = "closeDialog 0;";
	};
};
//};
