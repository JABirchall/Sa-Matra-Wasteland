/*
	ArmA 3 Wasteland
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	
	
	Special build for Dwarden
	
	ESABQIEXHTFRGOFR
*/
class Wasteland_Compatible{idd=-1;duration=1e+011;name="Wasteland_Compatible";movingEnable=false;enableSimulation=true;onLoad="(_this select 0) call wg4hql;";class controlsBackground{
#include "tiles.hpp"
class RscTitleBackground:RscText{colorBackground[]={"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])","(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};idc=-1;x=0.2;y=0.1;w=0.6;h=(1/25);};class MainBackground:RscText{colorBackground[]={0,0,0,0.7};idc=-1;x=0.2;y=0.1+(11/250);w=0.6;h=0.8-(22/250);};};class controls{class Title:RscTitle{colorBackground[]={0,0,0,0};idc=-1;style=0xC0;text="Compatible weapons";x=0.2;y=0.1;w=0.6;h=(1/25);};class PlayersName:Title{idc=wg71ti;style=1;text="Sa-Matra";};
#define ATTACH_SIZE	0.15
class AttachmentImage:RscPicture{idc=wgts54;x=0.2+_SPX(1);y=0.1+(1/25)+_SPY(1)+_SPY(1);w=ATTACH_SIZE*(getResolution select 3)/(getResolution select 2);h=ATTACH_SIZE;text="";};class AttachmentName:RscText{idc=wgxihy;x=0.2+_SPX(1)+ATTACH_SIZE*(getResolution select 3)/(getResolution select 2)+_SPX(1);y=0.1+(1/25)+_SPY(1)+_SPY(1);w=0.6-(_SPX(1)+ATTACH_SIZE*(getResolution select 3)/(getResolution select 2)+_SPX(1));h=A3_SIZE(1);text="";};class AttachmentText:RscStructuredText{idc=wg7ecs;x=0.2+_SPX(1)+ATTACH_SIZE*(getResolution select 3)/(getResolution select 2)+_SPX(1);y=0.1+(1/25)+_SPY(1)+_SPY(1)+A3_SIZE(1);w=0.6-(_SPX(1)+ATTACH_SIZE*(getResolution select 3)/(getResolution select 2)+_SPX(1));h=A3_SIZE(0.8*3);text="";};class ListBackground:RscText{idc=-1;x=0.2+_SPX(1);y=0.1+(1/25)+_SPY(1)+_SPY(1)+ATTACH_SIZE;w=0.6-_SPX(2);h=0.7-ATTACH_SIZE;colorBackground[]={0,0,0,0.2};};class WeaponsList:RscListBox{idc=wgw188;x=0.2+_SPX(1);y=0.1+(1/25)+_SPY(1)+_SPY(1)+ATTACH_SIZE;w=0.6-_SPX(2);h=0.7-ATTACH_SIZE;rowHeight=(0.7-ATTACH_SIZE)/6;colorSelect[]={1,1,1,1};colorSelect2[]={1,1,1,1};colorSelectBackground[]={0.95,0.95,0.95,0};colorSelectBackground2[]={1,1,1,0};};class ButtonClose:RscButtonMenu{idc=-1;text=$STR_WL_Dlg_Close;x=0.2;y=0.9-(1/25);w=(6.25/40);h=(1/25);action="closeDialog 0";};};};