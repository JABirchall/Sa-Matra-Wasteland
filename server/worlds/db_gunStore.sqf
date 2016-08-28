/*
        ArmA 3 Wasteland
        Code written by Sa-Matra
        Using this code without Sa-Matra's direct permission is forbidden
*/
//      Classname               Group                   Chance  Highlight  Buy     Sell    Mags [Class, Chance, Buy, Sell]
database_gunStore_weaponsList = [
        ["hgun_P07_F",          wg7f8s,         5,      false,          140,50,     [["30Rnd_9x21_Mag",3,20,10], ["16Rnd_9x21_Mag",3,10,5]]],
        ["hgun_Rook40_F",       wg7f8s,         5,      false,          140,50,     "hgun_P07_F"],
        ["hgun_ACPC2_F",        wg7f8s,         5,      false,          150,50,     [["9Rnd_45ACP_Mag",1,30,10]]],
        ["hgun_Pistol_heavy_01_F",      wg7f8s, 5,      false,          150,50,     [["11Rnd_45ACP_Mag",1,30,10]]],
        ["hgun_Pistol_heavy_02_F",      wg7f8s, 5,      false,          160,60,     [["6Rnd_45ACP_Cylinder",1,30,10]]],
        ["hgun_Pistol_Signal_F",        wg7f8s, 1,      false,          200,50,     [["6Rnd_GreenSignal_F",1,30,10],["6Rnd_RedSignal_F",1,30,10]]],

        ["arifle_Katiba_C_F",   wgfoeu,         5,      false,          350,180,    [["30Rnd_65x39_caseless_green",3,50,30],["30Rnd_65x39_caseless_green_mag_Tracer",3,50,30]]],
        ["arifle_Katiba_F",     wgfoeu,         5,      false,          400,200,    "arifle_Katiba_C_F"],
        ["arifle_Katiba_GL_F",  wgfoeu,         5,      false,          450,250,    "arifle_Katiba_C_F"],
        [["arifle_MXC_F", "arifle_MXC_Black_F"],        wgfoeu,         5,false,          350,    200,    [["30Rnd_65x39_caseless_mag",3,50,30],["30Rnd_65x39_caseless_mag_Tracer",3,50,30]]],
        [["arifle_MX_F", "arifle_MX_Black_F"],          wgfoeu,         5,false,          400,    240,    "arifle_MXC_F"],
        [["arifle_MX_GL_F", "arifle_MX_GL_Black_F"],    wgfoeu,         5,false,          450,    280,    "arifle_MXC_F"],

        ["arifle_SDAR_F",       wgfoeu,         5,      false,          350,250,    [["20Rnd_556x45_UW_mag",3,40,25], ["30Rnd_556x45_Stanag",3,60,30]]],

        ["arifle_TRG20_F",      wgfoeu,         5,      false,          350,180,    [["30Rnd_556x45_Stanag",3,50,30], ["30Rnd_556x45_Stanag_Tracer_Red",1,50,30], ["30Rnd_556x45_Stanag_Tracer_Green",1,50,30], ["30Rnd_556x45_Stanag_Tracer_Yellow",1,50,30]]],
        ["arifle_TRG21_F",      wgfoeu,         5,      false,          400,200,    "arifle_TRG20_F"],
        ["arifle_TRG21_GL_F",   wgfoeu,         5,      false,          450,250,    "arifle_TRG20_F"],

        ["arifle_Mk20_F",       wgfoeu,         5,      false,          350,180,    "arifle_TRG20_F"],
        ["arifle_Mk20C_F",      wgfoeu,         5,      false,          400,200,    "arifle_TRG20_F"],
        ["arifle_Mk20_GL_F",    wgfoeu,         5,      false,          450,250,    "arifle_TRG20_F"],

        ["SMG_02_F",            wgfoeu,         5,      false,          300,150,    [["30Rnd_9x21_Mag",3,20,10]]],
        ["SMG_01_F",            wgfoeu,         5,      false,          250,150,    [["30Rnd_45ACP_Mag_SMG_01",3,30,20], ["30Rnd_45ACP_Mag_SMG_01_Tracer_Green",1,30,20]]],
        ["hgun_PDW2000_F",      wgfoeu,         5,      false,          300,150,    "SMG_02_F"],

        ["srifle_EBR_F",        wguw8v,         5,      true,           500,250,    [[-1,3,130,70]]],
        ["arifle_MXM_F",        wguw8v,         5,      true,           500,250,    "arifle_MXC_F"],
        ["srifle_DMR_01_F",     wguw8v,         7,      true,           500,250,    [[-1,3,100,60]]],
        [["srifle_GM6_F", "srifle_GM6_camo_F"], wguw8v,         10,     true,        1000,   500,    [["5Rnd_127x108_Mag",3,130,100], ["5Rnd_127x108_APDS_Mag",3,130,100]]],
        [["srifle_LRR_F", "srifle_LRR_camo_F"], wguw8v,         10,     true,        1000,   500,    [[-1,3,170,120]]],
        [["srifle_DMR_04_F", "srifle_DMR_04_Tan_F"],
                                                wguw8v, 5,      true,1000,   500,    [[-1,3,150,100]]],      // ASP-1 Kir
        [["srifle_DMR_05_blk_F", "srifle_DMR_05_hex_F", "srifle_DMR_05_tan_f"],
                                                wguw8v, 5,      true,600,    300,    [[-1,3,120,70]]],       // Cyrus 9.3mm
        [["srifle_DMR_02_F", "srifle_DMR_02_camo_F", "srifle_DMR_02_sniper_F"],
                                                wguw8v, 5,      true,600,    300,    [[-1,3,120,70]]],       // MAR-10 .338
        [["srifle_DMR_03_F", "srifle_DMR_03_tan_F", "srifle_DMR_03_khaki_F", "srifle_DMR_03_multicam_F", "srifle_DMR_03_woodland_F"],
                                                wguw8v, 5,      true,500,    250,    "srifle_EBR_F"],        // Mk-l EMR 7.62 mm
        [["srifle_DMR_06_olive_F", "srifle_DMR_06_camo_F"],
                                                wguw8v, 5,      true,400,    200,    "srifle_EBR_F"],        // M14

        ["LMG_Mk200_F",                                 wggeyc,         5,true,           500,    300,    [["200Rnd_65x39_cased_Box",3,150,100], ["200Rnd_65x39_cased_Box_Tracer",3,150,100]]],
        [["arifle_MX_SW_F", "arifle_MX_SW_Black_F"],    wggeyc,         5,true,           500,    300,    [["100Rnd_65x39_caseless_mag_Tracer",3,100,70],["100Rnd_65x39_caseless_mag",3,100,70]]],
        ["LMG_Zafir_F",                                 wggeyc,         5,true,           500,    300,    [["150Rnd_762x54_Box",3,150,100],["150Rnd_762x54_Box_Tracer",3,150,100]]],
        [["MMG_01_tan_F", "MMG_01_hex_F"],              wggeyc,         3,true,           600,    350,    [[-1,3,180,120]]],      // Navid 9.3 mm
        [["MMG_02_black_F", "MMG_02_sand_F", "MMG_02_camo_F"],  wggeyc, 3,true,           600,    350,    [[-1,3,150,100]]],      // SPMG .338

        ["launch_NLAW_F",               wg8znq,         10,     true,600,    250,    [["NLAW_F",3,500,350]]],
        ["launch_RPG32_F",              wg8znq,         10,     true,500,    250,    [["RPG32_F",4,400,300], ["RPG32_HE_F",1,600,400]]],
        [["launch_Titan_short_F", "launch_B_Titan_short_F", "launch_I_Titan_short_F", "launch_O_Titan_short_F"],        wg8znq,         0,      true,600,    250,    [["Titan_AT",3,500,350], ["Titan_AP",1,500,350]]],
        [["launch_Titan_F", "launch_B_Titan_F", "launch_I_Titan_F", "launch_O_Titan_F"],                                wg8znq,         1,      true,700,    350,    [["Titan_AA",3,600,400]]]

];

