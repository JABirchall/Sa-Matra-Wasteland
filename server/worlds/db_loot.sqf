/*
        ArmA 3 Wasteland
        Code written by Sa-Matra
        Using this code without Sa-Matra's direct permission is forbidden
*/
//true call (compile preprocessFileLineNumbers "server\worlds\db_loot.sqf"); true
//true call (compile preprocessFileLineNumbers "server\worlds\db_loot.sqf"); [createVehicle ["GroundWeaponHolder", getPos player, [], 0, "CAN_COLLIDE"], 5000, database_loot_lootSet_common] call wgatlf;
//true call (compile preprocessFileLineNumbers "server\worlds\db_loot.sqf"); [createVehicle ["GroundWeaponHolder", getPos player, [], 0, "CAN_COLLIDE"], 5000, database_loot_lootSet_geocache] call wgatlf;

#include "defines.hpp"

database_loot_weaponDebugStats = [];
database_loot_miscDebugStats = [];

database_loot_glMags = [
        ["1Rnd_HE_Grenade_shell",               80],
        ["UGL_FlareWhite_F",                    1],
        ["UGL_FlareGreen_F",                    1],
        ["UGL_FlareRed_F",                      1],
        ["UGL_FlareYellow_F",                   1],
        ["UGL_FlareCIR_F",                      1],
        ["1Rnd_Smoke_Grenade_shell",            1],
        ["1Rnd_SmokeRed_Grenade_shell",         1],
        ["1Rnd_SmokeGreen_Grenade_shell",       1],
        ["1Rnd_SmokeYellow_Grenade_shell",      1],
        ["1Rnd_SmokePurple_Grenade_shell",      1],
        ["1Rnd_SmokeBlue_Grenade_shell",        1],
        ["1Rnd_SmokeOrange_Grenade_shell",      1]
];

