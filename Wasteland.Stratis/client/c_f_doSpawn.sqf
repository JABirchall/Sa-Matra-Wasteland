/*
	ArmA 3 Wasteland
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	
	
	Special build for Dwarden
	
	ESABQIEXHTFRGOFR
*/
#include "hpp\idcs.hpp"
if(wgze2p||wggw5j)exitWith{};wggw5j=true;RscNoise_color=[1,1,1,0.5];4 cutText["","BLACK",0.000001];5 cutRsc["RscNoise","PLAIN",0.000001];_this spawn{waitUntil{!isNil{wgat3j}&&!isNil{wgisee}&&player==player&&time>0};wglovb=player;sleep 2;8 cutFadeOut 0;if(isNil{wgwl8i})then{if((worldName=="Chernarus")&&(isNil{if(settings_disableTwitchThanks)then{false}else{nil}}))then{createDialog "Wasteland_Thanks";waitUntil{!isNil{uiNamespace getVariable "Wasteland_Thanks"}};waitUntil{isNull(uiNamespace getVariable "Wasteland_Thanks")};};};RscNoise_color=[1,1,1,0.1];6 cutRsc["RscInterlacing","PLAIN"];7 cutRsc["RscStatic","PLAIN"];sleep 0.5;true call wg6wpn;waitUntil{wgze2p};waitUntil{!wgze2p};player setVariable["ready",true,true];4 cutFadeOut 1;5 cutFadeOut 1;6 cutFadeOut 1;7 cutRsc["RscStatic","BLACK"];7 cutFadeOut 2;wggw5j=false;if(typeName wgfypi==typeName[])then{wgiyr9=wgfypi;wgfypi=false;true call wg15vh;};if(isNil{wgwl8i})then{wgwl8i=false;true spawn{3 cutRsc["Wasteland_Welcome","PLAIN"];((uiNamespace getVariable "Wasteland_Welcome")displayCtrl wgx4ri)ctrlSetStructuredText parseText format["%1<br/><br/><t align='left'>%2</t>",format[localize "STR_WL_HUD_WelcomeMessage",wgstzz,format[localize(if(playerSide==independent)then{"STR_WL_HUD_WelcomeMessageFFA"}else{"STR_WL_HUD_WelcomeMessageTeam"}),[playerSide,3]call wgkjbs]],settings_customWelcomeMessage];sleep 20;3 cutFadeOut 2;};if(wgtwld==sideUnknown)then{true spawn{_0d=60;waitUntil{titleText[format[localize "STR_WL_Teamswitch_Xseconds",localize format["STR_WL_Gen_Team%1_2",side group player],_0d],"PLAIN DOWN"];_0ge=diag_tickTime+1;waitUntil{diag_tickTime>=_0ge};_0d=_0d-1;_0d<=0;};titleText[format[localize "STR_WL_Teamswitch_Locked",localize format["STR_WL_Gen_Team%1_2",playerSide]],"PLAIN DOWN"];wgxq65=[wghrav,side group player];publicVariableServer "wgxq65";};};};};