//      Group                   Count   Chance
database_gunStore_weaponsScheme = [
        [wgfoeu,                3,      60],
        [wguw8v,                2,      50],
        [wggeyc,                1,      80],
        [wg8znq,                3,      10],
        [wg7f8s,                1,      80]
];

//      Classname                               Group                   Chance    Highlight       Buy     Sell
database_gunStore_miscList = [
        ["Binocular",                           wgqgsr,         5,      false,        300,    100],
        ["Rangefinder",                         wgqgsr,         3,      false,        800,    300],
        ["Laserdesignator",                     wgqgsr,         2,      false,        900,    400],

        ["HandGrenade",                         wga9d5,         -1,     false,        100,    40],
        ["MiniGrenade",                         wga9d5,         0,      false,        80,     20],
        ["SmokeShell",                          wg21ap,         -1,     false,        40,     20],
        ["SmokeShellYellow",                    wg21ap,         5,      false,        40,     20],
        ["SmokeShellRed",                       wg21ap,         5,      false,        40,     20],
        ["SmokeShellGreen",                     wg21ap,         5,      false,        40,     20],
        ["SmokeShellPurple",                    wg21ap,         5,      false,        40,     20],
        ["SmokeShellBlue",                      wg21ap,         5,      false,        40,     20],
        ["SmokeShellOrange",                    wg21ap,         5,      false,        40,     20],
        ["Chemlight_green",                     wg21ap,         5,      false,        10,     3],
        ["Chemlight_red",                       wg21ap,         5,      false,        10,     3],
        ["Chemlight_yellow",                    wg21ap,         5,      false,        10,     3],
        ["Chemlight_blue",                      wg21ap,         5,      false,        10,     3],
        ["1Rnd_HE_Grenade_shell",               wgwydd,        -1,      false,80,     30],
        ["3Rnd_HE_Grenade_shell",               wgwydd,         5,      false,200,    100],
        ["UGL_FlareWhite_F",                    wgwydd,         5,      false,40,     15],
        ["UGL_FlareGreen_F",                    wgwydd,         5,      false,40,     15],
        ["UGL_FlareRed_F",                      wgwydd,         5,      false,40,     15],
        ["UGL_FlareYellow_F",                   wgwydd,         5,      false,40,     15],
        ["UGL_FlareCIR_F",                      wgwydd,         5,      false,40,     15],
        ["1Rnd_Smoke_Grenade_shell",            wgwydd,         5,      false,40,     20],
        ["1Rnd_SmokeRed_Grenade_shell",         wgwydd,         5,      false,40,     20],
        ["1Rnd_SmokeGreen_Grenade_shell",       wgwydd,         5,      false,40,     20],
        ["1Rnd_SmokeYellow_Grenade_shell",      wgwydd,         5,      false,40,     20],
        ["1Rnd_SmokePurple_Grenade_shell",      wgwydd,         5,      false,40,     20],
        ["1Rnd_SmokeBlue_Grenade_shell",        wgwydd,         5,      false,40,     20],
        ["1Rnd_SmokeOrange_Grenade_shell",      wgwydd,         5,      false,40,     20],

        ["SatchelCharge_Remote_Mag",            wgjbql,         5,      false,        700,    350],
        ["ATMine_Range_Mag",                    wgjbql,         0,      false,        300,    150],
        ["APERSMine_Range_Mag",                 wgjbql,         0,      false,        300,    150],
        ["APERSBoundingMine_Range_Mag",         wgjbql,         0,      false,        250,    100],
        ["SLAMDirectionalMine_Wire_Mag",        wgjbql,         0,      false,        250,    100],
        ["APERSTripMine_Wire_Mag",              wgjbql,         0,      false,        350,    200],
        ["ClaymoreDirectionalMine_Remote_Mag",  wgjbql,         0,      false,        250,    100],
        ["DemoCharge_Remote_Mag",               wgjbql,         -1,     false,        400,    200],

        // ==================================== ËÝÞ¶¯­ý¹ ============================================================================
        ["U_BasicBody",                         wgqnoo,         0,      false,        10,     5],     //0     ═Õ‗ ¯õÕµõ¹

        ["U_B_CTRG_1",                          wgqnoo,         5,      false,        150,    80],    //40
        ["U_B_CTRG_2",                          wgqnoo,         5,      false,        150,    80],    //40
        ["U_B_CTRG_3",                          wgqnoo,         5,      false,        150,    80],    //40
        ["U_B_CombatUniform_mcam",              wgqnoo,         5,      false,        150,    80],    //40
        ["U_B_CombatUniform_mcam_tshirt",       wgqnoo,         0,      false,        150,    80],    //40    Ð‗ÓÝõÓ­‗ÝÓ 
        ["U_B_CombatUniform_mcam_vest",         wgqnoo,         5,      false,        150,    80],    //40
        ["U_B_GhillieSuit",                     wgqnoo,         5,      false,        700,    400],   //60
        ["U_O_GhillieSuit",                     wgqnoo,         5,      false,        700,    400],   //60
        ["U_I_GhillieSuit",                     wgqnoo,         5,      false,        600,    300],   //50
        ["U_B_HeliPilotCoveralls",              wgqnoo,         5,      false,        250,    150],   //60
        ["U_I_HeliPilotCoveralls",              wgqnoo,         5,      false,        200,    120],   //50
        ["U_B_PilotCoveralls",                  wgqnoo,         5,      false,        250,    150],   //60
        ["U_O_PilotCoveralls",                  wgqnoo,         5,      false,        250,    150],   //60
        ["U_I_pilotCoveralls",                  wgqnoo,         5,      false,        200,    120],   //50
        [["U_B_Wetsuit", "U_O_Wetsuit", "U_I_Wetsuit"], wgqnoo, 30,     false,        600,    300],   //90
        ["U_O_CombatUniform_ocamo",             wgqnoo,         0,      false,        150,    80],    //40    Ð‗ÓÝõÓ­‗ÝÓ 
        ["U_O_CombatUniform_oucamo",            wgqnoo,         5,      false,        150,    80],    //40
        ["U_O_OfficerUniform_ocamo",            wgqnoo,         5,      false,        150,    80],    //40

        ["U_C_Poloshirt_blue",                  wgqnoo,         1,      false,        100,    50],    //20
        ["U_C_Poloshirt_burgundy",              wgqnoo,         1,      false,        100,    50],    //20
        ["U_C_Poloshirt_stripped",              wgqnoo,         1,      false,        100,    50],    //20
        ["U_C_Poloshirt_tricolour",             wgqnoo,         1,      false,        100,    50],    //20
        ["U_C_Poloshirt_salmon",                wgqnoo,         1,      false,        100,    50],    //20
        ["U_C_Poloshirt_redwhite",              wgqnoo,         1,      false,        100,    50],    //20
        ["U_C_Commoner1_1",                     wgqnoo,         0,      false,        100,    50],    //20    ╚õÕÝ‗Þ¸ÝÓ  U_C_Poloshirt_stripped
        ["U_Rangemaster",                       wgqnoo,         1,      false,        100,    50],    //20

        ["U_I_CombatUniform",                   wgqnoo,         5,      false,        200,    120],   //50
        ["U_I_CombatUniform_tshirt",            wgqnoo,         5,      false,        200,    120],   //50
        ["U_I_OfficerUniform",                  wgqnoo,         5,      false,        200,    120],   //50
        ["U_Competitor",                        wgqnoo,         0,      false,        150,    80],    //30
        ["U_NikosBody",                         wgqnoo,         5,      false,        150,    100],   //0
        ["U_OrestesBody",                       wgqnoo,         5,      false,        150,    100],   //0

        ["U_I_G_Story_Protagonist_F",           wgqnoo,         5,      false,        200,    120],   //40
        ["U_I_G_resistanceLeader_F",            wgqnoo,         5,      false,        200,    120],   //40
        ["U_C_Journalist",                      wgqnoo,         5,      false,        150,    100],   //20
        ["U_C_Scientist",                       wgqnoo,         5,      false,        150,    100],   //20
        ["U_NikosAgedBody",                     wgqnoo,         5,      false,        150,    100],   //20
        ["U_Marshal",                           wgqnoo,         5,      false,        150,    100],   //20

        ["U_IG_Guerilla1_1",                    wgqnoo,         5,      false,        150,    80],    //40
        ["U_IG_Guerilla2_2",                    wgqnoo,         0,      false,        150,    80],    //30    Ð‗ÓÝõÓ­‗ÝÓ 
        ["U_IG_Guerilla2_3",                    wgqnoo,         0,      false,        150,    80],    //30    Ð‗ÓÝõÓ­‗ÝÓ 
        ["U_IG_Guerilla3_1",                    wgqnoo,         5,      false,        200,    120],   //50
        ["U_IG_Guerilla3_2",                    wgqnoo,         5,      false,        200,    120],   //50
        ["U_IG_leader",                         wgqnoo,         5,      false,        150,    80],    //40
        ["U_C_Poor_1",                          wgqnoo,         2,      false,        150,    80],    //30
        ["U_C_WorkerCoveralls",                 wgqnoo,         2,      false,        150,    80],    //30
        ["U_C_HunterBody_grn",                  wgqnoo,         2,      false,        150,    80],    //30

        ["U_B_FullGhillie_lsh",                 wgqnoo,         2,      false,        1000,   500],   //80
        ["U_B_FullGhillie_sard",                wgqnoo,         2,      false,        1000,   500],   //80
        ["U_B_FullGhillie_ard",                 wgqnoo,         2,      false,        1000,   500],   //80
        ["U_O_FullGhillie_lsh",                 wgqnoo,         2,      false,        1000,   500],   //80
        ["U_O_FullGhillie_sard",                wgqnoo,         2,      false,        1000,   500],   //80
        ["U_O_FullGhillie_ard",                 wgqnoo,         2,      false,        1000,   500],   //80
        ["U_I_FullGhillie_lsh",                 wgqnoo,         2,      false,        1000,   500],   //80
        ["U_I_FullGhillie_sard",                wgqnoo,         2,      false,        1000,   500],   //80
        ["U_I_FullGhillie_ard",                 wgqnoo,         2,      false,        1000,   500],   //80

        // ==================================== ðÓþÒ­¾þÛÓ ===========================================================================
        ["V_Rangemaster_belt",                  wguxuq,         25,     false,        200,    100],   //40    1
        ["V_BandollierB_khk",                   wguxuq,         5,      false,        300,    150],   //60    1
        ["V_BandollierB_cbr",                   wguxuq,         5,      false,        300,    150],   //60    1
        ["V_BandollierB_rgr",                   wguxuq,         5,      false,        300,    150],   //60    1
        ["V_BandollierB_blk",                   wguxuq,         5,      false,        300,    150],   //60    1
        ["V_BandollierB_oli",                   wguxuq,         5,      false,        300,    150],   //60    1
        ["V_Chestrig_khk",                      wguxuq,         5,      false,        400,    200],   //100   1
        ["V_Chestrig_rgr",                      wguxuq,         5,      false,        400,    200],   //100   1
        ["V_Chestrig_blk",                      wguxuq,         5,      false,        400,    200],   //100   1
        ["V_Chestrig_oli",                      wguxuq,         5,      false,        400,    200],   //100   1
        ["V_TacVest_khk",                       wguxuq,         5,      false,        500,    250],   //100   3
        ["V_TacVest_brn",                       wguxuq,         5,      false,        500,    250],   //100   3
        ["V_TacVest_oli",                       wguxuq,         5,      false,        500,    250],   //100   3
        ["V_TacVest_blk",                       wguxuq,         5,      false,        500,    250],   //100   3
        ["V_TacVest_camo",                      wguxuq,         5,      false,        500,    250],   //100   3
        ["V_TacVest_blk_POLICE",                wguxuq,         5,      false,        500,    250],   //100   3
        ["V_TacVestIR_blk",                     wguxuq,         5,      false,        500,    250],   //100   3
        ["V_TacVestCamo_khk",                   wguxuq,         5,      false,        500,    250],   //100   3
        ["V_PlateCarrierIA1_dgtl",              wguxuq,         5,      false,        600,    350],   //100   4
        ["V_PlateCarrier1_blk",                 wguxuq,         5,      false,        600,    350],   //100   4
        ["V_PlateCarrier1_rgr",                 wguxuq,         5,      false,        600,    350],   //100   4
        ["V_PlateCarrier2_rgr",                 wguxuq,         5,      false,        600,    350],   //100   4
        ["V_PlateCarrierL_CTRG",                wguxuq,         5,      false,        600,    350],   //120   4
        ["V_PlateCarrierH_CTRG",                wguxuq,         5,      false,        600,    350],   //120   5

        ["V_HarnessO_brn",                      wguxuq,         5,      false,        600,    350],   //120   2
        ["V_HarnessOGL_brn",                    wguxuq,         5,      false,        600,    350],   //120   2
        ["V_PlateCarrierIA2_dgtl",              wguxuq,         5,      false,        800,    450],   //120   4
        [["V_RebreatherIA", "V_RebreatherB", "V_RebreatherIR"], wguxuq, 40,false,          500,    250],   //0     3

        ["V_PlateCarrierGL_rgr",                wguxuq,         1,      false,        1000,   600],   //140   100
        ["V_PlateCarrierGL_blk",                wguxuq,         1,      false,        1000,   600],   //140   100
        ["V_PlateCarrierGL_mtp",                wguxuq,         1,      false,        1000,   600],   //140   100
        ["V_PlateCarrierSpec_rgr",              wguxuq,         1,      false,        600,    300],   //100   40
        ["V_PlateCarrierSpec_blk",              wguxuq,         1,      false,        600,    300],   //100   40
        ["V_PlateCarrierSpec_mtp",              wguxuq,         1,      false,        600,    300],   //100   40
        ["V_PlateCarrierIAGL_oli",              wguxuq,         1,      false,        1000,   600],   //120   100

        // ==================================== ð■ÛþÓÛÞ ===========================================================================

        [["B_UAV_01_backpack_F","O_UAV_01_backpack_F", "I_UAV_01_backpack_F"],wgk121, (if(settings_noUAVinGunStore)then{0}else{-1}),  false,  1600,   800],
//0
        ["B_AssaultPack_Base",                  wgk121,         5,      false,        600,    300],   //160
        ["B_AssaultPack_dgtl",                  wgk121,         5,      false,        600,    300],   //160
        ["B_AssaultPack_rgr",                   wgk121,         5,      false,        600,    300],   //160
        ["B_AssaultPack_sgg",                   wgk121,         5,      false,        600,    300],   //160
        ["B_AssaultPack_blk",                   wgk121,         5,      false,        600,    300],   //160
        ["B_AssaultPack_cbr",                   wgk121,         5,      false,        600,    300],   //160
        ["B_AssaultPack_mcamo",                 wgk121,         5,      false,        600,    300],   //160
        ["B_AssaultPack_Kerry",                 wgk121,         5,      false,        600,    300],   //160
        ["B_TacticalPack_ocamo",                wgk121,         5,      false,        600,    300],   //160
        ["B_TacticalPack_oli",                  wgk121,         5,      false,        600,    300],   //160
        ["B_Kitbag_Base",                       wgk121,         5,      false,        700,    400],   //200
        ["B_Kitbag_mcamo",                      wgk121,         5,      false,        700,    400],   //200
        ["B_Kitbag_sgg",                        wgk121,         5,      false,        700,    400],   //200
        ["B_Kitbag_cbr",                        wgk121,         5,      false,        700,    400],   //200
        ["B_FieldPack_Base",                    wgk121,         5,      false,        800,    500],   //240
        ["B_FieldPack_blk",                     wgk121,         5,      false,        800,    500],   //240
        ["B_FieldPack_ocamo",                   wgk121,         5,      false,        800,    500],   //240
        ["B_FieldPack_oucamo",                  wgk121,         5,      false,        800,    500],   //240
        ["B_FieldPack_khk",                     wgk121,         5,      false,        800,    500],   //240
        ["B_FieldPack_oli",                     wgk121,         5,      false,        800,    500],   //240
        ["B_Bergen_Base",                       wgk121,         5,      false,        900,    600],   //280
        ["B_Bergen_mcamo",                      wgk121,         5,      false,        900,    600],   //280
        ["B_Bergen_rgr",                        wgk121,         5,      false,        900,    600],   //280
        ["B_Bergen_blk",                        wgk121,         5,      false,        900,    600],   //280
        ["B_Carryall_Base",                     wgk121,         5,      false,        1200,   700],   //320
        ["B_Carryall_ocamo",                    wgk121,         5,      false,        1200,   700],   //320
        ["B_Carryall_oucamo",                   wgk121,         5,      false,        1200,   700],   //320
        ["B_Carryall_mcamo",                    wgk121,         5,      false,        1200,   700],   //320
        ["B_Carryall_oli",                      wgk121,         5,      false,        1200,   700],   //320
        ["B_Carryall_cbr",                      wgk121,         5,      false,        1200,   700],   //320
        ["B_Parachute",                         wgk121,         0,      false,        250,    100],   //0

        ["H_Booniehat_khk",                     wgiyks,         5,      false,        100,    25],    //0
        ["H_Booniehat_indp",                    wgiyks,         5,      false,        100,    25],    //0
        ["H_Booniehat_mcamo",                   wgiyks,         5,      false,        100,    25],    //0
        ["H_Booniehat_tan",                     wgiyks,         5,      false,        100,    25],    //0
        ["H_Booniehat_khk_hs",                  wgiyks,         5,      false,        150,    50],    //0
        ["H_Cap_red",                           wgiyks,         5,      false,        100,    25],    //0
        ["H_Cap_blu",                           wgiyks,         5,      false,        100,    25],    //0
        ["H_Cap_oli",                           wgiyks,         5,      false,        100,    25],    //0
        ["H_Cap_headphones",                    wgiyks,         5,      false,        150,    50],    //0
        ["H_Cap_tan",                           wgiyks,         5,      false,        100,    25],    //0
        ["H_Cap_blk",                           wgiyks,         5,      false,        100,    25],    //0
        ["H_Cap_blk_CMMG",                      wgiyks,         5,      false,        100,    25],    //0
        ["H_Cap_brn_SPECOPS",                   wgiyks,         5,      false,        100,    25],    //0
        ["H_Cap_tan_specops_US",                wgiyks,         5,      false,        150,    50],    //0
        ["H_Cap_khaki_specops_UK",              wgiyks,         5,      false,        150,    50],    //0
        ["H_Cap_grn",                           wgiyks,         5,      false,        100,    25],    //0
        ["H_Cap_grn_BI",                        wgiyks,         5,      false,        100,    25],    //0
        ["H_Cap_blk_Raven",                     wgiyks,         5,      false,        100,    25],    //0
        ["H_Cap_blk_ION",                       wgiyks,         5,      false,        100,    25],    //0
        ["H_Cap_oli_hs",                        wgiyks,         5,      false,        100,    25],    //0
        ["H_Cap_press",                         wgiyks,         5,      false,        100,    25],    //0
        ["H_MilCap_ocamo",                      wgiyks,         5,      false,        150,    50],    //0
        ["H_MilCap_mcamo",                      wgiyks,         5,      false,        150,    50],    //0
        ["H_MilCap_oucamo",                     wgiyks,         5,      false,        150,    50],    //0
        ["H_MilCap_gry",                        wgiyks,         5,      false,        150,    50],    //0
        ["H_MilCap_dgtl",                       wgiyks,         5,      false,        150,    50],    //0
        ["H_MilCap_blue",                       wgiyks,         5,      false,        150,    50],    //0
        ["H_BandMask_blk",                      wgiyks,         5,      false,        100,    25],    //0
        ["H_BandMask_khk",                      wgiyks,         5,      false,        100,    25],    //0
        ["H_Bandanna_surfer",                   wgiyks,         5,      false,        100,    25],    //0
        ["H_Bandanna_khk",                      wgiyks,         5,      false,        100,    25],    //0
        ["H_Bandanna_khk_hs",                   wgiyks,         5,      false,        100,    25],    //0
        ["H_Bandanna_cbr",                      wgiyks,         5,      false,        100,    25],    //0
        ["H_Bandanna_sgg",                      wgiyks,         5,      false,        100,    25],    //0
        ["H_Bandanna_gry",                      wgiyks,         5,      false,        100,    25],    //0
        ["H_Bandanna_camo",                     wgiyks,         5,      false,        100,    25],    //0
        ["H_Bandanna_mcamo",                    wgiyks,         5,      false,        100,    25],    //0
        ["H_Shemag_khk",                        wgiyks,         5,      false,        100,    25],    //0
        ["H_Shemag_olive",                      wgiyks,         5,      false,        100,    25],    //0
        ["H_Shemag_olive_hs",                   wgiyks,         5,      false,        150,    50],    //0
        ["H_ShemagOpen_khk",                    wgiyks,         5,      false,        100,    25],    //0
        ["H_ShemagOpen_tan",                    wgiyks,         5,      false,        100,    25],    //0
        ["H_Beret_blk",                         wgiyks,         5,      false,        150,    50],    //0
        ["H_Beret_ocamo",                       wgiyks,         5,      false,        150,    50],    //0
        ["H_Beret_02",                          wgiyks,         5,      false,        150,    50],    //0
        ["H_Beret_Colonel",                     wgiyks,         5,      false,        150,    50],    //0
        ["H_Watchcap_blk",                      wgiyks,         5,      false,        150,    50],    //0
        ["H_Watchcap_khk",                      wgiyks,         5,      false,        150,    50],    //0
        ["H_Watchcap_camo",                     wgiyks,         5,      false,        150,    50],    //0
        ["H_Watchcap_sgg",                      wgiyks,         5,      false,        150,    50],    //0
        ["H_TurbanO_blk",                       wgiyks,         5,      false,        100,    25],    //0
        ["H_StrawHat",                          wgiyks,         5,      false,        100,    25],    //0
        ["H_StrawHat_dark",                     wgiyks,         5,      false,        100,    25],    //0
        ["H_Hat_blue",                          wgiyks,         5,      false,        100,    25],    //0
        ["H_Hat_brown",                         wgiyks,         5,      false,        100,    25],    //0
        ["H_Hat_camo",                          wgiyks,         5,      false,        100,    25],    //0
        ["H_Hat_grey",                          wgiyks,         5,      false,        100,    25],    //0
        ["H_Hat_checker",                       wgiyks,         5,      false,        100,    25],    //0
        ["H_Hat_tan",                           wgiyks,         5,      false,        100,    25],    //0
        ["H_Cap_marshal",                       wgiyks,         5,      false,        100,    25],    //0
        ["H_Booniehat_oli",                     wgiyks,         5,      false,        100,    25],    //0
        ["H_Bandanna_blu",                      wgiyks,         5,      false,        100,    25],    //0
        ["H_Bandanna_sand",                     wgiyks,         5,      false,        100,    25],    //0
        ["H_Bandanna_surfer_blk",               wgiyks,         5,      false,        100,    25],    //0
        ["H_Bandanna_surfer_grn",               wgiyks,         5,      false,        100,    25],    //0
        ["H_Watchcap_cbr",                      wgiyks,         5,      false,        100,    25],    //0
        ["H_Cap_usblack",                       wgiyks,         5,      false,        100,    25],    //0
        ["H_Cap_surfer",                        wgiyks,         5,      false,        100,    25],    //0
        ["H_Cap_police",                        wgiyks,         5,      false,        100,    25],    //0

        ["H_HelmetB_camo",                      wgsdkb,         5,      false,        500,    250],   //4
        ["H_HelmetB_paint",                     wgsdkb,         5,      false,        500,    250],   //4
        ["H_HelmetB_light",                     wgsdkb,         5,      false,        400,    200],   //3
        ["H_HelmetB_plain_mcamo",               wgsdkb,         5,      false,        500,    250],   //4
        ["H_HelmetB_plain_blk",                 wgsdkb,         5,      false,        500,    250],   //4
        ["H_HelmetSpecB",                       wgsdkb,         5,      false,        600,    300],   //5
        ["H_HelmetSpecB_paint1",                wgsdkb,         5,      false,        600,    300],   //5
        ["H_HelmetSpecB_paint2",                wgsdkb,         5,      false,        600,    300],   //5
        ["H_HelmetSpecB_blk",                   wgsdkb,         5,      false,        600,    300],   //5
        ["H_HelmetIA",                          wgsdkb,         5,      false,        500,    250],   //4
        ["H_Helmet_Kerry",                      wgsdkb,         5,      false,        500,    250],   //4
        ["H_HelmetB_grass",                     wgsdkb,         5,      false,        500,    250],   //4
        ["H_HelmetB_desert",                    wgsdkb,         5,      false,        500,    250],   //4
        ["H_HelmetB_sand",                      wgsdkb,         5,      false,        500,    250],   //4
        ["H_HelmetCrew_B",                      wgsdkb,         5,      false,        500,    250],   //4
        ["H_HelmetCrew_O",                      wgsdkb,         5,      false,        500,    250],   //4
        ["H_HelmetCrew_I",                      wgsdkb,         5,      false,        500,    250],   //4
        ["H_PilotHelmetFighter_B",              wgsdkb,         5,      false,        600,    300],   //5
        ["H_PilotHelmetFighter_O",              wgsdkb,         5,      false,        600,    300],   //5
        ["H_PilotHelmetFighter_I",              wgsdkb,         5,      false,        600,    300],   //5
        ["H_PilotHelmetHeli_B",                 wgsdkb,         5,      false,        400,    200],   //3
        ["H_PilotHelmetHeli_O",                 wgsdkb,         5,      false,        400,    200],   //3
        ["H_PilotHelmetHeli_I",                 wgsdkb,         5,      false,        400,    200],   //3
        ["H_CrewHelmetHeli_B",                  wgsdkb,         5,      false,        400,    200],   //3
        ["H_CrewHelmetHeli_O",                  wgsdkb,         5,      false,        400,    200],   //3
        ["H_CrewHelmetHeli_I",                  wgsdkb,         5,      false,        400,    200],   //3
        ["H_HelmetO_ocamo",                     wgsdkb,         5,      false,        600,    300],   //5
        ["H_HelmetLeaderO_ocamo",               wgsdkb,         5,      false,        800,    500],   //6
        ["H_HelmetB_light_grass",               wgsdkb,         5,      false,        400,    200],   //3
        ["H_HelmetB_light_snakeskin",           wgsdkb,         5,      false,        400,    200],   //3
        ["H_HelmetB_light_desert",              wgsdkb,         5,      false,        400,    200],   //3
        ["H_HelmetB_light_black",               wgsdkb,         5,      false,        400,    200],   //3
        ["H_HelmetB_light_sand",                wgsdkb,         5,      false,        400,    200],   //3
        ["H_HelmetO_oucamo",                    wgsdkb,         5,      false,        600,    300],   //5
        ["H_HelmetLeaderO_oucamo",              wgsdkb,         5,      false,        800,    500],   //6
        ["H_HelmetSpecO_ocamo",                 wgsdkb,         5,      false,        500,    250],   //4
        ["H_HelmetSpecO_blk",                   wgsdkb,         5,      false,        500,    250],   //4

        ["muzzle_snds_acp",                     wgx3ei,         2,      false,        200,    80],
        ["muzzle_snds_L",                       wgx3ei,         2,      false,        200,    80],
        ["muzzle_snds_M",                       wgx3ei,         5,      false,        500,    200],
        ["muzzle_snds_H",                       wgx3ei,         5,      false,        500,    200],
        ["muzzle_snds_B",                       wgx3ei,         5,      false,        600,    300],
        ["muzzle_snds_H_MG",                    wgx3ei,         5,      false,        600,    300],

        [["muzzle_snds_93mmg","muzzle_snds_93mmg_tan"],
                                                wgx3ei,         5,      false,        600,    300],
        [["muzzle_snds_338_black","muzzle_snds_338_green","muzzle_snds_338_sand"],
                                                wgx3ei,         5,      false,        600,    300],

        ["optic_Aco",                           wgrnnb,         5,      false,        300,    100],
        ["optic_ACO_grn",                       wgrnnb,         5,      false,        300,    100],
        ["optic_Holosight",                     wgrnnb,         5,      false,        300,    100],
        ["optic_MRCO",                          wgrnnb,         4,      false,        600,    250],
        ["optic_Hamr",                          wgrnnb,         4,      false,        700,    300],
        ["optic_Arco",                          wgrnnb,         4,      false,        700,    300],
        ["optic_SOS",                           wgrnnb,         3,      false,        1000,   500],
        ["optic_LRPS",                          wgrnnb,         1,      false,        2000,   1000],
        ["optic_DMS",                           wgrnnb,         2,      false,        1600,   800],
        ["optic_NVS",                           wgrnnb,         5,      false,        800,    400],
        ["optic_tws",                           wgrnnb,         0,      false,        1600,   800],
        ["optic_tws_mg",                        wgrnnb,         0,      false,        1600,   800],
        ["optic_Nightstalker",                  wgrnnb,         0,      false,        2000,   1200],
        ["optic_MRD",                           wgrnnb,         0,      false,        100,    50],
        ["optic_Yorris",                        wgrnnb,         0,      false,        100,    50],

        [["optic_AMS","optic_AMS_khk","optic_AMS_snd"], wgrnnb, 1,      false,        1600,   800],
        [["optic_KHS_blk","optic_KHS_hex","optic_KHS_tan"], wgrnnb,     1,false,          1500,   700],
        ["optic_KHS_old",                       wgrnnb,         1,      false,        1300,   600],
        ["acc_flashlight",                      wg7m9n,         5,      false,        200,    100],
        ["acc_pointer_IR",                      wg7m9n,         5,      false,        200,    100],
        ["acc_flashlight",                      wg7m9n,         5,      false,        200,    100],
        ["acc_pointer_IR",                      wg7m9n,         5,      false,        200,    100],

        [["bipod_01_F_snd","bipod_01_F_blk","bipod_01_F_mtp","bipod_02_F_blk","bipod_02_F_tan","bipod_02_F_hex","bipod_03_F_blk","bipod_03_F_oli"],wglm9j,         5,      false,          300,    150],

        [["NVGoggles", "NVGoggles_OPFOR", "NVGoggles_INDEP"], wgxpua,-1,     false,          150,    50],
        ["MineDetector",                        wgxpua,         0,      false,        400,    200],
        ["ItemGPS",                             wgxpua,         5,      false,        150,    50],
        ["FirstAidKit",                         wgxpua,         -1,     false,        100,    30],
        [["B_UavTerminal", "O_UavTerminal", "I_UavTerminal"], wgxpua, (if(settings_noUAVinGunStore)then{0}else{-1}),    false,          500,    300],

        ["Land_Suitcase_F",                     wgpmr6,         -1,     false,        200,    100],
        ["Land_CanisterFuel_F",                 wgpmr6,         -1,     false,        200,    100],
        ["Land_Ammobox_rounds_F",               wgpmr6,         0,      false,        1000,   500],
        ["Land_DieselGroundPowerUnit_01_F",     wgpmr6,         -1,     false,        9999,   5555],
        ["Snake_random_F",                      wgpmr6,         0,      false,        100,    100],
        ["Rabbit_F",                            wgpmr6,         0,      false,        200,    200]
];