database_loot_miscList = [
        //Class                                 Chance  Cost    Group
        ["SatchelCharge_Remote_Mag",            5,      500,    wgu2ib],
        ["ATMine_Range_Mag",                    0,      500,    wgu2ib],
        ["APERSMine_Range_Mag",                 0,      500,    wgu2ib],
        ["APERSBoundingMine_Range_Mag",         0,      300,    wgu2ib],
        ["SLAMDirectionalMine_Wire_Mag",        0,      300,    wgu2ib],
        ["APERSTripMine_Wire_Mag",              0,      500,    wgu2ib],
        ["ClaymoreDirectionalMine_Remote_Mag",  0,      300,    wgu2ib],
        ["DemoCharge_Remote_Mag",               7,      400,    wgu2ib],

        ["HandGrenade",                         10,     200,    wgszha],
        ["MiniGrenade",                         0,      100,    wgszha],

        ["SmokeShell",                          10,     100,    wglmd2],
        ["SmokeShellYellow",                    2,      100,    wglmd2],
        ["SmokeShellRed",                       2,      100,    wglmd2],
        ["SmokeShellGreen",                     2,      100,    wglmd2],
        ["SmokeShellPurple",                    2,      100,    wglmd2],
        ["SmokeShellBlue",                      2,      100,    wglmd2],
        ["SmokeShellOrange",                    2,      100,    wglmd2],
        ["Chemlight_green",                     2,      30,     wglmd2],
        ["Chemlight_red",                       2,      30,     wglmd2],
        ["Chemlight_yellow",                    2,      30,     wglmd2],
        ["Chemlight_blue",                      2,      30,     wglmd2],

        ["1Rnd_HE_Grenade_shell",               20,     50,     wg1f77],
        ["UGL_FlareWhite_F",                    1,      40,     wg1f77],
        ["UGL_FlareGreen_F",                    1,      40,     wg1f77],
        ["UGL_FlareRed_F",                      1,      40,     wg1f77],
        ["UGL_FlareYellow_F",                   1,      40,     wg1f77],
        ["UGL_FlareCIR_F",                      1,      40,     wg1f77],
        ["1Rnd_Smoke_Grenade_shell",            1,      40,     wg1f77],
        ["1Rnd_SmokeRed_Grenade_shell",         1,      40,     wg1f77],
        ["1Rnd_SmokeGreen_Grenade_shell",       1,      40,     wg1f77],
        ["1Rnd_SmokeYellow_Grenade_shell",      1,      40,     wg1f77],
        ["1Rnd_SmokePurple_Grenade_shell",      1,      40,     wg1f77],
        ["1Rnd_SmokeBlue_Grenade_shell",        1,      40,     wg1f77],
        ["1Rnd_SmokeOrange_Grenade_shell",      1,      40,     wg1f77],

        ["muzzle_snds_acp",                     8,      400,    LOOT_MISC_ATTACH],
        ["muzzle_snds_L",                       8,      400,    LOOT_MISC_ATTACH],
        ["muzzle_snds_M",                       8,      500,    LOOT_MISC_ATTACH],
        ["muzzle_snds_H",                       8,      500,    LOOT_MISC_ATTACH],
        ["muzzle_snds_B",                       8,      500,    LOOT_MISC_ATTACH],
        ["muzzle_snds_H_MG",                    8,      500,    LOOT_MISC_ATTACH],

        ["optic_Aco",                           20,     300,    LOOT_MISC_ATTACH],
        ["optic_ACO_grn",                       20,     300,    LOOT_MISC_ATTACH],
        ["optic_Holosight",                     20,     300,    LOOT_MISC_ATTACH],
        ["optic_Hamr",                          4,      600,    LOOT_MISC_ATTACH],
        ["optic_Arco",                          4,      600,    LOOT_MISC_ATTACH],
        ["optic_MRCO",                          5,      600,    LOOT_MISC_ATTACH],
        ["optic_SOS",                           1,      800,    LOOT_MISC_ATTACH],
        ["optic_LRPS",                          1,      1200,   LOOT_MISC_ATTACH],
        ["optic_NVS",                           5,      700,    LOOT_MISC_ATTACH],
        ["optic_Nightstalker",                  0,      2000,   LOOT_MISC_ATTACH],
        ["optic_tws",                           0,      1500,   LOOT_MISC_ATTACH],
        ["optic_tws_mg",                        0,      1500,   LOOT_MISC_ATTACH],
        ["optic_AMS",                           1,      1000,   LOOT_MISC_ATTACH],
        ["optic_AMS_khk",                       1,      1000,   LOOT_MISC_ATTACH],
        ["optic_AMS_snd",                       1,      1000,   LOOT_MISC_ATTACH],
        ["optic_KHS_blk",                       1,      1000,   LOOT_MISC_ATTACH],
        ["optic_KHS_hex",                       1,      1000,   LOOT_MISC_ATTACH],
        ["optic_KHS_tan",                       1,      1000,   LOOT_MISC_ATTACH],
        ["optic_KHS_old",                       3,      800,    LOOT_MISC_ATTACH],

        ["acc_flashlight",                      10,     200,    LOOT_MISC_ATTACH],
        ["acc_pointer_IR",                      10,     200,    LOOT_MISC_ATTACH],
        ["bipod_01_F_snd",                      1,      200,    LOOT_MISC_ATTACH],
        ["bipod_01_F_blk",                      1,      200,    LOOT_MISC_ATTACH],
        ["bipod_01_F_mtp",                      1,      200,    LOOT_MISC_ATTACH],
        ["bipod_02_F_blk",                      1,      200,    LOOT_MISC_ATTACH],
        ["bipod_02_F_tan",                      1,      200,    LOOT_MISC_ATTACH],
        ["bipod_02_F_hex",                      1,      200,    LOOT_MISC_ATTACH],
        ["bipod_03_F_blk",                      1,      200,    LOOT_MISC_ATTACH],
        ["bipod_03_F_oli",                      1,      200,    LOOT_MISC_ATTACH],

        ["Binocular",                           10,     400,    wg1q6h],
        ["Rangefinder",                         3,      700,    wg1q6h],
        ["Laserdesignator",                     3,      800,    wg1q6h],
        ["NVGoggles",                           10,     200,    LOOT_MISC_NVG],
        ["ItemGPS",                             10,     400,    LOOT_MISC_GPS],
        ["FirstAidKit",                         10,     100,    LOOT_MISC_MEDKIT],
        ["MineDetector",                        0,      0,      LOOT_MISC_OTHER]
,

        ["U_B_CTRG_1",                          4,      200,    LOOT_MISC_UNIFORM],     //40 (UK)
        ["U_B_CTRG_2",                          4,      200,    LOOT_MISC_UNIFORM],     //40 (UK)
        ["U_B_CTRG_3",                          4,      200,    LOOT_MISC_UNIFORM],     //40 (UK)
        ["U_B_CombatUniform_mcam",              0,      200,    LOOT_MISC_UNIFORM],     //40
        ["U_B_CombatUniform_mcam_tshirt",       4,      200,    LOOT_MISC_UNIFORM],     //40    Ð‗ÓÝõÓ­‗ÝÓ 
        ["U_B_CombatUniform_mcam_vest",         0,      200,    LOOT_MISC_UNIFORM],     //40
        ["U_B_GhillieSuit",                     4,      700,    LOOT_MISC_UNIFORM],     //60
        ["U_O_GhillieSuit",                     4,      700,    LOOT_MISC_UNIFORM],     //60
        ["U_I_GhillieSuit",                     4,      700,    LOOT_MISC_UNIFORM],     //50
        ["U_B_HeliPilotCoveralls",              4,      500,    LOOT_MISC_UNIFORM],     //60
        ["U_I_HeliPilotCoveralls",              4,      500,    LOOT_MISC_UNIFORM],     //50
        ["U_B_PilotCoveralls",                  4,      500,    LOOT_MISC_UNIFORM],     //60
        ["U_O_PilotCoveralls",                  4,      500,    LOOT_MISC_UNIFORM],     //60
        ["U_I_pilotCoveralls",                  4,      500,    LOOT_MISC_UNIFORM],     //50
        ["U_B_Wetsuit",                         4,      900,    LOOT_MISC_UNIFORM],     //90
        ["U_O_Wetsuit",                         4,      900,    LOOT_MISC_UNIFORM],     //90
        ["U_I_Wetsuit",                         4,      900,    LOOT_MISC_UNIFORM],     //90
        ["U_B_survival_uniform",                4,      600,    LOOT_MISC_UNIFORM],     //40
        ["U_O_CombatUniform_ocamo",             0,      200,    LOOT_MISC_UNIFORM],     //40    Ð‗ÓÝõÓ­‗ÝÓ 
        ["U_O_CombatUniform_oucamo",            4,      200,    LOOT_MISC_UNIFORM],     //40
        ["U_O_OfficerUniform_ocamo",            4,      200,    LOOT_MISC_UNIFORM],     //40
        ["U_C_Poloshirt_blue",                  0,      200,    LOOT_MISC_UNIFORM],     //20
        ["U_C_Poloshirt_burgundy",              0,      200,    LOOT_MISC_UNIFORM],     //20
        ["U_C_Poloshirt_stripped",              0,      200,    LOOT_MISC_UNIFORM],     //20
        ["U_C_Poloshirt_tricolour",             0,      200,    LOOT_MISC_UNIFORM],     //20
        ["U_C_Poloshirt_salmon",                0,      200,    LOOT_MISC_UNIFORM],     //20
        ["U_C_Poloshirt_redwhite",              0,      200,    LOOT_MISC_UNIFORM],     //20
        ["U_Rangemaster",                       0,      200,    LOOT_MISC_UNIFORM],     //20
        ["U_I_CombatUniform",                   4,      200,    LOOT_MISC_UNIFORM],     //50
        ["U_I_CombatUniform_tshirt",            4,      200,    LOOT_MISC_UNIFORM],     //50
        ["U_I_OfficerUniform",                  4,      200,    LOOT_MISC_UNIFORM],     //50
        ["U_Competitor",                        0,      200,    LOOT_MISC_UNIFORM],     //30    ╠ÕÝ³°Õ ±‗ÓÝõÓ­‗Ó + ÃÕÙÕÝ¹§
        ["U_NikosBody",                         4,      200,    LOOT_MISC_UNIFORM],     //0
        ["U_OrestesBody",                       4,      200,    LOOT_MISC_UNIFORM],     //0
        ["U_IG_Guerilla1_1",                    4,      200,    LOOT_MISC_UNIFORM],     //40
        ["U_IG_Guerilla2_2",                    0,      200,    LOOT_MISC_UNIFORM],     //30    Ð‗ÓÝõÓ­‗ÝÓ 
        ["U_IG_Guerilla2_3",                    0,      200,    LOOT_MISC_UNIFORM],     //30    Ð‗ÓÝõÓ­‗ÝÓ 
        ["U_IG_Guerilla3_1",                    4,      200,    LOOT_MISC_UNIFORM],     //50
        ["U_IG_Guerilla3_2",                    4,      200,    LOOT_MISC_UNIFORM],     //50
        ["U_IG_leader",                         4,      200,    LOOT_MISC_UNIFORM],     //40
        ["U_C_Poor_1",                          0,      200,    LOOT_MISC_UNIFORM],     //30    ╠ÕÝ³°Õ ±‗ÓÝõÓ­‗Ó + ÃÕÙÕÝ¹§
        ["U_C_WorkerCoveralls",                 0,      200,    LOOT_MISC_UNIFORM],     //30    ╠ÕÝ³°Õ ±‗ÓÝõÓ­‗Ó + ÃÕÙÕÝ¹§
        ["U_C_HunterBody_grn",                  0,      200,    LOOT_MISC_UNIFORM],     //30    ╠ÕÝ³°Õ ±‗ÓÝõÓ­‗Ó + ÃÕÙÕÝ¹§
        ["U_B_FullGhillie_lsh",                 4,      1000,   LOOT_MISC_UNIFORM],     //80
        ["U_B_FullGhillie_sard",                4,      1000,   LOOT_MISC_UNIFORM],     //80
        ["U_B_FullGhillie_ard",                 4,      1000,   LOOT_MISC_UNIFORM],     //80
        ["U_O_FullGhillie_lsh",                 4,      1000,   LOOT_MISC_UNIFORM],     //80
        ["U_O_FullGhillie_sard",                4,      1000,   LOOT_MISC_UNIFORM],     //80
        ["U_O_FullGhillie_ard",                 4,      1000,   LOOT_MISC_UNIFORM],     //80
        ["U_I_FullGhillie_lsh",                 4,      1000,   LOOT_MISC_UNIFORM],     //80
        ["U_I_FullGhillie_sard",                4,      1000,   LOOT_MISC_UNIFORM],     //80
        ["U_I_FullGhillie_ard",                 4,      1000,   LOOT_MISC_UNIFORM],     //80

        ["V_Rangemaster_belt",                  30,     400,    LOOT_MISC_VEST],        //40    1
        ["V_BandollierB_khk",                   5,      500,    LOOT_MISC_VEST],        //60    1
        ["V_BandollierB_cbr",                   5,      500,    LOOT_MISC_VEST],        //60    1
        ["V_BandollierB_rgr",                   5,      500,    LOOT_MISC_VEST],        //60    1
        ["V_BandollierB_blk",                   5,      500,    LOOT_MISC_VEST],        //60    1
        ["V_BandollierB_oli",                   5,      500,    LOOT_MISC_VEST],        //60    1
        ["V_Chestrig_khk",                      3,      600,    LOOT_MISC_VEST],        //100   1
        ["V_Chestrig_rgr",                      3,      600,    LOOT_MISC_VEST],        //100   1
        ["V_Chestrig_blk",                      3,      600,    LOOT_MISC_VEST],        //100   1
        ["V_Chestrig_oli",                      3,      600,    LOOT_MISC_VEST],        //100   1
        ["V_TacVest_khk",                       2,      700,    LOOT_MISC_VEST],        //100   3
        ["V_TacVest_brn",                       2,      700,    LOOT_MISC_VEST],        //100   3
        ["V_TacVest_oli",                       2,      700,    LOOT_MISC_VEST],        //100   3
        ["V_TacVest_blk",                       2,      700,    LOOT_MISC_VEST],        //100   3
        ["V_TacVest_camo",                      2,      700,    LOOT_MISC_VEST],        //100   3
        ["V_TacVest_blk_POLICE",                2,      700,    LOOT_MISC_VEST],        //100   3
        ["V_TacVestIR_blk",                     2,      700,    LOOT_MISC_VEST],        //100   3
        ["V_TacVestCamo_khk",                   2,      700,    LOOT_MISC_VEST],        //100   3
        ["V_PlateCarrier1_blk",                 2,      800,    LOOT_MISC_VEST],        //100   4
        ["V_PlateCarrier1_rgr",                 2,      800,    LOOT_MISC_VEST],        //100   4
        ["V_PlateCarrier2_rgr",                 2,      800,    LOOT_MISC_VEST],        //100   4
        ["V_PlateCarrierL_CTRG",                2,      800,    LOOT_MISC_VEST],        //120   4
        ["V_PlateCarrierH_CTRG",                2,      800,    LOOT_MISC_VEST],        //120   5
        ["V_PlateCarrierIA1_dgtl",              2,      800,    LOOT_MISC_VEST],        //100   4
        ["V_HarnessO_brn",                      1,      700,    LOOT_MISC_VEST],        //120   2
        ["V_HarnessOGL_brn",                    1,      700,    LOOT_MISC_VEST],        //120   2
        ["V_PlateCarrierIA2_dgtl",              1,      900,    LOOT_MISC_VEST],        //120   4

        ["V_PlateCarrierGL_rgr",                1,      1000,   LOOT_MISC_VEST],        //140   100
        ["V_PlateCarrierGL_blk",                1,      1000,   LOOT_MISC_VEST],        //140   100
        ["V_PlateCarrierGL_mtp",                1,      1000,   LOOT_MISC_VEST],        //140   100
        ["V_PlateCarrierSpec_rgr",              1,      800,    LOOT_MISC_VEST],        //100   40
        ["V_PlateCarrierSpec_blk",              1,      800,    LOOT_MISC_VEST],        //100   40
        ["V_PlateCarrierSpec_mtp",              1,      800,    LOOT_MISC_VEST],        //100   40
        ["V_PlateCarrierIAGL_oli",              1,      1000,   LOOT_MISC_VEST],        //120   100

        ["V_RebreatherIA",                      10,     600,    LOOT_MISC_VEST],        //0     3
        ["V_RebreatherB",                       10,     600,    LOOT_MISC_VEST],        //0     3
        ["V_RebreatherIR",                      10,     600,    LOOT_MISC_VEST],        //0     3

        ["H_HelmetSpecO_ocamo",                 3,      100,    LOOT_MISC_HEADGEAR],    //2.4
        ["H_HelmetB_paint",                     5,      100,    LOOT_MISC_HEADGEAR],    //1.8
        ["H_HelmetB_light",                     5,      100,    LOOT_MISC_HEADGEAR],    //1.8
        ["H_PilotHelmetHeli_B",                 5,      100,    LOOT_MISC_HEADGEAR],    //1.8
        ["H_PilotHelmetHeli_O",                 5,      100,    LOOT_MISC_HEADGEAR],    //1.8
        ["H_HelmetO_ocamo",                     5,      100,    LOOT_MISC_HEADGEAR],    //1.8
        ["H_HelmetLeaderO_ocamo",               5,      100,    LOOT_MISC_HEADGEAR],    //1.8
        ["H_HelmetB_plain_mcamo",               5,      100,    LOOT_MISC_HEADGEAR],    //1.8
        ["H_Helmet_Kerry",                      5,      100,    LOOT_MISC_HEADGEAR],    //1.8
        ["H_HelmetB_grass",                     5,      100,    LOOT_MISC_HEADGEAR],    //1.8
        ["H_HelmetB_snakeskin",                 5,      100,    LOOT_MISC_HEADGEAR],    //1.8
        ["H_HelmetB_desert",                    5,      100,    LOOT_MISC_HEADGEAR],    //1.8
        ["H_HelmetB_black",                     5,      100,    LOOT_MISC_HEADGEAR],    //1.8
        ["H_HelmetB_sand",                      5,      100,    LOOT_MISC_HEADGEAR],    //1.8
        ["H_HelmetB_light_grass",               5,      100,    LOOT_MISC_HEADGEAR],    //1.8
        ["H_HelmetB_light_snakeskin",           5,      100,    LOOT_MISC_HEADGEAR],    //1.8
        ["H_HelmetB_light_desert",              5,      100,    LOOT_MISC_HEADGEAR],    //1.8
        ["H_HelmetB_light_black",               5,      100,    LOOT_MISC_HEADGEAR],    //1.8
        ["H_HelmetB_light_sand",                5,      100,    LOOT_MISC_HEADGEAR],    //1.8
        ["H_HelmetCrew_B",                      5,      100,    LOOT_MISC_HEADGEAR],    //1.8
        ["H_HelmetCrew_O",                      5,      100,    LOOT_MISC_HEADGEAR],    //1.8
        ["H_HelmetCrew_I",                      5,      100,    LOOT_MISC_HEADGEAR],    //1.8
        ["H_HelmetO_oucamo",                    5,      100,    LOOT_MISC_HEADGEAR],    //1.8
        ["H_HelmetLeaderO_oucamo",              5,      100,    LOOT_MISC_HEADGEAR],    //1.8
        ["H_PilotHelmetHeli_I",                 5,      100,    LOOT_MISC_HEADGEAR],    //1.8
        ["H_PilotHelmetFighter_B",              10,     100,    LOOT_MISC_HEADGEAR],    //1.2
        ["H_PilotHelmetFighter_O",              10,     100,    LOOT_MISC_HEADGEAR],    //1.2
        ["H_PilotHelmetFighter_I",              10,     100,    LOOT_MISC_HEADGEAR],    //1.2
        ["H_CrewHelmetHeli_B",                  10,     100,    LOOT_MISC_HEADGEAR],    //1.2
        ["H_CrewHelmetHeli_O",                  10,     100,    LOOT_MISC_HEADGEAR],    //1.2
        ["H_CrewHelmetHeli_I",                  10,     100,    LOOT_MISC_HEADGEAR],    //1.2
        ["H_HelmetIA",                          10,     100,    LOOT_MISC_HEADGEAR],    //1.2

        ["H_BandMask_blk",                      5,      100,    LOOT_MISC_HEADGEAR],    //0
        ["H_Booniehat_khk",                     5,      100,    LOOT_MISC_HEADGEAR],    //0
        ["H_Booniehat_indp",                    5,      100,    LOOT_MISC_HEADGEAR],    //0
        ["H_Booniehat_mcamo",                   5,      100,    LOOT_MISC_HEADGEAR],    //0
        ["H_MilCap_ocamo",                      5,      100,    LOOT_MISC_HEADGEAR],    //0
        ["H_MilCap_mcamo",                      5,      100,    LOOT_MISC_HEADGEAR],    //0
        ["H_MilCap_oucamo",                     5,      100,    LOOT_MISC_HEADGEAR],    //0
        ["H_MilCap_gry",                        5,      100,    LOOT_MISC_HEADGEAR],    //0
        ["H_MilCap_dgtl",                       5,      100,    LOOT_MISC_HEADGEAR],    //0
        ["H_MilCap_blue",                       5,      100,    LOOT_MISC_HEADGEAR],    //0
        ["H_Cap_tan",                           5,      100,    LOOT_MISC_HEADGEAR],    //0
        ["H_Cap_blk",                           5,      100,    LOOT_MISC_HEADGEAR],    //0
        ["H_Cap_blk_CMMG",                      5,      100,    LOOT_MISC_HEADGEAR],    //0
        ["H_Cap_brn_SPECOPS",                   5,      100,    LOOT_MISC_HEADGEAR],    //0
        ["H_Cap_tan_specops_US",                5,      100,    LOOT_MISC_HEADGEAR],    //0
        ["H_Cap_khaki_specops_UK",              5,      100,    LOOT_MISC_HEADGEAR],    //0
        ["H_Cap_grn",                           5,      100,    LOOT_MISC_HEADGEAR],    //0
        ["H_Cap_grn_BI",                        5,      100,    LOOT_MISC_HEADGEAR],    //0
        ["H_Cap_blk_Raven",                     5,      100,    LOOT_MISC_HEADGEAR],    //0
        ["H_Cap_blk_ION",                       5,      100,    LOOT_MISC_HEADGEAR],    //0
        ["H_Cap_red",                           5,      100,    LOOT_MISC_HEADGEAR],    //0
        ["H_Cap_blu",                           5,      100,    LOOT_MISC_HEADGEAR],    //0
        ["H_Cap_oli",                           5,      100,    LOOT_MISC_HEADGEAR],    //0
        ["H_Cap_headphones",                    5,      100,    LOOT_MISC_HEADGEAR],    //0
        ["H_Bandanna_surfer",                   5,      100,    LOOT_MISC_HEADGEAR],    //0
        ["H_Bandanna_khk",                      5,      100,    LOOT_MISC_HEADGEAR],    //0
        ["H_Bandanna_cbr",                      5,      100,    LOOT_MISC_HEADGEAR],    //0
        ["H_Bandanna_sgg",                      5,      100,    LOOT_MISC_HEADGEAR],    //0
        ["H_Bandanna_gry",                      5,      100,    LOOT_MISC_HEADGEAR],    //0
        ["H_Bandanna_camo",                     5,      100,    LOOT_MISC_HEADGEAR],    //0
        ["H_Bandanna_mcamo",                    5,      100,    LOOT_MISC_HEADGEAR],    //0
        ["H_Shemag_olive",                      5,      100,    LOOT_MISC_HEADGEAR],    //0
        ["H_ShemagOpen_khk",                    5,      100,    LOOT_MISC_HEADGEAR],    //0
        ["H_Beret_blk",                         5,      100,    LOOT_MISC_HEADGEAR],    //0
        ["H_Watchcap_blk",                      5,      100,    LOOT_MISC_HEADGEAR],    //0
        ["H_StrawHat",                          5,      100,    LOOT_MISC_HEADGEAR],    //0
        ["H_StrawHat_dark",                     5,      100,    LOOT_MISC_HEADGEAR],    //0
        ["H_Hat_blue",                          5,      100,    LOOT_MISC_HEADGEAR],    //0
        ["H_Hat_brown",                         5,      100,    LOOT_MISC_HEADGEAR],    //0
        ["H_Hat_camo",                          5,      100,    LOOT_MISC_HEADGEAR],    //0
        ["H_Hat_grey",                          5,      100,    LOOT_MISC_HEADGEAR],    //0
        ["H_Hat_checker",                       5,      100,    LOOT_MISC_HEADGEAR],    //0
        ["H_Hat_tan",                           5,      100,    LOOT_MISC_HEADGEAR]     //0
];

