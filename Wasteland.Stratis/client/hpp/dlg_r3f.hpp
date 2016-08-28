/*
	ArmA 3 Wasteland
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	
	
	Special build for Dwarden
	
	ESABQIEXHTFRGOFR
*/
class Wasteland_ContentsR3F{idd=wgrzqi;duration=1e+011;name="Wasteland_ContentsR3F";movingEnable=false;enableSimulation=true;onLoad="uiNamespace setVariable ['Wasteland_ContentsR3F', _this select 0]";class controlsBackground{
#include "tiles.hpp"
class RscTitleBackground:RscText{colorBackground[]={"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])","(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};idc=-1;x=0.3;y=0.2;w=0.4;h=(1/25);};class MainBackground:RscText{colorBackground[]={0,0,0,0.7};idc=-1;x=0.3;y=0.2+(11/250);w=0.4;h=0.6-(22/250);};};class controls{class Title:RscTitle{colorBackground[]={0,0,0,0};idc=-1;text="Contents";x=0.3;y=0.2;w=0.4;h=(1/25);};class VehicleName:Title{idc=wgnd24;style=1;text="";};class BackgroundProgress:RscText{idc=-1;x=0.3+(2/250)*(safezoneH/safezoneW);y=0.2+(11/250)+(2/250);w=0.4-(4/250)*(safezoneH/safezoneW);h=(1/25);colorBackground[]={0,0,0,0.5};};class CargoProgress:RscProgress{idc=wghrn8;texture="#(argb,8,8,3)color(1,1,1,1)";x=0.3+(2/250)*(safezoneH/safezoneW);y=0.2+(11/250)+(2/250);w=0.4-(4/250)*(safezoneH/safezoneW);h=(1/25);colorBackground[]={0,0.5,0.5,1};};class TitleCargo:RscText{idc=wgc72r;style=2;text="";x=0.3+(2/250)*(safezoneH/safezoneW);y=0.2+(11/250)+(2/250);w=0.4-(4/250)*(safezoneH/safezoneW);h=(1/25);};class ContentsList:RscListBox{idc=wgjxz2;x=0.3+(2/250)*(safezoneH/safezoneW);y=0.2+(11/250)+(2/250)+(10/250)+(2/250);w=0.4-(4/250)*(safezoneH/safezoneW);h=0.5-(11/250)-(2/250);rowHeight=0.06;onLBDblClick="execVM ""r3f\R3F_LOG\transporteur\decharger.sqf"";";};class ButtonUnload:RscButtonMenu{idc=-1;text="Unload";x=0.3;y=0.8-(1/25);w=(6.25/40);h=(1/25);action="execVM ""r3f\R3F_LOG\transporteur\decharger.sqf"";";};class ButtonClose:RscButtonMenu{idc=-1;text=$STR_WL_Dlg_Close;x=0.3+(6.25/40)+(1/250*(safezoneH/safezoneW));y=0.8-(1/25);w=(6.25/40);h=(1/25);action="closeDialog 0";};};};