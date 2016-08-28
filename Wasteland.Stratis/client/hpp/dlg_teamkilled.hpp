/*
	ArmA 3 Wasteland
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	
	
	Special build for Dwarden
	
	ESABQIEXHTFRGOFR
*/
class Wasteland_Teamkilled{idd=-1;duration=1e+011;name="Wasteland_Teamkilled";movingEnable=false;enableSimulation=true;onLoad="uiNamespace setVariable ['Wasteland_Teamkilled', _this select 0]";class controlsBackground{
#include "tiles.hpp"
class RscTitleBackground:RscText{colorBackground[]={"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])","(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};idc=-1;x=0.2;y=0.2;w=0.6;h=(1/25);};class MainBackground:RscText{colorBackground[]={0,0,0,0.7};idc=-1;x=0.2;y=0.2+(11/250);w=0.6;h=0.6-(22/250);};};class controls{class Title:RscTitle{colorBackground[]={0,0,0,0};idc=-1;text=$STR_WL_Dlg_Teamkilled_Title;x=0.2;y=0.2;w=0.6;h=(1/25);};class PlayersName:Title{idc=wg7miq;style=1;text="";};class ButtonPunish:RscButtonMenu{idc=-1;text=$STR_WL_Dlg_Teamkilled_Punish;x=0.2;y=0.8-(1/25);w=(6.25/40);h=(1/25);action="true call wgh569";colorBackground[]={0.1,0,0,0.8};};class ButtonForgive:RscButtonMenu{idc=-1;text=$STR_WL_Dlg_Teamkilled_Forgive;x=0.8-(6.25/40);y=0.8-(1/25);w=(6.25/40);h=(1/25);action="false call wgh569";colorBackground[]={0,0.1,0,0.8};};class TeamkilledText:RscStructuredText{idc=wg1x8v;text="";x=0.2+(4/250);y=0.2+(11/250)+(4/250);w=0.6-(8/250);h=0.3-(4/250);};class BackstoryTitle:RscStructuredText{idc=-1;text=$STR_WL_Dlg_Teamkilled_StoryRequest;x=0.2+(4/250);y=0.5+(11/250);w=0.6-(8/250);h=(1/25);};class BackstoryEdit:RscEdit{idc=wgcbqr;style=16;text="";x=0.2+(4/250);y=0.5+(11/250)+(1/25);w=0.6-(8/250);h=a3_sizeEx(0.8)*4.5;sizeEx=a3_sizeEx(0.8);colorBackground[]={1,1,1,0.1};};};};