_0k = configFile >> "CfgGlasses";
for "_i" from 0 to count(_0k) - 1 do {
        _0l = configName(_0k select _i);
        if!(_0l in ["", "None"]) then {
                database_gunStore_miscList set [count database_gunStore_miscList, [_0l, wgud5d, 1, false, 100, 50]];
        };
};

//      Group                   Count   Chance
database_gunStore_miscScheme = [
        [wgqgsr,                1,      90],
        [wgxpua,                4,      70],
        [wgk121,                4,      60],
        [wgqnoo,                5,      60],
        [wguxuq,                3,      60],
        [wgiyks,                5,      80],
        [wgsdkb,                3,      60],
        [wgud5d,                5,      50],
        [wgrnnb,                4,      50],
        [wgx3ei,                2,      60],
        [wg7m9n,                1,      80],
        [wglm9j,                1,      80],
        [wga9d5,                1,      100],
        [wg21ap,                3,      60],
        [wgwydd,        2,      60],
        [wgjbql,        2,      60],
        [wgpmr6,                3,      100]
];

/*database_gunStore_miscScheme = [
        [wgqgsr,                1,      90],
        [wgxpua,                3,      70],
        [wgrnnb,                2,      90],
        [wgx3ei,                1,      50],
        [wg7m9n,                1,      90],
        [wga9d5,                1,      100],
        [wg21ap,                2,      60],
        [wgwydd,        3,      60],
        [wgjbql,        3,      60],
        [wgqnoo,                3,      60],
        [wguxuq,                3,      60],
        [wgk121,                3,      60],
        [wgiyks,                2,      80],
        [wgsdkb,                2,      50],
        [wgpmr6,                3,      100]
];*/

