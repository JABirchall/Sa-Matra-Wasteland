/*
	ArmA 3 Wasteland
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
*/

if(!isNil{world_townsMarkers}) then {
	{deleteMarkerLocal _x;} forEach world_townsMarkers;
};

wgfalm = [];
world_townsMarkers = [];
wgciid = [];
/*
	Town array format
	[
		0: Title,	string				// Title used in menus and strings
		1: Key,		string				// Key used in functions to manupulate towns array
		2: Position,	array [xyz]			// Center position
		3: Radius,	number				// Radius of town
		4: Type,	string ("town"/"carrier")	// Type of town
		5: Type data,	array [objects]			// Additional objects depending on type
		6: Is new,	bool				// Should town name be added or not
		7: Is random,	bool				// Can be selected in random spawn
		8: Buildings,	array				// Server-side buildings list
		9: Vehicles,	number				// Normal count of working vehicles in towns (calculated automatically unless specified)
	]
*/

// Number of vehicles per 100 square meters
_vehs_rate = 1.5;

// Agia Marina
wgfalm set [count wgfalm, [
		getText(configFile >> "CfgWorlds" >> worldName >> "Names" >> "Agia_Marina" >> "name"),
		"town_AgiaMarina",	[3032,6000,0], 220, "town", [],
		false, true, []
	]];
// Girna
wgfalm set [count wgfalm, [
		getText(configFile >> "CfgWorlds" >> worldName >> "Names" >> "Girna" >> "name"),
		"town_Girna",		[2002,2735,0], 140, "town", [],
		false, true, []
	]];
// Nisi bay
wgfalm set [count wgfalm, [
		getText(configFile >> "CfgWorlds" >> worldName >> "Names" >> "Nisi_Bay" >> "name"),
		"town_NisiBay",		[2018,4151,0], 140, "town", [],
		true, true, []
	]];
// Kill farm
wgfalm set [count wgfalm, [
		getText(configFile >> "CfgWorlds" >> worldName >> "Names" >> "farm2" >> "name"),
		"town_KillFarm",	[4380,6772,0], 160, "town", [],
		false, true, []
	]];
// Jay cove
wgfalm set [count wgfalm, [
		getText(configFile >> "CfgWorlds" >> worldName >> "Names" >> "TrypitiBay" >> "name"),
		"town_JayCove",		[2450,1140,0], 80, "town", [],
		true, true, []
	]];
// Limeri bay
wgfalm set [count wgfalm, [
		getText(configFile >> "CfgWorlds" >> worldName >> "Names" >> "Limeri_Bay" >> "name"),
		"town_LimeriBay",	[5353,3784,0], 100, "town", [],
		true, true, []
	]];
// Palloz (Clean town #1)
wgfalm set [count wgfalm, [
		"Palloz",
		"town_Clean1",		[3790,4738,0], 100, "town", [],
		true, true, []
	]];
// Teho (Slums town #1)
wgfalm set [count wgfalm, [
		"Teho",
		"town_Slums1",		[4994,5410,0], 60, "town", [],
		true, true, []
	]];
// Linnunrata (Slums town #2)
wgfalm set [count wgfalm, [
		"Linnunrata",
		"town_Slums2",		[6563,5120,0], 120, "town", [],
		true, true, []
	]];
// Valta (Slums town #3)
wgfalm set [count wgfalm, [
		"Valta",
		"town_Slums3",		[5530,4720,0], 80, "town", [],
		true, true, []
	]];
// Pente (Slums town #4)
wgfalm set [count wgfalm, [
		"Pente",
		"town_Slums4",		[4165,3315,0], 80, "town", [],
		true, true, []
	]];

for "_i" from 0 to (count wgfalm - 1) do {
	if(isNil{wgfalm select _i select 9}) then {
		(wgfalm select _i) set [9, ceil(sqrt((wgfalm select _i select 3) ^ 2 * 3.1415) * _vehs_rate / 100)];
	};

	// Marker
	_01a = format["marker_%1", wgfalm select _i select 1];
	_0vd = createMarkerLocal [_01a, wgfalm select _i select 2];
	_0vd setMarkerShapeLocal "ELLIPSE";
	_01a setMarkerSizeLocal [wgfalm select _i select 3, wgfalm select _i select 3];
	_01a setMarkerColorLocal "ColorBlue";
	_01a setMarkerBrushLocal "SolidBorder";
	_01a setMarkerAlphaLocal 0.3;
	world_townsMarkers pushBack _01a;

	// Name needed?
	if(wgfalm select _i select 6) then {
		_07p = +(wgfalm select _i select 2);
		_07p set [1, (_07p select 1) + (wgfalm select _i select 3) * 0.85];
		_0qu = createLocation ["NameVillage", _07p, wgfalm select _i select 3, wgfalm select _i select 3];
		_0qu setText (wgfalm select _i select 0);
	};

	// Locations
	wgciid pushBack (createLocation ["Name", (wgfalm select _i select 2), (wgfalm select _i select 3), (wgfalm select _i select 3)]);
};