_0k = configFile >> "CfgGlasses";
for "_i" from 0 to count(_0k) - 1 do {
        _0l = configName(_0k select _i);
        if!(_0l in ["", "None"]) then {
                database_loot_miscList set [count database_loot_miscList, [_0l,1, 50, LOOT_MISC_GLASSES]];
        };
};

database_loot_backpackList = [
        //Class                         Chance  Cost
        ["B_AssaultPack_Base",          10,     700],   //160
        ["B_AssaultPack_dgtl",          10,     700],   //160
        ["B_AssaultPack_rgr",           10,     700],   //160
        ["B_AssaultPack_sgg",           10,     700],   //160
        ["B_AssaultPack_blk",           10,     700],   //160
        ["B_AssaultPack_cbr",           10,     700],   //160
        ["B_AssaultPack_mcamo",         10,     700],   //160
        ["B_TacticalPack_ocamo",        10,     700],   //160
        ["B_TacticalPack_oli",          10,     700],   //160
        ["B_Kitbag_Base",               8,      800],   //200
        ["B_Kitbag_mcamo",              8,      800],   //200
        ["B_Kitbag_sgg",                8,      800],   //200
        ["B_Kitbag_cbr",                8,      800],   //200
        ["B_FieldPack_Base",            8,      900],   //240
        ["B_FieldPack_blk",             8,      900],   //240
        ["B_FieldPack_ocamo",           8,      900],   //240
        ["B_FieldPack_oucamo",          8,      900],   //240
        ["B_FieldPack_khk",             8,      900],   //240
        ["B_FieldPack_oli",             8,      900],   //240
        ["B_Bergen_Base",               5,      1000],  //280
        ["B_Bergen_mcamo",              5,      1000],  //280
        ["B_Bergen_rgr",                5,      1000],  //280
        ["B_Bergen_blk",                5,      1000],  //280
        ["B_Carryall_Base",             3,      1200],  //320
        ["B_Carryall_ocamo",            3,      1200],  //320
        ["B_Carryall_oucamo",           3,      1200],  //320
        ["B_Carryall_mcamo",            3,      1200],  //320
        ["B_Carryall_oli",              3,      1200],  //320
        ["B_Carryall_cbr",              3,      1200],  //320
//      ["B_Parachute",                 10,     700],   //0
        ["B_UAV_01_backpack_F",         0,      700],   //0
        ["O_UAV_01_backpack_F",         0,      700],   //0
        ["I_UAV_01_backpack_F",         0,      700]    //0
];

