/*
	ArmA 3 Wasteland
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	
	
	Special build for Dwarden
	
	ESABQIEXHTFRGOFR
*/
class Wasteland_Thanks{idd=-1;duration=1e+011;name="Wasteland_Thanks";movingEnable=false;enableSimulation=true;onLoad="uiNamespace setVariable ['Wasteland_Thanks', _this select 0];";class controlsBackground{
#include "tiles.hpp"
class RscTitleBackground:RscText{colorBackground[]={"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])","(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};idc=-1;x=0.3;y=0.2;w=0.4;h=A3_SIZE(1);};class MainBackground:RscText{colorBackground[]={0,0,0,0.7};idc=-1;x=0.3;y=0.2+A3_SIZE(1.1);w=0.4;h=0.5-A3_SIZE(1.1);};};class controls{class Title:RscTitle{colorBackground[]={0,0,0,0};idc=-1;text=$STR_WL_Dlg_Thanks_Title;x=0.3;y=0.2;w=0.4;h=A3_SIZE(1);};class ThanksTextWindow:RscStructuredText{idc=-1;x=0.3+A3_SIZE(0.1);y=0.2+A3_SIZE(1.1)+A3_SIZE(0.1);w=0.4-A3_SIZE(0.1)*2;h=0.5-A3_SIZE(1.1)-A3_SIZE(0.1);size=A3_SIZE(0.8);text=$STR_WL_Dlg_Thanks_Text;};class ThanksTextWindow2:ThanksTextWindow{idc=-1;x=0.3+A3_SIZE(0.1)+(0.4-A3_SIZE(0.1)*2)/2;w=(0.4-A3_SIZE(0.1)*2)/2+0.1;text="<br/><br/><br/><img image='i\twitch64.paa'/><t size='1.3'> cayinator</t><br/><img image='i\twitch64.paa'/><t size='1.3'> darkfire3814</t><br/><img image='i\twitch64.paa'/><t size='1.3'> kazplayhouse</t><br/><img image='i\twitch64.paa'/><t size='1.3'> meeowmeow</t><br/><img image='i\twitch64.paa'/><t size='1.3'> shortyyguy</t><br/>";};class ButtonClose:RscButtonMenu{idc=-1;x=0.3;y=0.7+A3_SIZE(0.1);w=0.4;h=A3_SIZE(1);text=$STR_WL_Dlg_Thanks_Ok;action="closeDialog 0";};};};