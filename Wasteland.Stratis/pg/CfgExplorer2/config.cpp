////////////////////////////////////////////////////////////////////
//DeRap: Produced from mikero's Dos Tools Dll version 4.97
//Sun May 10 10:01:50 2015 : Source 'file' date Sun May 10 10:01:50 2015
//http://dev-heaven.net/projects/list_files/mikero-pbodll
////////////////////////////////////////////////////////////////////

#define _ARMA_

//Class Wasteland_by_Sa-Matra_for_DWARDEN.Stratis : pg\CfgExplorer2\config.bin{
class HJ_ConfigExplorer
{
	idd = 19000;
	enableSimulation = 0;
	movingEnable = 0;
	onUnLoad = "_this call c_proving_ground_HJ_fnc_EndDialog;";
	controlsBackground[] = {"BackGround","TitleBar"};
	objects[] = {};
	controls[] = {"tCurrentPathText","tCurrentPathValue","tConfigText","cConfigValue","frmClasses","lbClasses","frmValues","lbValues","sbtnDumpClasses","sbtnUp","frmOrder","lbOrder","sbtnCopyClip","eCode","tVersion","sbtnClose"};
	class RscBackground
	{
		type = 0;
		IDC = -1;
		style = 512;
		x = 0;
		y = 0;
		w = 1;
		h = 1;
		text = "";
		ColorBackground[] = {0.48,0.5,0.35,1};
		ColorText[] = {0.1,0.1,0.1,1};
		font = "PuristaMedium";
		SizeEx = 1;
	};
	class RscCombo
	{
		access = 0;
		type = 4;
		style = 0;
		colorSelect[] = {0.023529,0,0.0313725,1};
		colorText[] = {0.023529,0,0.0313725,1};
		colorBackground[] = {0.95,0.95,0.95,1};
		colorScrollbar[] = {0.023529,0,0.0313725,1};
		soundSelect[] = {"",0.1,1};
		soundExpand[] = {"",0.1,1};
		soundCollapse[] = {"",0.1,1};
		maxHistoryDelay = 1;
		x = 0;
		y = 0;
		w = 0.12;
		h = 0.035;
		colorSelectBackground[] = {0.543,0.5742,0.4102,1};
		arrowEmpty = "\A3\ui_f\data\GUI\RscCommon\rsccombo\arrow_combo_ca.paa";
		arrowFull = "\A3\ui_f\data\GUI\RscCommon\rsccombo\arrow_combo_active_ca.paa";
		wholeHeight = 0.45;
		color[] = {0,0,0,0.6};
		colorActive[] = {0,0,0,1};
		colorDisabled[] = {0,0,0,0.3};
		font = "PuristaMedium";
		sizeEx = 0.03921;
		class ScrollBar
		{
			color[] = {1,1,1,0.6};
			colorActive[] = {1,1,1,1};
			colorDisabled[] = {1,1,1,0.3};
			thumb = "#(argb,8,8,3)color(1,1,1,1)";
			arrowEmpty = "#(argb,8,8,3)color(1,1,1,1)";
			arrowFull = "#(argb,8,8,3)color(1,1,1,1)";
			border = "#(argb,8,8,3)color(1,1,1,1)";
		};
	};
	class RscEdit
	{
		access = 0;
		type = 2;
		h = 0.04;
		colorBackground[] = {0,0,0,1};
		colorText[] = {0.95,0.95,0.95,1};
		colorSelection[] = {0.543,0.5742,0.4102,1};
		autocomplete = "";
		text = "";
		size = 0.2;
		style = "0x00 + 0x40";
		font = "PuristaMedium";
		sizeEx = 0.03921;
	};
	class RscIGUIListBox
	{
		color[] = {1,1,1,1};
		colorText[] = {0.6,0.8392,0.4706,1};
		colorScrollbar[] = {0.95,0.95,0.95,1};
		colorSelect[] = {0.023529,0,0.0313725,1};
		colorSelect2[] = {0.023529,0,0.0313725,1};
		colorSelectBackground[] = {0.6,0.8392,0.4706,1};
		colorSelectBackground2[] = {0.6,0.8392,0.4706,1};
		colorActive[] = {0,0,0,1};
		colorDisabled[] = {0,0,0,0.3};
		period = 0;
		colorBackground[] = {0,0,0,1};
		sizeEx = 0.034;
		access = 0;
		w = 0.4;
		h = 0.4;
		rowHeight = 0;
		soundSelect[] = {"",0.1,1};
		arrowEmpty = "#(argb,8,8,3)color(1,1,1,1)";
		arrowFull = "#(argb,8,8,3)color(1,1,1,1)";
		type = 5;
		style = 16;
		font = "PuristaMedium";
		maxHistoryDelay = 1;
		autoScrollSpeed = -1;
		autoScrollDelay = 5;
		autoScrollRewind = 0;
		class ScrollBar
		{
			color[] = {1,1,1,0.6};
			colorActive[] = {1,1,1,1};
			colorDisabled[] = {1,1,1,0.3};
			thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
			arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
			arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
			border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
		};
	};
	class RscStandardDisplay
	{
		access = 0;
		movingEnable = 1;
		enableSimulation = 1;
		enableDisplay = 1;
	};
	class RscText
	{
		access = 0;
		type = 0;
		idc = -1;
		colorBackground[] = {0,0,0,0};
		colorText[] = {0.543,0.5742,0.4102,1};
		text = "";
		x = 0;
		y = 0;
		h = 0.037;
		w = 0.3;
		style = 256;
		font = "PuristaMedium";
		SizeEx = 0.03921;
	};
	class RscTitle: RscText
	{
		style = 2;
		x = 0.15;
		y = 0.06;
		w = 0.7;
		access = 0;
		type = 0;
		idc = -1;
		colorBackground[] = {0,0,0,0};
		colorText[] = {0.543,0.5742,0.4102,1};
		text = "";
		h = 0.037;
		font = "PuristaMedium";
		SizeEx = 0.03921;
	};
	class RscShortcutButton
	{
		x = 0.1;
		y = 0.1;
		shortcuts[] = {};
		textureNoShortcut = "#(argb,8,8,3)color(0,0,0,0)";
		color[] = {0.543,0.5742,0.4102,1};
		color2[] = {0.95,0.95,0.95,1};
		colorDisabled[] = {1,1,1,0.25};
		colorBackground[] = {1,1,1,1};
		colorBackground2[] = {1,1,1,0.4};
		type = 16;
		idc = -1;
		style = 0;
		default = 0;
		w = 0.183825;
		h = 0.0522876;
		periodFocus = 1.2;
		periodOver = 0.8;
		animTextureDefault = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\normal_ca.paa";
		animTextureNormal = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\normal_ca.paa";
		animTextureDisabled = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\normal_ca.paa";
		animTextureOver = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\over_ca.paa";
		animTextureFocused = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\focus_ca.paa";
		animTexturePressed = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\down_ca.paa";
		period = 0.4;
		font = "PuristaMedium";
		size = 0.03921;
		sizeEx = 0.03921;
		text = "";
		soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1};
		soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1};
		soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1};
		soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1};
		action = "";
		class Attributes
		{
			font = "PuristaMedium";
			color = "#E5E5E5";
			align = "left";
			shadow = "true";
		};
		class AttributesImage
		{
			font = "PuristaMedium";
			color = "#E5E5E5";
			align = "left";
		};
		class HitZone
		{
			left = 0.004;
			top = 0.029;
			right = 0.004;
			bottom = 0.029;
		};
		class ShortcutPos
		{
			left = 0.0145;
			top = 0.026;
			w = 0.0392157;
			h = 0.0522876;
		};
		class TextPos
		{
			left = 0.025;
			top = 0.004;
			right = 0.005;
			bottom = 0.005;
		};
	};
	class RscIGUIShortcutButton: RscShortcutButton
	{
		w = 0.183825;
		h = 0.0522876;
		style = 2;
		color[] = {1,1,1,1};
		color2[] = {1,1,1,0.85};
		colorBackground[] = {1,1,1,1};
		colorbackground2[] = {1,1,1,0.85};
		colorDisabled[] = {1,1,1,0.4};
		animTextureDefault = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\normal_ca.paa";
		animTextureNormal = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\normal_ca.paa";
		animTextureDisabled = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\normal_ca.paa";
		animTextureOver = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\over_ca.paa";
		animTextureFocused = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\focus_ca.paa";
		animTexturePressed = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\down_ca.paa";
		x = 0.1;
		y = 0.1;
		shortcuts[] = {};
		textureNoShortcut = "#(argb,8,8,3)color(0,0,0,0)";
		type = 16;
		idc = -1;
		default = 0;
		periodFocus = 1.2;
		periodOver = 0.8;
		period = 0.4;
		font = "PuristaMedium";
		size = 0.03921;
		sizeEx = 0.03921;
		text = "";
		soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1};
		soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1};
		soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1};
		soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1};
		action = "";
		class Attributes
		{
			font = "PuristaMedium";
			color = "#E5E5E5";
			align = "center";
			shadow = "true";
		};
		class HitZone
		{
			left = 0.002;
			top = 0.003;
			right = 0.002;
			bottom = 0.016;
		};
		class ShortcutPos
		{
			left = -0.006;
			top = -0.007;
			w = 0.0392157;
			h = 0.0522876;
		};
		class TextPos
		{
			left = 0.02;
			top = 0;
			right = 0.002;
			bottom = 0.016;
		};
	};
	class RSC_HJ_ShortcutButton: RscIGUIShortcutButton
	{
		w = "0.1 * SafeZoneW";
		h = "0.05 * SafeZoneW";
		size = "SafeZoneH * 0.018";
		sizeEx = "SafeZoneH * 0.018";
		class TextPos: TextPos
		{
			top = "((0.05 * SafeZoneW) - SafeZoneH * 0.018) / 4)";
		};
	};
	class BackGround: RscBackground
	{
		style = 128;
		x = "SafeZoneX";
		y = "SafeZoneY";
		w = "SafeZoneW";
		h = "SafeZoneH";
		colorBackground[] = {0.05,0.05,0.05,0.95};
	};
	class TitleBar: RscTitle
	{
		style = "32+ 0x02";
		x = "SafeZoneX + 0.01";
		y = "SafeZoneY + 0.01";
		w = "SafeZoneW - 0.02";
		h = "0.07 * SafeZoneH- 0.01";
		sizeEx = "SafeZoneH * 0.040";
		text = "Config Explorer by HeliJunkie";
	};
	class tCurrentPathText: RscText
	{
		idc = -1;
		style = 64;
		x = "((0.01 * SafeZoneW) + SafeZoneX)";
		y = "((0.08 * SafeZoneH) + SafeZoneY)";
		w = "(0.74 * SafeZoneW)";
		h = "(2.5 * SafeZoneH * 0.018)";
		sizeEx = "SafeZoneH * 0.018";
		text = "Current Config Path";
	};
	class tCurrentPathValue: RscText
	{
		idc = 101;
		style = 0;
		x = "((0.01 * SafeZoneW) + SafeZoneX)";
		y = "((0.10 * SafeZoneH) + SafeZoneY)";
		w = "(0.74 * SafeZoneW)";
		sizeEx = "SafeZoneH * 0.018";
		text = "Current Config Path";
	};
	class tConfigText: RscText
	{
		idc = -1;
		style = 1;
		x = "((0.76 * SafeZoneW) + SafeZoneX)";
		y = "((0.10 * SafeZoneH) + SafeZoneY)";
		w = "(0.08 * SafeZoneW)";
		sizeEx = "SafeZoneH * 0.018";
		text = "Config:";
	};
	class cConfigValue: RscCombo
	{
		idc = 103;
		x = "((0.85 * SafeZoneW) + SafeZoneX)";
		y = "((0.10 * SafeZoneH) + SafeZoneY)";
		w = "(0.13 * SafeZoneW)";
		sizeEx = "SafeZoneH * 0.018";
		onLBSelChanged = "_this call c_proving_ground_HJ_fnc_onConfigChange";
	};
	class frmClasses: RscText
	{
		idc = -1;
		type = 0;
		style = 64;
		x = "((0.01 * SafeZoneW) + SafeZoneX)";
		y = "((0.14 * SafeZoneH) + SafeZoneY)";
		w = "(0.28 * SafeZoneW)";
		h = "(0.47 * SafeZoneH)";
		sizeEx = "SafeZoneH * 0.018";
		text = "Classes";
	};
	class lbClasses: RscIGUIListBox
	{
		idc = 110;
		x = "((0.01 * SafeZoneW) + SafeZoneX)";
		y = "((0.14 * SafeZoneH) + SafeZoneY) + SafeZoneH * 0.018";
		w = "(0.28 * SafeZoneW)";
		h = "(0.46 * SafeZoneH) - (SafeZoneH * 0.018/ 2)";
		sizeEx = "SafeZoneH * 0.018";
		rowHeight = "SafeZoneH * 0.018";
		onLBDblClick = "_this call c_proving_ground_HJ_fnc_onDoubleClickClass;";
	};
	class frmValues: RscText
	{
		idc = -1;
		type = 0;
		style = 64;
		x = "((0.31 * SafeZoneW) + SafeZoneX)";
		y = "((0.14 * SafeZoneH) + SafeZoneY)";
		w = "(0.68 * SafeZoneW)";
		h = "(0.47 * SafeZoneH)";
		sizeEx = "SafeZoneH * 0.018";
		text = "Values";
	};
	class lbValues: RscIGUIListBox
	{
		idc = 111;
		x = "((0.31 * SafeZoneW) + SafeZoneX)";
		y = "((0.14 * SafeZoneH) + SafeZoneY) + SafeZoneH * 0.018";
		w = "(0.68 * SafeZoneW)";
		h = "(0.46 * SafeZoneH) - (SafeZoneH * 0.018/ 2)";
		sizeEx = "SafeZoneH * 0.018";
		rowHeight = "SafeZoneH * 0.018";
	};
	class sbtnDumpClasses: RSC_HJ_ShortcutButton
	{
		idc = 119;
		x = "((0.09 * SafeZoneW) + SafeZoneX)";
		y = "((0.61 * SafeZoneH) + SafeZoneY)";
		text = "dump";
		tooltip = "dump all classnames to edit box";
		onButtonClick = "_this call c_proving_ground_HJ_fnc_onButtonClick_dump;";
	};
	class sbtnUp: RSC_HJ_ShortcutButton
	{
		idc = 120;
		x = "((0.19 * SafeZoneW) + SafeZoneX)";
		y = "((0.61 * SafeZoneH) + SafeZoneY)";
		text = "up";
		tooltip = "move to parent class";
		onButtonClick = "_this call c_proving_ground_HJ_fnc_onButtonClick_up;";
	};
	class frmOrder: RscText
	{
		idc = -1;
		type = 0;
		style = 64;
		x = "((0.01 * SafeZoneW) + SafeZoneX)";
		y = "((0.65 * SafeZoneH) + SafeZoneY)";
		w = "(0.28 * SafeZoneW)";
		h = "(0.25 * SafeZoneH)";
		text = "Parents";
		sizeEx = "SafeZoneH * 0.018";
	};
	class lbOrder: RscIGUIListBox
	{
		idc = 112;
		x = "((0.01 * SafeZoneW) + SafeZoneX)";
		y = "((0.65 * SafeZoneH) + SafeZoneY) + SafeZoneH * 0.018";
		w = "(0.28 * SafeZoneW)";
		h = "(0.25 * SafeZoneH) - SafeZoneH * 0.018";
		sizeEx = "SafeZoneH * 0.018";
		rowHeight = "SafeZoneH * 0.018";
	};
	class eCode: RscEdit
	{
		idc = 113;
		style = 16;
		x = "((0.31 * SafeZoneW) + SafeZoneX)";
		y = "((0.65 * SafeZoneH) + SafeZoneY)";
		w = "(0.68 * SafeZoneW)";
		h = "(0.25 * SafeZoneH)";
		sizeEx = "SafeZoneH * 0.016";
		font = "LucidaConsoleB";
		linespacing = 2;
		autocomplete = "general";
	};
	class sbtnCopyClip: RSC_HJ_ShortcutButton
	{
		x = "((0.31 * SafeZoneW) + SafeZoneX)";
		y = "((0.905 * SafeZoneH) + SafeZoneY)";
		text = "-> Clipboard";
		tooltip = "copy all text to clipboard";
		action = "copyToClipboard ctrlText 113;";
	};
	class tVersion: RscText
	{
		style = 1;
		x = "((0.70 * SafeZoneW) + SafeZoneX)";
		y = "((0.95 * SafeZoneH) + SafeZoneY)";
		w = "(0.19 * SafeZoneW)";
		sizeEx = "SafeZoneH * 0.016";
		text = "Version 2.02";
	};
	class sbtnClose: RSC_HJ_ShortcutButton
	{
		x = "((0.90 * SafeZoneW) + SafeZoneX)";
		y = "((0.95 * SafeZoneH) + SafeZoneY)";
		text = "close";
		action = "closeDialog 0";
		tooltip = "close explorer";
	};
};
//};