database_loot_backpackRareList = [
        //Class                         Chance  Cost
        ["B_FieldPack_Base",            1,      900],   //240
        ["B_FieldPack_blk",             1,      900],   //240
        ["B_FieldPack_ocamo",           1,      900],   //240
        ["B_FieldPack_oucamo",          1,      900],   //240
        ["B_FieldPack_khk",             1,      900],   //240
        ["B_FieldPack_oli",             1,      900],   //240
        ["B_Bergen_Base",               1,      1000],  //280
        ["B_Bergen_mcamo",              1,      1000],  //280
        ["B_Bergen_rgr",                1,      1000],  //280
        ["B_Bergen_blk",                1,      1000],  //280
        ["B_Carryall_Base",             1,      1200],  //320
        ["B_Carryall_ocamo",            1,      1200],  //320
        ["B_Carryall_oucamo",           1,      1200],  //320
        ["B_Carryall_mcamo",            1,      1200],  //320
        ["B_Carryall_oli",              1,      1200],  //320
        ["B_Carryall_cbr",              1,      1200]   //320
];

database_loot_weaponTemplates = [
        //Base class                    Cost    Base tags  Ammo count      Ammo                        Ammo other (═ÓÚ‗Þ õ­¾ÒÞÕ ýÓÒÓþÞÝ¹)      Special
        ["srifle_EBR_F",								500,    [TAG_RIFLE, TAG_SNIPER],5,		"20Rnd_762x51_Mag",		false,          []],
        ["srifle_DMR_01_F",								 500,    [TAG_RIFLE, TAG_SNIPER],5,		"10Rnd_762x54_Mag",		false,          []],
        ["srifle_GM6_F",								1000,   [TAG_SNIPER],4,					[["5Rnd_127x108_Mag", 1], ["5Rnd_127x108_APDS_Mag", 1]],	false,          []],
        ["srifle_LRR_F",								1000,   [TAG_SNIPER],3, 				"7Rnd_408_Mag",			false,          []],
        [["srifle_DMR_04_F", "srifle_DMR_04_Tan_F"],	1000,   [TAG_RIFLE, TAG_SNIPER],5, 		"10Rnd_127x54_Mag",		false,          []],    // ASP-1 Kir
        [["srifle_DMR_05_blk_F", "srifle_DMR_05_hex_F", "srifle_DMR_05_tan_f"],	800,    [TAG_SNIPER],5,		"10Rnd_93x64_DMR_05_Mag",	false,          []],    // Cyrus 9.3mm
        [["srifle_DMR_02_F", "srifle_DMR_02_camo_F", "srifle_DMR_02_sniper_F"],	800,    [TAG_SNIPER],5,		"10Rnd_338_Mag",            false,          []],    // MAR-10 .338
        [["srifle_DMR_03_F", "srifle_DMR_03_tan_F", "srifle_DMR_03_khaki_F", "srifle_DMR_03_multicam_F", "srifle_DMR_03_woodland_F"],    600,    [TAG_RIFLE, TAG_SNIPER],5,              "20Rnd_762x51_Mag",                        false,          []],    // Mk-l EMR 7.62 mm
        [["srifle_DMR_06_olive_F", "srifle_DMR_06_camo_F"],                                        400,    [TAG_RIFLE, TAG_SNIPER],5,              "20Rnd_762x51_Mag",                        false,          []],    // M14

        ["LMG_Mk200_F",                 550,    [TAG_LMG],3,              [["200Rnd_65x39_cased_Box", 1], ["200Rnd_65x39_cased_Box_Tracer", 1]],                  false,          []],
        ["LMG_Zafir_F",                 600,    [TAG_LMG],3,              [["150Rnd_762x54_Box", 1], ["150Rnd_762x54_Box_Tracer", 1]],                        false,          []],
        [["MMG_01_tan_F", "MMG_01_hex_F"],                                        600,    [TAG_LMG],3,              "150Rnd_93x64_Mag",                        false,          []],    // Navid 9.3 mm
        [["MMG_02_black_F", "MMG_02_sand_F", "MMG_02_camo_F"],                                        600,    [TAG_LMG],4,              "130Rnd_338_Mag",                        false,          []],    // SPMG .338

        ["SMG_01_F",                    300,    [TAG_SIMPLE, TAG_SMG],5,              [["30Rnd_45ACP_Mag_SMG_01", 1], ["30Rnd_45ACP_Mag_SMG_01_Tracer_Green", 1]],            false,          []],
        ["SMG_02_F",                    300,    [TAG_SIMPLE, TAG_SMG],5,              "30Rnd_9x21_Mag",                        false,          []],
        ["hgun_PDW2000_F",              300,    [TAG_SIMPLE, TAG_SMG],5,              "30Rnd_9x21_Mag",                        false,          []],

        ["arifle_Mk20_F",               300,    [TAG_RIFLE],6,              [["30Rnd_556x45_Stanag", 1], ["30Rnd_556x45_Stanag_Tracer_Red",1], ["30Rnd_556x45_Stanag_Tracer_Green", 1], ["30Rnd_556x45_Stanag_Tracer_Yellow", 1]], false,          []],
        ["arifle_Mk20C_F",              300,    [TAG_SIMPLE, TAG_CQB],6,              [["30Rnd_556x45_Stanag", 1], ["30Rnd_556x45_Stanag_Tracer_Red",1], ["30Rnd_556x45_Stanag_Tracer_Green", 1], ["30Rnd_556x45_Stanag_Tracer_Yellow", 1]], false,          []],
        ["arifle_Mk20_GL_F",            350,    [TAG_RIFLE, TAG_GL],5,              [["30Rnd_556x45_Stanag", 1], ["30Rnd_556x45_Stanag_Tracer_Red",1], ["30Rnd_556x45_Stanag_Tracer_Green", 1], ["30Rnd_556x45_Stanag_Tracer_Yellow", 1]], false,          [wg2qcw]],
        ["arifle_Katiba_F",             300,    [TAG_RIFLE],6,              [["30Rnd_65x39_caseless_green", 1], ["30Rnd_65x39_caseless_green_mag_Tracer", 1]],      false,          []],
        ["arifle_Katiba_C_F",           300,    [TAG_SIMPLE, TAG_CQB],6,              [["30Rnd_65x39_caseless_green", 1], ["30Rnd_65x39_caseless_green_mag_Tracer", 1]],      false,          []],
        ["arifle_Katiba_GL_F",          350,    [TAG_RIFLE, TAG_GL],5,              [["30Rnd_65x39_caseless_green", 1], ["30Rnd_65x39_caseless_green_mag_Tracer", 1]],      false,          [wg2qcw]],
        ["arifle_MXC_F",                350,    [TAG_SIMPLE, TAG_CQB],6,              [["30Rnd_65x39_caseless_mag", 1], ["30Rnd_65x39_caseless_mag_Tracer", 1]],              false,          []],
        ["arifle_MX_F",                 350,    [TAG_RIFLE],6,              [["30Rnd_65x39_caseless_mag", 1], ["30Rnd_65x39_caseless_mag_Tracer", 1]],              false,          []],
        ["arifle_MX_GL_F",              400,    [TAG_RIFLE, TAG_GL],5,              [["30Rnd_65x39_caseless_mag", 1], ["30Rnd_65x39_caseless_mag_Tracer", 1]],              false,          [wgfmhs]],
        ["arifle_MX_SW_F",              500,    [TAG_LMG],4,              [["100Rnd_65x39_caseless_mag", 1], ["100Rnd_65x39_caseless_mag_Tracer", 1]],            true,           []],
        ["arifle_MXM_F",                550,    [TAG_RIFLE, TAG_SNIPER],5,              "30Rnd_65x39_caseless_mag",                        false,          []],
        ["arifle_SDAR_F",               300,    [TAG_UNDERWATER],6,              "20Rnd_556x45_UW_mag",                        false,          []],
        ["arifle_TRG21_F",              300,    [TAG_RIFLE],6,              [["30Rnd_556x45_Stanag", 1], ["30Rnd_556x45_Stanag_Tracer_Red",1], ["30Rnd_556x45_Stanag_Tracer_Green", 1], ["30Rnd_556x45_Stanag_Tracer_Yellow", 1]], false,          []],
        ["arifle_TRG20_F",              250,    [TAG_SIMPLE, TAG_CQB],6,              [["30Rnd_556x45_Stanag", 1], ["30Rnd_556x45_Stanag_Tracer_Red",1], ["30Rnd_556x45_Stanag_Tracer_Green", 1], ["30Rnd_556x45_Stanag_Tracer_Yellow", 1]], false,          []],
        ["arifle_TRG21_GL_F",           350,    [TAG_RIFLE, TAG_GL],5,              [["30Rnd_556x45_Stanag", 1], ["30Rnd_556x45_Stanag_Tracer_Red",1], ["30Rnd_556x45_Stanag_Tracer_Green", 1], ["30Rnd_556x45_Stanag_Tracer_Yellow", 1]], false,          [wg2qcw]],

        ["hgun_P07_F",                  150,    [TAG_PISTOL],4,              [["16Rnd_9x21_Mag", 2], ["30Rnd_9x21_Mag", 1]],                        false,          []],
        ["hgun_Rook40_F",               150,    [TAG_PISTOL],4,              [["16Rnd_9x21_Mag", 2], ["30Rnd_9x21_Mag", 1]],                        false,          []],
        ["hgun_ACPC2_F",                150,    [TAG_PISTOL],4,              "9Rnd_45ACP_Mag",                        false,          []],
        ["hgun_Pistol_Signal_F",        50,     [TAG_PISTOL],3,              [["6Rnd_GreenSignal_F", 1], ["6Rnd_RedSignal_F", 1]],                        false,          []],
        ["hgun_Pistol_heavy_01_F",      150,    [TAG_SIMPLE, TAG_PISTOL],4,              "11Rnd_45ACP_Mag",                        false,          []],
        ["hgun_Pistol_heavy_02_F",      150,    [TAG_SIMPLE, TAG_PISTOL],4,              "6Rnd_45ACP_Cylinder",                        false,          []],

        ["launch_NLAW_F",               1000,   [TAG_LAUNCHER],1,              "NLAW_F",                        false,          [wg9kb9]],
        ["launch_RPG32_F",              1000,   [TAG_LAUNCHER],1,              [["RPG32_F", 5], ["RPG32_HE_F", 1]],                        false,          [wg9kb9]],
//      [["launch_B_Titan_short_F", "launch_I_Titan_short_F", "launch_O_Titan_short_F", "launch_Titan_short_F"],        1000,   [TAG_LAUNCHER], 1,      [["Titan_AT", 3], ["Titan_AP", 1]],     false,  [wg9kb9]],
        [["launch_B_Titan_F", "launch_I_Titan_F", "launch_O_Titan_F", "launch_Titan_F"],                                1000,   [TAG_LAUNCHER], 1,      "Titan_AA",                             false,  [wg9kb9]]
];

