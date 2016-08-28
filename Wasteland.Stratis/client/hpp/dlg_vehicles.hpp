/*
	ArmA 3 Wasteland
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	
	
	Special build for Dwarden
	
	ESABQIEXHTFRGOFR
*/
class Wasteland_StoreVehicles{idd=-1;duration=1e+011;name="Wasteland_StoreVehicles";movingEnable=false;enableSimulation=true;onLoad="(_this select 0) call wg9576;";class controlsBackground{
#include "tiles.hpp"
class RscTitleBackground:RscText{colorBackground[]={"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])","(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};idc=-1;x=0.2;y=0.1;w=0.6;h=(1/25);};class MainBackground:RscText{colorBackground[]={0,0,0,0.7};idc=-1;x=0.2;y=0.1+(11/250);w=0.6;h=0.8-(22/250);};};class controls{class Title:RscTitle{colorBackground[]={0,0,0,0};idc=-1;style=0xC0;text="Request Vehicles";x=0.2;y=0.1;w=0.6;h=(1/25);};class PlayersName:Title{idc=IDC_GS3_PLAYER_NAME;style=1;text="Sa-Matra";};class ListBackground:RscText{idc=-1;x=0.2+_SPX(1);y=0.1+(1/25)+_SPY(1)+_SPY(1);w=0.6-_SPX(2);h=0.6;colorBackground[]={0,0,0,0.2};};class VehiclesList:RscListBox{idc=wgznwz;x=0.2+_SPX(1);y=0.1+(1/25)+_SPY(1)+_SPY(1);w=0.6-_SPX(2);h=0.6;rowHeight=0.08;};class OrderTotalCashTitle:RscStructuredText{idc=-1;x=0.5+_SPX(1)+DELIVERY_COMBO_WIDTH+_SPX(2);y=DLG_OBY;w=(0.5-DELIVERY_COMBO_WIDTH)*ORDER_TOTAL_LEFT;h=a3_sizeEx(1)*2;size=a3_sizeEx(1);text="Total:<br/>Cash:";class Attributes{align="right";};};class OrderTotalCashValue:OrderTotalCashTitle{idc=wg7ke6;x=0.5+_SPX(1)+DELIVERY_COMBO_WIDTH+_SPX(2)+(0.5-DELIVERY_COMBO_WIDTH)*ORDER_TOTAL_LEFT;w=(0.5-DELIVERY_COMBO_WIDTH)*ORDER_TOTAL_RIGHT-_SPX(2);text="";class Attributes{align="left";color="#aaffaa";};};class ButtonRequest:RscButtonMenu{idc=-1;text="Request";x=0.2+0.6-(6.25/40);y=0.9-(1/25);w=(6.25/40);h=(1/25);action="closeDialog 0";};class ButtonClose:RscButtonMenu{idc=-1;text=$STR_WL_Dlg_Close;x=0.2;y=0.9-(1/25);w=(6.25/40);h=(1/25);action="closeDialog 0";};};};