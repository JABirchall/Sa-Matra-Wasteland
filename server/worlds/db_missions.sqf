/*
        ArmA 3 Wasteland
        Code written by Sa-Matra
        Using this code without Sa-Matra's direct permission is forbidden
*/

#define wgun6f          0
#define wgawbf  1
#define wg2ymb          2
#define wgqtzn  3
#define wgttv3  4
#define wgmqlm  5
#define wglfzo  6
#define wgztf8  7
#define wgj6tl          8
#define wg62j5  9

database_missions_codeList = [
        compile preprocessFileLineNumbers "server\s_mission_captureBase.sqf",        //wgun6f
        compile preprocessFileLineNumbers "server\s_mission_captureHeli.sqf",        //wgawbf
        compile preprocessFileLineNumbers "server\s_mission_captureArmor.sqf",        //wg2ymb
        compile preprocessFileLineNumbers "server\s_mission_captureTruck.sqf",        //wgqtzn
        {},        //wgttv3
        compile preprocessFileLineNumbers "server\s_mission_geoCache.sqf",        //wgmqlm
        compile preprocessFileLineNumbers "server\s_mission_aircraftWreck.sqf",        //wglfzo
        {},        //wgztf8
        compile preprocessFileLineNumbers "server\s_mission_divingZone.sqf",        //wgj6tl
        compile preprocessFileLineNumbers "server\s_mission_waterWreck.sqf"        //wg62j5
];

database_missions_threadsList = [
        [{600}, {(600 - count(playableUnits) * 10) max 300}, {true}, [
                [wgun6f,                10,     [WORLD_LOCATION_BASE]]
        ]],
        [{300}, {(600 - count(playableUnits) * 10) max 300}, {true}, [
                [wgawbf,        10,     [WORLD_LOCATION_BASE, WORLD_LOCATION_FLAT]],
                [wg2ymb,        10,     [WORLD_LOCATION_BASE, WORLD_LOCATION_FLAT]],
                [wgqtzn,        8,      [WORLD_LOCATION_BASE, WORLD_LOCATION_FLAT]]
        ]],
        [{900}, {(600 - count(playableUnits) * 10) max 300}, {true}, [
                [wglfzo,        10,     [WORLD_LOCATION_BASE, WORLD_LOCATION_FLAT]],
                [wgmqlm,        10,     [WORLD_LOCATION_GEO]]
        ]],
        [{2400}, {(1200 - count(playableUnits) * 10) max 900}, {true}, [
                [wgj6tl,        10,     [WORLD_LOCATION_WATER]],
                [wg62j5,        10,     [WORLD_LOCATION_WATER]]
        ]]
];
database_missions_noSameMissionBetweenThreads = false;
database_missions_forceStartMission = true;