database_loot_attachmentTemplates = [
        //Class                 Cost    Tags
        ["muzzle_snds_acp",     100,    [TAG_SILENCED]],
        ["muzzle_snds_L",       100,    [TAG_SILENCED]],
        ["muzzle_snds_H",       400,    [TAG_SILENCED]],
        ["muzzle_snds_B",       400,    [TAG_SILENCED]],
        ["muzzle_snds_H_MG",    400,    [TAG_SILENCED]],
        ["muzzle_snds_338_black",400,   [TAG_SILENCED]],
        ["muzzle_snds_338_green",400,   [TAG_SILENCED]],
        ["muzzle_snds_338_sand",400,    [TAG_SILENCED]],
        ["muzzle_snds_93mmg",   400,    [TAG_SILENCED]],
        ["muzzle_snds_93mmg_tan",400,   [TAG_SILENCED]],

//      ["optic_Nightstalker",  1500,   [TAG_SCOPE, TAG_TWS]],
//      ["optic_tws",           1000,   [TAG_SCOPE, TAG_TWS]],
//      ["optic_tws_mg",        1000,   [TAG_SCOPE, TAG_TWS]],
        ["optic_NVS",           600,    [TAG_SCOPE, TAG_NVG]],
        ["optic_SOS",           1000,   [TAG_SCOPE]],
        ["optic_DMS",           1000,   [TAG_SCOPE]],
        ["optic_LRPS",          1000,   [TAG_SCOPE]],
        ["optic_MRCO",          400,    [TAG_SCOPE]],
        ["optic_Arco",          400,    [TAG_SCOPE]],
        ["optic_Hamr",          400,    [TAG_SCOPE]],
        ["optic_Aco",           200,    [TAG_SIGHT]],
        ["optic_ACO_grn",       200,    [TAG_SIGHT]],
        ["optic_Holosight",     200,    [TAG_SIGHT]],
        ["optic_Yorris",        50,     []],
        ["optic_MRD",           50,     []],
        ["acc_flashlight",      100,    [TAG_LIGHT]],
        ["acc_pointer_IR",      100,    [TAG_LASER]],

        ["optic_AMS",           1000,   [TAG_SCOPE]],
        ["optic_AMS_khk",       1000,   [TAG_SCOPE]],
        ["optic_AMS_snd",       1000,   [TAG_SCOPE]],

        ["optic_KHS_blk",       1000,   [TAG_SCOPE]],
        ["optic_KHS_hex",       1000,   [TAG_SCOPE]],
        ["optic_KHS_tan",       1000,   [TAG_SCOPE]],
        ["optic_KHS_old",       800,    [TAG_SCOPE]],

        ["bipod_01_F_snd",      100,    []],
        ["bipod_01_F_blk",      100,    []],
        ["bipod_01_F_mtp",      100,    []],
        ["bipod_02_F_blk",      100,    []],
        ["bipod_02_F_tan",      100,    []],
        ["bipod_02_F_hex",      100,    []],
        ["bipod_03_F_blk",      100,    []],
        ["bipod_03_F_oli",      100,    []]
];

