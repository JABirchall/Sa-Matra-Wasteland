/*
	ArmA 3 Wasteland
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
*/

/***********************************************************
*** NO LONGER USED *** NO LONGER USED *** NO LONGER USED ***
***********************************************************/

// Time in seconds between assortiment updates in gun store
settings_gunStore_assortimentUpdateInterval = 3600;

// Custom welcome message, supports structured text (tags)
settings_HUD_customMessage = "Please report found problems on BIS forums in Wasteland thread or directly to Sa-Matra";

// Trusted UIDs
settings_trustedUIDs = compileFinal '["76561198131441323"]';

// Respawn menu text, supports structured text (tags)
settings_respawnMenuText = localize "STR_WL_Dlg_Respawn_Teamspeak";

// Blacks out screen within one second after player's death
settings_hideScreenOnDeath = true;

// Block TWS (and other modes) in armed vehicles
settings_noVehicleTWS = true;

// Block TWS (and other modes) in scoped weapons
settings_noWeaponTWS = true;

// No 3rd person view anywhere but for aircraft pilots
settings_no3rdPerson = false;//true;

// No UAVs in gun store
settings_noUAVinGunStore = false;//true;

// Accelerated Day\Night cycle which makes day last about 2 hours and night about 1.5 hours
//settings_acceleratedDayNightCycle = true;
// [OBSOLETE]

// Accelerated Day\Night cycle table consisting of list of time of skip and amount of time to skip
/*settings_acceleratedDayNightTable = [
	[0+(1/2),4+(0/1)], // at 0:30 skip 4:00 (to 4:30) = 30 minutes of night
        [5+(0/1),3+(0/1)], // at 5:00 skip 3:00 (to 8:00) = 30 minutes of morning
        [8+(1/2),3+(1/2)], // at 8:30 skip 3:30 (to 12:00) = 30 minutes of day
        [12+(1/2),3+(1/2)], // at 12:30 skip 3:30 (to 16:00) = 30 minutes of day
        [16+(1/2),2+(5/6)], // at 16:30 skip 2:50 (to 19:20) = 30 minutes of day
        [19+(5/6),4+(1/6)] // at 19:50 skip 4:10 (to 0:00) = 30 minutes of evening
];*/
// [OBSOLETE]

// Time acceleration. How many in-game seconds will pass within one real second. Values above 100 are not recommended.
settings_setTimeMultiplier = 24;

// How often time should be synced between all players (in seconds)
settings_timeSyncPeriod = 600; //0 = Disabled

// Respawn time
settings_respawnTime = 20;

// Type of AI aircraft
// 0 - Nothing
// 1 - Helicopter
// 2 - Airplane
settings_enemyAircraft = 1;