database_gunStore_sellerAnimations = [
        ["passenger_flatground_leanleft",       [4.66244,-1.90741,0.398409],340,    0.11],
        ["passenger_flatground_leanright",      [4.66244,-1.90741,0.398409],340,    0.11],
        //["AmovPsitMstpSnonWnonDnon_smoking",  [4.73489,-2.21476,0.398407],340,    0.11],
        ["passenger_flatground_crosslegs",      [4.90131,-2.32155,0.398409],340,    0.11],
        ["passenger_generic01_foldhands",       [4.65843,-1.62178,0.328407],270,    0.04],
        ["passenger_generic01_leanleft",        [4.65843,-1.62178,0.328407],270,    0.04],
        ["passenger_generic01_leanright",       [4.65843,-1.62178,0.328407],270,    0.04]
];

database_gunStore_sellerUniforms = [
        "U_NikosBody",
        "U_NikosBody",
        "U_NikosBody",
        "U_NikosBody",
        "U_OrestesBody",
        "U_OrestesBody",
        "U_OrestesBody",
        "U_C_Poloshirt_blue",
        "U_C_Poloshirt_burgundy",
        "U_C_Poloshirt_stripped",
        "U_C_Poloshirt_tricolour",
        "U_C_Poloshirt_salmon",
        "U_C_Poloshirt_redwhite",
        "U_Marshal",
        "U_Marshal",
        "U_Marshal",
        "U_Marshal",
        "U_Marshal",
        "U_NikosAgedBody",
        "U_NikosAgedBody"
];

database_gunStore_sellerHats = [
//      "H_Cap_surfer",
        "H_Cap_tan",
        "H_Cap_grn_BI",
        "H_Cap_grn_BI",
        "H_Cap_grn_BI",
        "H_Booniehat_ocamo",
        "H_Cap_red",
        "H_Bandanna_surfer",
        "H_Bandanna_surfer_blk",
        "H_Bandanna_surfer_grn",
        "H_Bandanna_blu",
        "H_Hat_blue",
        "H_Hat_checker",
        "H_Cap_press",
        "H_Cap_police",
        "H_BandMask_blk",
//      "H_Cap_brn_SERO",
        "H_Cap_blu"
];