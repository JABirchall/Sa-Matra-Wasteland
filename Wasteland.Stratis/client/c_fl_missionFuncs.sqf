/*
	ArmA 3 Wasteland
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	
	
	Special build for Dwarden
	
	ESABQIEXHTFRGOFR
*/
#define wgun6f		0
#define wgawbf	1
#define wg2ymb		2
#define wgqtzn	3
#define wgttv3	4
#define wgmqlm	5
#define wglfzo	6
#define wgztf8	7
#define wgj6tl		8
#define wg62j5	9
#define wg1ek2	"<t size='1.5' color='%1' font='PuristaSemibold'>%2</t>%3<br/><br/>%4"
#define wg1jjy	"<br/><t size='1' color='#ff6600'>%1</t>"
#define wgphk2		"#9999ff"
#define wg7kxp		"#9999ff"
#define wgn9oj		"#55ff55"
wg8sk7={if(isNil{wgylyn})exitWith{};if(isNil{wgskp1})then{wgskp1=[];};{deleteMarkerLocal _x}forEach wgskp1;{if(!isNil{_x})then{_m=format["custommarker%1",random 1000000];_m=createMarkerLocal[_m,_x select 0];_m setMarkerShapeLocal(_x select 1);if(_x select 1=="ICON")then{_m setMarkerTypeLocal(_x select 2);}else{_m setMarkerBrushLocal(_x select 2);};_m setMarkerColorLocal(_x select 3);if(typeName(_x select 4)==typeName({}))then{_m setMarkerTextLocal(call(_x select 4))}else{_m setMarkerTextLocal(_x select 4)};if(count(_x)>5)then{_m setMarkerAlphaLocal(_x select 5);};if(count(_x)>6)then{_m setMarkerSizeLocal(_x select 6);};if(count(_x)>7)then{_m setMarkerDirLocal(_x select 7);};wgskp1 set[count wgskp1,_m];};}forEach wgylyn;};wgl4ku={{_0wo=false;if(typeName(_x select 0)==typeName false)then{_0wo=true;}else{if(({local _x}count(_x select 0))>0)then{_0wo=true;}};if(_0wo)exitWith{[_x select 1,_x select 2,_x select 3]call wgvo79;};}forEach wg2d8t;};wgvo79={_0jh=_this select 0;_0im=_this select 1;_0hj=_this select 2;if(isNil{_0hj})then{_0hj=[];};private["_05d"];switch(_0jh)do{default{systemChat "ERROR: Unknown mission type!";};case wgun6f:{switch(_0im)do{case "NEW":{_05d=format[[_0im,localize "STR_WL_Missions_CaptureBase"]call wg2n5j,format[localize "STR_WL_Missions_CaptureBaseText",localize "STR_WL_Missions_CaptureBaseEnemyGroup",(if(_0hj select 0)then{"big"}else{"small"})]];};case "END":{_05d=format[[_0im]call wg2n5j,localize "STR_WL_Missions_CaptureBaseEnd"];};case "WIN":{_05d=format[[_0im]call wg2n5j,localize "STR_WL_Missions_CaptureBaseWin"];};};};case wgawbf:{switch(_0im)do{case "NEW":{_05d=format[[_0im,localize "STR_WL_Missions_DownedHelicopter"]call wg2n5j,localize "STR_WL_Missions_DownedHelicopterText"];};case "END":{_05d=format[[_0im]call wg2n5j,localize "STR_WL_Missions_DownedHelicopterEnd"];};case "WIN":{_05d=format[[_0im]call wg2n5j,localize "STR_WL_Missions_DownedHelicopterWin"];};case "TAKEN":{_05d=format[[_0im]call wg2n5j,localize "STR_WL_Missions_DownedHelicopterTaken"];};case "BLOWN":{_05d=format[[_0im]call wg2n5j,localize "STR_WL_Missions_DownedHelicopterBlown"];};};};case wg2ymb:{switch(_0im)do{case "NEW":{_05d=format[[_0im,localize "STR_WL_Missions_ArmoredVehicle"]call wg2n5j,localize "STR_WL_Missions_ArmoredVehicleText"];};case "END":{_05d=format[[_0im]call wg2n5j,localize "STR_WL_Missions_ArmoredVehicleEnd"];};case "WIN":{_05d=format[[_0im]call wg2n5j,localize "STR_WL_Missions_ArmoredVehicleWin"];};case "TAKEN":{_05d=format[[_0im]call wg2n5j,localize "STR_WL_Missions_ArmoredVehicleTaken"];};case "BLOWN":{_05d=format[[_0im]call wg2n5j,localize "STR_WL_Missions_ArmoredVehicleBlown"];};};};case wgqtzn:{switch(_0im)do{case "NEW":{_05d=format[[_0im,localize "STR_WL_Missions_AmmoTruck"]call wg2n5j,localize "STR_WL_Missions_AmmoTruckText"];};case "END":{_05d=format[[_0im]call wg2n5j,localize "STR_WL_Missions_AmmoTruckEnd"];};case "WIN":{_05d=format[[_0im]call wg2n5j,localize "STR_WL_Missions_AmmoTruckWin"];};case "TAKEN":{_05d=format[[_0im]call wg2n5j,localize "STR_WL_Missions_AmmoTruckTaken"];};case "BLOWN":{_05d=format[[_0im]call wg2n5j,localize "STR_WL_Missions_AmmoTruckBlown"];};};};case wgttv3:{switch(_0im)do{case "NEW":{_05d=format[[_0im,"Retrieve explosive"]call wg2n5j,format["%1 has powerful explosive in their possession and threaten to destroy one of the wasteland gun shops. Stop them before they use the explosive.","Enemy group"]];};case "END":{_05d=format[[_0im]call wg2n5j,"Bomb situation has been resolved."];};case "WIN":{_05d=format[[_0im]call wg2n5j,"Good job securing the bomb. Leave it for yourself or blow it up on place."];};};};case wgmqlm:{switch(_0im)do{case "NEW":{_05d=format[[_0im,"Geo cache"]call wg2n5j,"Geo cache with some useful supplies and rare weapons has been dropped, ready to be claimed by the first suvivor who will manage to get there."];};case "END":{_05d=format[[_0im]call wg2n5j,"Geo cache has been claimed."];};case "DEAD":{_05d=format[[_0im]call wg2n5j,"Crate was destroyed."];};case "WIN":{_05d=format[[_0im]call wg2n5j,"Good job getting the geo cache, enjoy the supplies."];};};};case wglfzo:{switch(_0im)do{case "NEW":{_05d=format[[_0im,"Aircraft wreck"]call wg2n5j,"Shot down aircraft has been found, there should be some supplies on board."];};case "END":{_05d=format[[_0im]call wg2n5j,"Crash site has been secured."];};case "WIN":{_05d=format[[_0im]call wg2n5j,"Good job securing the crash site!"];};};};case wgztf8:{};case wgj6tl:{switch(_0im)do{case "NEW":{_05d=format[[_0im,"Diving zone"]call wg2n5j,"Underwater crate with supplies was reported to be underwater in approximate location. Get diving equipment and retrieve the crate."];};case "END":{_05d=format[[_0im]call wg2n5j,"Underwater crate was recovered."];};case "WIN":{_05d=format[[_0im]call wg2n5j,"Good job finding the crate!"];};};};case wg62j5:{switch(_0im)do{case "NEW":{_05d=format[[_0im,"Underwater wreck"]call wg2n5j,"An aircraft carrying supplies is reported to have crashed off the coast. Beware of enemy divers."];};case "END":{_05d=format[[_0im]call wg2n5j,"Underwater crash site has been secured."];};case "WIN":{_05d=format[[_0im]call wg2n5j,"Good job securing the crate!"];};};};};if(isNil{_05d})exitWith{systemChat "ERROR: FAILED TO FORM MISSION NOTIFICATION";};hint parseText _05d;};wg2n5j={private["_0xo"];switch(_this select 0)do{case "NEW":{_0xo=format[wg1ek2,wgphk2,localize "STR_WL_Missions_NewMission",format[wg1jjy,_this select 1],"%1"];};case "WIN":{_0xo=format[wg1ek2,wgn9oj,localize "STR_WL_Missions_MissionComplete","","%1"];};default{_0xo=format[wg1ek2,wg7kxp,localize "STR_WL_Missions_MissionEnded","","%1"];};};_0xo};