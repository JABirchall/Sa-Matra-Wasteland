/*
	ArmA 3 Wasteland
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	
	
	Special build for Dwarden
	
	ESABQIEXHTFRGOFR
*/
disableSerialization;if(wgwa58)then{systemChat wgv8c1;}else{wgwa58=true;private["_0gw","_0iw","_0kw","_0ow","_tab_contenu_regroupe"];private["_0pw","_0qw","_i","_j","_0sw"];_0gw=_this select 0;if!(_0gw call wgbqap)exitWith{_0ho=(_0gw call wgdtln);if(_0ho call wgr44t)then{hint format["This object is locked by %1 you cannot view its contents",name _0ho];}else{hint "This object is locked and you cannot view its contents";};wgwa58=false;};uiNamespace setVariable["R3F_LOG_dlg_CV_transporteur",_0gw];createDialog "Wasteland_ContentsR3F";_0ow=_0gw getVariable "R3F_LOG_objets_charges";if(isNil{_0ow})then{_0ow=[];};_0pw=[];_0qw=[];_0iw=0;for[{_i=0},{_i<count _0ow},{_i=_i+1}]do{private["_0cv"];_0cv=_0ow select _i;if!((typeOf _0cv)in _0pw)then{_0pw=_0pw+[typeOf _0cv];_0qw=_0qw+[1];}else{private["_0rw"];_0rw=_0pw find(typeOf _0cv);_0qw set[_0rw,((_0qw select _0rw)+1)];};for[{_j=0},{_j<count wga1d5},{_j=_j+1}]do{if(_0cv isKindOf(wga1d5 select _j select 0))exitWith{_0iw=_0iw+(wga1d5 select _j select 1);};};};_0kw=0;for[{_i=0},{_i<count wgctqt},{_i=_i+1}]do{if(_0gw isKindOf(wgctqt select _i select 0))exitWith{_0kw=(wgctqt select _i select 1);};};
#include "dlg_constantes.hpp"
private["_0tw"];_0sw=findDisplay wgrzqi;(_0sw displayCtrl wgnd24)ctrlSetText getText(configFile>>"CfgVehicles">>typeOf _0gw>>"displayname");(_0sw displayCtrl wgc72r)ctrlSetText(format[wg2bes,_0iw,_0kw]);(_0sw displayCtrl wghrn8)progressSetPosition(_0iw/_0kw);_0tw=_0sw displayCtrl wgjxz2;if(count _0pw==0)then{(_0sw displayCtrl wggvz6)ctrlEnable false;}else{for[{_i=0},{_i<count _0pw},{_i=_i+1}]do{private["_0e","_0uw"];_0uw=getText(configFile>>"CfgVehicles">>(_0pw select _i)>>"icon");if(toString([toArray _0uw select 0])!='\')then{_0uw="\A3\ui_f\data\map\VehicleIcons\iconvehicle_ca.paa";};_0e=_0tw lbAdd(getText(configFile>>"CfgVehicles">>(_0pw select _i)>>"displayName")+format[" (%1x)",_0qw select _i]);_0tw lbSetPicture[_0e,_0uw];_0tw lbSetData[_0e,_0pw select _i];};};wgwa58=false;};