/*
	ArmA 3 Wasteland
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	
	
	Special build for Dwarden
	
	ESABQIEXHTFRGOFR
*/
#define wgbp5y	30
#define wgeqfs	30
#define wgdghs	30
wgjomf={daytime>20||daytime<3};wg2ten={"BIS_fnc_MP_packet" addPublicVariableEventHandler{_this call BIS_fnc_MPexec};};wg25oa={(_this select 0)setFuel(_this select 1);};wgml2q={(_this select 0)setVehicleAmmo(_this select 1);};wg95mw={private["_0fd","_05a"];_0fd=_this select 0;_05a=_this select 1;_0fd setVelocity[sin _05a*4,cos _05a*4,1];};wghk73={_0ca=_this select 0;_0vw=_this select 1;_0ww=_this select 2;if(typeName(_0ww)!=typeName(""))then{_0ww=getArray(configFile>>"CfgVehicles">>typeOf(_0ca)>>"hiddenselectionstextures")select _0vw;};_0xw=_0ww call wgjtbh;_0yw=-1;for "_i" from 0 to count(wgn8g5)-1 do{if(wgn8g5 select _i select 0==_0ca)exitWith{_0yw=_i;};};if(_0yw==-1)then{_0yw=count(wgn8g5);wgn8g5 set[_0yw,[_0ca,[]]];};_0zw=wgn8g5 select _0yw select 1;_0zw set[_0vw,_0xw];_01w=[];for "_i" from 0 to count(wgn8g5)-1 do{if(isNull(wgn8g5 select _i select 0))then{_01w set[count _01w,_i];};};if(count(_01w)>0)then{wgn8g5=[wgn8g5,_01w]call BIS_fnc_removeIndex;for "_i" from 0 to count(wgn8g5)-1 do{if(wgn8g5 select _i select 0==_0ca)exitWith{_0yw=_i;};};};_0yw call wgmixb;wg3qcq=_0yw;publicVariable "wgn8g5";publicVariable "wg3qcq";};wgjtbh={private["_0e"];_0e=-1;for "_i" from 0 to count(wgrolw)-1 do{if(wgrolw select _i==_this)exitWith{_0e=_i;};};if(_0e==-1)then{_0e=count(wgrolw);wgrolw set[_0e,_this];publicVariable "wgrolw";};_0e};wgmixb={_0ca=wgn8g5 select _this select 0;_0ww=wgn8g5 select _this select 1;for "_i" from 0 to count(_0ww)-1 do{if(!isNil{_0ww select _i})then{_0ca setObjectTexture[_i,wgrolw select(_0ww select _i)];};};};wgqhik={if(_this select 1)then{if((_this select 0)in wgq2to)then{if!((_this select 0)in(wgantn select 1))then{(wgantn select 1)set[count(wgantn select 1),(_this select 0)];};}else{wgq67y=[(_this select 0),true];publicVariable "wgq67y";};(_this select 0)enableSimulation true;}else{if((_this select 0)in wgq2to)then{wgq67y=[(_this select 0),false];publicVariable "wgq67y";}else{if!((_this select 0)in(wgantn select 0))then{(wgantn select 0)set[count(wgantn select 0),(_this select 0)];};};(_this select 0)enableSimulation false;(_this select 0)setVelocity[0,0,0];};};wgm6cs={if(count(wgantn select 0)>0||count(wgantn select 1)>0)then{publicVariable "wgantn";call wgav1k;};};wgav1k={{_x enableSimulation false;_x setVelocity[0,0,0];}forEach(wgantn select 0);{_x enableSimulation true;}forEach(wgantn select 1);if(isServer)then{wgq2to=wgq2to+(wgantn select 0)-([objNull]+(wgantn select 1));publicVariable "wgq2to";};wgantn=[[],[]];};wghlp9={if(_this select 1)then{if((_this select 0)in wgs35c)then{wgs35c=wgs35c-[(_this select 0),objNull];publicVariable "wgs35c";}else{wgnd3z=[(_this select 0),true];publicVariable "wgnd3z";};(_this select 0)allowDamage true;}else{if((_this select 0)in wgs35c)then{wgnd3z=[(_this select 0),false];publicVariable "wgnd3z";}else{wgs35c=wgs35c+[(_this select 0)]-[objNull];publicVariable "wgs35c";};(_this select 0)allowDamage false;};};wgairj={if(isNil{wgo16o})then{wgo16o=[];};{_x allowDamage false;}forEach(wgs35c-wgo16o);{_x allowDamage true;}forEach(wgo16o-wgs35c);wgo16o=wgs35c;};wgayif={if(_this select 1)then{if((_this select 0)in wgfoa9)then{wgfoa9=wgfoa9-[(_this select 0),objNull];publicVariable "wgfoa9";}else{wgh65o=[(_this select 0),true];publicVariable "wgh65o";};[(_this select 0),true]call wgvyke;}else{if((_this select 0)in wgfoa9)then{wgh65o=[(_this select 0),false];publicVariable "wgh65o";}else{wgfoa9=wgfoa9+[(_this select 0)]-[objNull];publicVariable "wgfoa9";};[(_this select 0),false]call wgvyke;};};wgu145={if(isNil{wgxkpm})then{wgxkpm=[];};{_x allowDamage false;}forEach(wgfoa9-wgxkpm);{_x allowDamage true;}forEach(wgxkpm-wgfoa9);wgxkpm=wgfoa9;};wgvyke={if(_this select 1)then{_02w=(_this select 0)getVariable["handledamage_eh",0];(_this select 0)removeEventHandler["Handledamage",_02w];}else{_02w=(_this select 0)addEventHandler["Handledamage",{0}];(_this select 0)setVariable["handledamage_eh",_02w];};};wgfh4d={private["_0fd","_03w","_04w","_05w","_06w","_0ld"];_0fd=_this select 0;_03w=_this select 1;_04w=_this select 2;_05w=_04w call wgjtbh;_06w=-1;for "_i" from 0 to count(wgruuo)-1 do{if(wgruuo select _i select 0==_0fd)exitWith{_06w=_i;};};if(_06w==-1)then{_06w=count(wgruuo);wgruuo set[_06w,[_0fd,[]]];};_0ld=wgruuo select _06w select 1;_0ld set[_03w,_05w];};wgtp7l={if(wgtypk)exitWith{};if(count(wgruuo)>0)then{wgl4mu=wgruuo;publicVariable "wgl4mu";call wgy8e8;wgruuo=[];};};wgy8e8={wgl4mu call wgf8i4;if(isServer)then{wg9roo=wg9roo+wgl4mu;if(count(wg9roo)>wgbp5y)then{private["_07w"];wg3dg9=wg3dg9+1;_07w=format["publicVar_shared_texturedSimpleListArchive%1",wg3dg9];missionNamespace setVariable[_07w,wg9roo];wg1dkz set[count wg1dkz,_07w];wg9roo=[];publicVariable _07w;publicVariable "wg1dkz";};publicVariable "wg9roo";};wgl4mu=[];};wgf8i4={{if(!isNull(_x select 0))then{if(!isDedicated)then{};for "_i" from 0 to count(_x select 1)-1 do{if(!isDedicated)then{};(_x select 0)setObjectTexture[_i,wgrolw select(_x select 1 select _i)];};};}forEach _this;};wg1bsw={private["_0fd","_08w"];_0fd=_this select 0;_08w=_this select 1;if(_0fd in wg3yma)then{if(_08w)then{wg3yma=wg3yma-[_0fd];};}else{if(!_08w)then{wg3yma set[count wg3yma,_0fd];};};};wglxj9={if(wgn3ih)exitWith{};if(count(wg3yma)>0)then{wgrsnp=wg3yma;publicVariable "wgrsnp";call wgvxlq;wg3yma=[];};};wgvxlq={{_x allowDamage false;}forEach wgrsnp;if(isServer)then{wg319l=wg319l-[objNull]+wgrsnp;if(count(wg319l)>wgeqfs)then{private["_07w"];wg99ui=wg99ui+1;_07w=format["publicVar_shared_invincibleSimpleListArchive%1",wg99ui];missionNamespace setVariable[_07w,wg319l];wghgzs set[count wghgzs,_07w];wg319l=[];publicVariable _07w;publicVariable "wghgzs";};};wgrsnp=[];};wgthvn={private["_0fd","_08w"];_0fd=_this select 0;_08w=_this select 1;if(_0fd in wgr5nv)then{if(_08w)then{wgr5nv=wgr5nv-[_0fd];};}else{if(!_08w)then{wgr5nv set[count wgr5nv,_0fd];};};};wgx46y={if(wg6kcy)exitWith{};if(count(wgr5nv)>0)then{wgj1q5=wgr5nv;publicVariable "wgj1q5";call wg4uxj;wgr5nv=[];};};wg4uxj={{_x enableSimulation false;_x setVelocity[0,0,0];}forEach wgj1q5;if(isServer)then{wgoiq3=wgoiq3-[objNull]+wgr5nv;if(count(wgoiq3)>wgdghs)then{private["_07w"];wgj7bg=wgj7bg+1;_07w=format["publicVar_shared_simulationSimpleListArchive%1",wgj7bg];missionNamespace setVariable[_07w,wgoiq3];wgywk7 set[count wgywk7,_07w];wgoiq3=[];publicVariable _07w;publicVariable "wgywk7";};};wgj1q5=[];};wg1vle={private["_0e","_0wi"];_0wi=_this;_0e=count(_0wi)-1;for "_i" from 0 to count(_0wi)-1 do{if(((_0wi select _i select 0)+(_0wi select _i select 1))>daytime)exitWith{_0e=_i;};};_0e};wg7pko={private["_0wi","_0e","_09w","_0ax"];_0wi=settings_acceleratedDayNightTable;_0e=_0wi call wg1vle;while{true}do{_09w=_0e-1;if(_09w<0)then{_0ax=[0,0];}else{_0ax=_0wi select _09w;};waitUntil{(daytime<((_0ax select 0)+(_0ax select 1)))||daytime>(_0wi select _0e select 0)};if(true)then{if(!wgyqew)then{if(daytime>=(_0wi select _0e select 0)&&daytime<=((_0wi select _0e select 0)+(_0wi select _0e select 1)))then{_0bx=(_0wi select _0e select 1)-(daytime-(_0wi select _0e select 0));1 setOvercast 0.5;skipTime _0bx;60 setFog 0;_0cx=date;wgo2ps=_0cx;publicVariable "wgo2ps";};}else{wgyqew=false;};_0e=_0wi call wg1vle;};sleep 1;};};wgcrvy={clearWeaponCargoGlobal _this;clearMagazineCargoGlobal _this;[_this,false]call wgqhik;[_this,false]call wghlp9;[_this,0,"i\vehammo_signs.paa"]call wghk73;[_this,1,"A3\Weapons_F\Ammoboxes\data\AmmoBox_haf_CO.paa"]call wghk73;_this setVariable["inventory_vehammo",true,true];if(getPosATL _this select 2<0.2)then{_this setVectorUp surfaceNormal(getPosATL _this);};call wgm6cs;};