/*database_loot_attachmentForbidden = [
        "optic_tws", "optic_tws_mg", "optic_Nightstalker"
];*/

//database_loot_weaponsList
/*
_func_inheritsFrom = {
        _0i = false;
        _0k = configFile >> "CfgWeapons" >> (_this select 0);
        for "_i" from 0 to 4 do {
                _0k = inheritsFrom(_0k);
                if(configName(_0k) == _this select 1) exitWith {
                        _0i = true;
                };
        };
        _0i
};*/

database_loot_weaponsList = [];
for "_i" from 0 to count(database_loot_weaponTemplates) - 1 do {
        _tmp = database_loot_weaponTemplates select _i;

        //Ammo
        _ammo = [];     //[Class, Chance, Count]
        _ammoalt = [];
        if(typeName(_tmp select 4) == typeName "") then {
                _ammo = [[_tmp select 4, 1, _tmp select 3]];
        } else {
                {
                        _ammo set [count _ammo, [_x select 0, _x select 1, _tmp select 3]];
                } forEach (_tmp select 4);
        };
        if(_tmp select 5) then {
                _acnt = getNumber(configFile >> "CfgMagazines" >> (_ammo select 0 select 0) >> "count");
                _0zb = getArray(configFile >> "CfgWeapons" >> (_tmp select 0) >> "magazines");
                {_0zb = _0zb - [_x select 0]} forEach _ammo;
                {
                        _0ka = getNumber(configFile >> "CfgMagazines" >> _x >> "count");
                        _0bc = ceil((_acnt / _0ka) * (_tmp select 3));
                        _ammoalt set [count _ammoalt, [_x, 1, _0bc]];
                } forEach _0zb;
        };

        //systemChat format ["_ammo=%1 _ammoalt=%2", _ammo, _ammoalt];

        _baseclass = _tmp select 0;
        _isarray = false;
        if(typeName _baseclass == typeName []) then {
                _baseclass = _baseclass select 0;
                _isarray = true;
        };
        for "_j" from 0 to count(configFile >> "CfgWeapons") - 1 do {
                if((!_isarray && [configName((configFile >> "CfgWeapons") select _j), _baseclass] call wg551a) || (_baseclass == configName((configFile >> "CfgW
eapons") select _j))) then {
                        _0l = configName((configFile >> "CfgWeapons") select _j);
                        _li = configFile >> "CfgWeapons" >> _0l >> "LinkedItems";
                        _0gb = _tmp select 1;
                        _tags = _tmp select 2;
                        _valid = true;

                        for "_k" from 0 to count(_li) - 1 do {
                                _0fg = getText((_li select _k) >> "item");
                                _valid = false;
                                {
                                        if(_x select 0 == _0fg) exitWith {
                                                _valid = true;
                                                _0gb = _0gb + (_x select 1);
                                                _tags = _tags + (_x select 2);
                                        };
                                } forEach database_loot_attachmentTemplates;
                                if(!_valid) exitWith {};
                        };

                        if(_0l == "FakeWeapon_moduleTracers_F") then {_valid = false;};
                        if((_0l != _baseclass) && (count(_li) == 0)) then {_valid = false;};

                        if(_valid) then {
                                database_loot_weaponsList set [count database_loot_weaponsList,
                                        [(if(_isarray)then{_tmp select 0}else{_0l}), _0gb, _tags, _ammo, _ammoalt, _tmp select 6]
                                ];
                                //diag_log [_0l, _0gb, _tags, _ammo, _ammoalt, _tmp select 6];
                        };

                };
        };

        //if(true) exitWith {};
};

database_loot_miscChances = [];
for "_i" from 0 to LOOT_MISC_LAST do {database_loot_miscChances set [_i, []]};
for "_i" from 0 to count(database_loot_miscList) - 1 do {
        for "_j" from 1 to (database_loot_miscList select _i select 1) do {
                _0na = (database_loot_miscChances select (database_loot_miscList select _i select 3));
                _0na set [count _0na, _i];
        };
};

//Params: [[[Tags], chance], ...]
//Returns: [Chances]
database_func_createWeaponChances = {
        _07a = [];
        for "_i" from 0 to count(database_loot_weaponsList) - 1 do {
                _07a set [_i, 0];
        };

        {
                _0gd = _x select 1;
                for "_i" from 0 to count(database_loot_weaponsList) - 1 do {
                        if({_x in (database_loot_weaponsList select _i select 2)
} count (_x select 0) == count(_x select 0)) then {
                                _07a set [_i, _0gd];
                        };
                };
        } forEach _this;

        _0i = [];
        for "_i" from 0 to count(_07a) do {
                for "_j" from 1 to (_07a select _i) do {
                        _0i set [count _0i, _i];
                };
        };

        if(count(_0i) == 0) then {
                _error = 'WASTELAND :: WARNING! database_func_createWeaponChances returned empty array!';
                systemChat _error;
                diag_log _error;
        };

        _0i
};

// ========================================
// ================ COMMON ================
// ========================================
database_loot_weaponChances_common = [
        [[TAG_SIMPLE],          50],
        [[TAG_SIGHT],           1],
        [[TAG_SILENCED],        0],
        [[TAG_SCOPE],           0]

/*      [[TAG_SMG],             50],
        [[TAG_CQB],             5],
        [[TAG_RIFLE],           3],
        [[TAG_GL],              3],
        [[TAG_LMG],             3],
        [[TAG_PISTOL],          5],
        [[TAG_LAUNCHER],        2],
        [[TAG_UNDERWATER],      5],
        [[TAG_SNIPER],          1],

        [[TAG_SCOPE],           0],
        [[TAG_SIGHT],           1],
        [[TAG_SILENCED],        1],

        [[TAG_PISTOL, TAG_SILENCED],    4]*/
] call database_func_createWeaponChances;

database_loot_miscChances_common = [
        [wgu2ib,        1],
        [wgszha,        20],
        [wglmd2,        20],
        [wg1f77,                8],
        [LOOT_MISC_ATTACH,      1],
        [wg1q6h,        2],
        [LOOT_MISC_NVG,         5],
        [LOOT_MISC_MEDKIT,      30],
        [LOOT_MISC_GPS,         5],
        [LOOT_MISC_UNIFORM,     5],
        [LOOT_MISC_VEST,        1],
        [LOOT_MISC_HEADGEAR,    10],
        [LOOT_MISC_GLASSES,     10]
//      [LOOT_MISC_OTHER,       1]
];

database_loot_lootSet_common = [
//ammo#   ammo wep   unusual ammo
        [wgu7eq,        3,      database_loot_weaponChances_common,     [[0, 0.6], [0.1, 0.8], 0.2]],
        [wgf9b8,        1,      database_loot_miscChances_common]
];

/////////////////////
// VEHICLE
database_loot_miscChances_vehicleCommon = [
        [wgu2ib,        3],
        [wgszha,        10],
        [wglmd2,        10],
        [wg1f77,                5],
        [LOOT_MISC_ATTACH,      5],
        [wg1q6h,        2],
        [LOOT_MISC_NVG,         5],
        [LOOT_MISC_MEDKIT,      50],
        [LOOT_MISC_GPS,         5],
        [LOOT_MISC_UNIFORM,     3],
        [LOOT_MISC_VEST,        5],
        [LOOT_MISC_HEADGEAR,    10],
        [LOOT_MISC_GLASSES,     3]
//      [LOOT_MISC_OTHER,       1]
];


database_loot_lootSet_vehicleCommon = [
//ammo#     ammo wep   unusual ammo
        [wgu7eq,        2,      database_loot_weaponChances_common,     [[0.4, 1], [0.0, 1], 0.2]],
        [wgf9b8,        1,      database_loot_miscChances_vehicleCommon]
];

// ========================================
// ============== GOOD STUFF ==============
// ========================================
database_loot_weaponChances_goodstuff = [
        [[TAG_SMG],             10],
        [[TAG_RIFLE],           10],
        [[TAG_CQB],             10],
        [[TAG_LMG],             5],
        [[TAG_PISTOL],          5],
        [[TAG_LAUNCHER],        2],
        [[TAG_UNDERWATER],      6],
        [[TAG_SNIPER],          3],

        [[TAG_SIGHT],           3],
        [[TAG_SILENCED],        2],
        [[TAG_SCOPE],           1],

        [[TAG_PISTOL, TAG_SILENCED],    4]
] call database_func_createWeaponChances;

database_loot_miscChances_goodstuff = [
        [wgu2ib,        5],
        [wgszha,        10],
        [wglmd2,        10],
        [wg1f77,                5],
        [LOOT_MISC_ATTACH,      3],
        [wg1q6h,        2],
        [LOOT_MISC_NVG,         5],
        [LOOT_MISC_MEDKIT,      20],
        [LOOT_MISC_GPS,         5],
        [LOOT_MISC_UNIFORM,     2],
        [LOOT_MISC_VEST,        5],
        [LOOT_MISC_HEADGEAR,    5],
        [LOOT_MISC_GLASSES,     3]
//      [LOOT_MISC_OTHER,       1]
];

database_loot_lootSet_goodstuff = [
//ammo#     ammo wep   unusual ammo
        [wgu7eq,        2,      database_loot_weaponChances_goodstuff,  [[0.5, 1.5], [0.2, 0.8], 0.2]],
        [wgf9b8,        1,      database_loot_miscChances_goodstuff]
];

/////////////////////
// VEHICLE
database_loot_lootSet_vehicleGoodstuff = [
//ammo#     ammo wep   unusual ammo
        [wgu7eq,        1,      database_loot_weaponChances_goodstuff,  [[0, 1.5], [0.2, 0.8], 0.2]],
        [wgf9b8,        1,      database_loot_miscChances_goodstuff]
];

// ========================================
// ============== EXPLOSIVES ==============
// ========================================
database_loot_weaponChances_explosives = [
        [[TAG_SMG],             20],
        [[TAG_CQB],             5],
        [[TAG_PISTOL],          2],

        [[TAG_SILENCED],        0],
        [[TAG_SCOPE],           0],
        [[TAG_SIGHT],           0]
] call database_func_createWeaponChances;

database_loot_miscChances_explosives = [
        [wgu2ib,        25],
        [wgszha,        4],
        [wglmd2,        2],
        [wg1f77,                2],
        [wg1q6h,        1],
        [LOOT_MISC_NVG,         3],
        [LOOT_MISC_MEDKIT,      1],
        [LOOT_MISC_GPS,         1],
        [LOOT_MISC_HEADGEAR,    1],
        [LOOT_MISC_GLASSES,     0]
//      [LOOT_MISC_OTHER,       3]
];

database_loot_lootSet_explosives = [
//ammo#     ammo wep   unusual ammo
        [wgu7eq,        1,      database_loot_weaponChances_explosives, [[0, 0.8], [0.2, 0.8], 0]],
        [wgf9b8,        15,     database_loot_miscChances_explosives]
];

// ========================================
// =============== GRENADES ===============
// ========================================
database_loot_weaponChances_grenades = [
        [[TAG_SMG],             5],
        [[TAG_CQB],             1],
        [[TAG_PISTOL],          5],

        [[TAG_SILENCED],        0],
        [[TAG_SCOPE],           0],
        [[TAG_SIGHT],           0]
] call database_func_createWeaponChances;

database_loot_miscChances_grenades = [
        [wgu2ib,        1],
        [wgszha,        20],
        [wglmd2,        7],
        [wg1f77,                7],
        [LOOT_MISC_MEDKIT,      1],
        [LOOT_MISC_GPS,         1],
        [LOOT_MISC_HEADGEAR,    1],
        [LOOT_MISC_VEST,        1],
        [LOOT_MISC_GLASSES,     0]
//      [LOOT_MISC_OTHER,       1]
];

database_loot_lootSet_grenades = [
//ammo#     ammo wep   unusual ammo
        [wgu7eq,        1,      database_loot_weaponChances_grenades,   [[0, 0.8], [0.2, 0.8], 0]],
        [wgf9b8,        15,     database_loot_miscChances_grenades]
];

// ========================================
// =============== SUPPORT ================
// ========================================
database_loot_weaponChances_support = [
        [[TAG_SMG],             1],
        [[TAG_CQB],             1],
        [[TAG_PISTOL],          5],

        [[TAG_SILENCED],        0],
        [[TAG_SCOPE],           0],
        [[TAG_SIGHT],           0]
] call database_func_createWeaponChances;

database_loot_miscChances_support = [
        [wgu2ib,        1],
        [wgszha,        1],
        [wglmd2,        1],
        [wg1f77,                1],
        [LOOT_MISC_ATTACH,      10],
        [wg1q6h,        5],
        [LOOT_MISC_NVG,         25],
        [LOOT_MISC_MEDKIT,      10],
        [LOOT_MISC_GPS,         5],
        [LOOT_MISC_UNIFORM,     15],
        [LOOT_MISC_VEST,        15],
        [LOOT_MISC_HEADGEAR,    25],
        [LOOT_MISC_GLASSES,     10]
//      [LOOT_MISC_OTHER,       1]
];

database_loot_lootSet_support = [
//ammo#   ammo wep   unusual ammo
        [wgu7eq,        1,      database_loot_weaponChances_support,    [[0, 1], [0.2, 0.8], 0.2]],
        [wgf9b8,        15,     database_loot_miscChances_support]
];

// =======================================
// ============== GEO CACHE ==============
// =======================================
database_loot_weaponChances_geocache = [
        [[TAG_SMG],             10],
        [[TAG_RIFLE],           10],
        [[TAG_CQB],             10],
        [[TAG_LMG],             10],
        [[TAG_PISTOL],          5],
        [[TAG_LAUNCHER],        2],
        [[TAG_UNDERWATER],      40],
        [[TAG_SNIPER],          10],

        [[TAG_SIGHT],           1],
        [[TAG_SILENCED],        3],
        [[TAG_SCOPE],           2],

        [[TAG_PISTOL, TAG_SILENCED],    4]
] call database_func_createWeaponChances;

database_loot_miscChances_geocache = [
        [wgu2ib,        5],
        [wgszha,        5],
        [wglmd2,        1],
        [wg1f77,                1],
        [LOOT_MISC_ATTACH,      20],
        [wg1q6h,        2],
        [LOOT_MISC_NVG,         25],
        [LOOT_MISC_MEDKIT,      10],
        [LOOT_MISC_GPS,         5],
        [LOOT_MISC_UNIFORM,     5],
        [LOOT_MISC_VEST,        10],
        [LOOT_MISC_HEADGEAR,    3],
        [LOOT_MISC_GLASSES,     5]
//      [LOOT_MISC_OTHER,       2]
];

database_loot_lootSet_geocache = [
//ammo#       ammo wep    unusual ammo
        [wgu7eq,        1,      database_loot_weaponChances_geocache,   [[0.5, 1.5], [0.1, 0.95], 0.1]],
        [wgf9b8,        2,      database_loot_miscChances_geocache]
];

// =======================================
// ============== LAUNCHERS ==============
// =======================================
database_loot_weaponChances_launchers = [
        [[TAG_SMG],             1],
        [[TAG_LMG],             1],
        [[TAG_LAUNCHER],        10]
] call database_func_createWeaponChances;

database_loot_miscChances_launchers = [
        [wgu2ib,        5],
        [wgszha,        5],
        [wglmd2,        1],
        [wg1f77,                1],
        [LOOT_MISC_ATTACH,      20],
        [wg1q6h,        2],
        [LOOT_MISC_NVG,         3],
        [LOOT_MISC_MEDKIT,      10],
        [LOOT_MISC_GPS,         5],
        [LOOT_MISC_UNIFORM,     5],
        [LOOT_MISC_VEST,        10],
        [LOOT_MISC_HEADGEAR,    20],
        [LOOT_MISC_GLASSES,     0]
//      [LOOT_MISC_OTHER,       2]
];

database_loot_lootSet_launchers = [
//ammo#       ammo wep    unusual ammo
        [wgu7eq,        5,      database_loot_weaponChances_launchers,  [[1, 3], [0, 1], 0.1]],
        [wgf9b8,        1,      database_loot_miscChances_launchers]
];


//systemChat format ["%1", database_loot_weaponChances_support];

// ======================================
// database_loot_lootSet_common
// database_loot_lootSet_goodstuff
// database_loot_lootSet_explosives
// database_loot_lootSet_grenades
// database_loot_lootSet_support
// database_loot_lootSet_vehicleCommon
// database_loot_lootSet_vehicleGoodstuff
// database_loot_lootSet_geocache

database_loot_cratesListNormal = [
        //Classes        Chance  Cost multpl     Loot groups
        [["Box_NATO_Wps_F", "Box_East_Wps_F", "Box_IND_Wps_F"],                10,     1,              database_loot_lootSet_common],
        [["Box_NATO_Wps_F", "Box_East_Wps_F", "Box_IND_Wps_F"],                1,      0.8,            database_loot_lootSet_goodstuff],
        [["Box_NATO_WpsSpecial_F", "Box_East_WpsSpecial_F", "Box_IND_WpsSpecial_F"],            1,      0.8,            database_loot_lootSet_goodstuff],
        [["Box_NATO_AmmoOrd_F", "Box_East_AmmoOrd_F", "Box_IND_AmmoOrd_F"],                2,      1,              database_loot_lootSet_explosives],
        [["Box_NATO_Grenades_F", "Box_East_Grenades_F", "Box_IND_Grenades_F"],                2,      1.5,            database_loot_lootSet_grenades],
        [["Box_NATO_Support_F", "Box_East_Support_F", "Box_IND_Support_F"],                1,      1,              database_loot_lootSet_support],
        [["Box_NATO_WpsSpecial_F", "Box_East_WpsSpecial_F", "Box_IND_WpsSpecial_F"],            1,      1,              database_loot_lootSet_goodstuff],
        [["Box_NATO_Wps_F", "Box_East_Wps_F", "Box_IND_Wps_F"],                1,      1.5,            database_loot_lootSet_support],
        [["Box_NATO_WpsLaunch_F", "Box_East_WpsLaunch_F", "Box_IND_WpsLaunch_F"],               1,      1,              database_loot_lootSet_launchers]
];

database_loot_cratesListRare = [
        //Classes        Chance  Cost multpl     Loot groups
        [["Box_NATO_Wps_F", "Box_East_Wps_F", "Box_IND_Wps_F"],                0,      2,              database_loot_lootSet_common],
        [["Box_NATO_Wps_F", "Box_East_Wps_F", "Box_IND_Wps_F"],                3,      1,              database_loot_lootSet_goodstuff],
        [["Box_NATO_WpsSpecial_F", "Box_East_WpsSpecial_F", "Box_IND_WpsSpecial_F"],            3,      1,              database_loot_lootSet_goodstuff],
        [["Box_NATO_AmmoOrd_F", "Box_East_AmmoOrd_F", "Box_IND_AmmoOrd_F"],                2,      2,              database_loot_lootSet_explosives],
        [["Box_NATO_Grenades_F", "Box_East_Grenades_F", "Box_IND_Grenades_F"],                2,      2.5,            database_loot_lootSet_grenades],
        [["Box_NATO_Support_F", "Box_East_Support_F", "Box_IND_Support_F"],                2,      1.5,            database_loot_lootSet_support],
        [["Box_NATO_WpsSpecial_F", "Box_NATO_WpsSpecial_F", "Box_IND_WpsSpecial_F"],            2,      1.5,            database_loot_lootSet_goodstuff],
        [["Box_NATO_Wps_F", "Box_East_Wps_F", "Box_IND_Wps_F"],                2,      2.5,            database_loot_lootSet_support],
        [["Box_NATO_WpsLaunch_F", "Box_East_WpsLaunch_F", "Box_IND_WpsLaunch_F"],               2,      2,              database_loot_lootSet_launchers]
];

//[Class, Cost, Tags, Ammo, Ammoalt, Special]
//database_loot_weaponsList

true;