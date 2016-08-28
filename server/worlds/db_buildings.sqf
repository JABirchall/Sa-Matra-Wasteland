/*
        ArmA 3 Wasteland
        Code written by Sa-Matra
        Using this code without Sa-Matra's direct permission is forbidden
*/

database_buildings_invincibleList = [
        //"Lamps_base_F",
        "Land_fs_feed_F",
        "Land_FuelStation_Feed_F",
        "Land_TTowerBig_1_F",
        "Land_TTowerBig_2_F"
];

database_buildings_enableSimulationList = [
        "Land_FuelStation_Feed_F"
];

database_buildings_lampsList = [
        "Lamps_base_F"
];

database_buildings_markersList = [
        ["Land_i_Barracks_V1_F",                [0.7,0.7]],
        ["Land_i_Shop_01_V1_F",                 [0.8,0.6]],
        ["Land_i_Shop_02_V1_F",                 [0.8,0.6]],
        ["Land_i_House_Big_02_V1_F",            [0.8,0.6]],
        ["Land_cargo_addon01_V1_F",             [1,1]],
        ["Land_cargo_addon01_V2_F",             [1,1]],
        ["Land_cargo_addon02_V2_F",             [1,1]],
        ["Wall",                                [1,1]],
        ["House",                               [0.8,0.8]]
];

database_buildings_markersExcludeList = [
        "Land_FuelStation_Sign_F",
        "Land_Canal_Wall_10m_F",
        "Land_Canal_Wall_Stairs_F",
        "Land_Canal_WallSmall_10m_F",
        "Piers_base_F",
        "Garbage_base_F",
        "Lamps_base_F"
];

database_buildings_removeList = [
        "Cargo_House_base_F",
        "Cargo_HQ_base_F",
        "Cargo_Patrol_base_F",
        "Cargo_Tower_base_F",
        "Land_Research_house_V1_F",
        "Land_Research_HQ_F",
        "Land_Mil_WallBig_4m_F",
        "Land_Mil_WallBig_Corner_F",
        "HBarrier_base_F",
        "Land_CncBarrier_F"
];

database_buildings_carSpawnRate = 7;
database_buildings_carSpawnRates = [
        ["Land_TentHangar_V1_F", 4],
        ["Land_Hangar_F", 4]
];
database_buildings_objSpawnRate = 0.3;
database_buildings_objSpawnRates = [
        ["Land_Hangar_F", 2],
        ["Land_TentHangar_V1_F", 2],
        ["Land_Dome_Big_F", 2],
        ["Land_Dome_Small_F", 2]
];
database_buildings_hangarsList = [
        "Land_TentHangar_V1_F",
        "Land_Hangar_F",
        "Land_Ss_hangar"
];
database_buildings_militaryList = [
        "Land_MilOffices_V1_F",
        "Land_Radar_F",
        "Land_Radar_Small_F",
        "Land_TentHangar_V1_F",
        "Land_Hangar_F",
        "Land_Bunker_F",
        "Land_i_Barracks_V1_F",
        "Land_Airport_Tower_F",
        "Land_dp_mainFactory_F",
        "Land_dp_bigTank_F",
        "Land_dp_smallFactory_F",
        "Land_dp_smallTank_F",
        "Land_TTowerBig_1_F",
        "Land_TTowerBig_2_F",
        "Land_Dome_Big_F",
        "Land_Dome_Small_F",
        "Land_spp_Tower_F",
        "Land_wpp_Turbine_V1_F",
        "Land_wpp_Turbine_V2_F",
        "Land_Airport_center_F",
        "Land_ReservoirTank_V1_F"
];

database_buildings_objRareList = [
        ["Land_Cargo_House_V1_F",       0],
        ["Land_Cargo_House_V2_F",       1],
        ["Land_Cargo_HQ_V1_F",          0],
        ["Land_Cargo_HQ_V2_F",          1],
        ["Land_Cargo_Patrol_V1_F",      0],
        ["Land_Cargo_Patrol_V2_F",      1],
        [["Land_Cargo_Tower_V1_F","Land_Cargo_Tower_V1_No1_F","Land_Cargo_Tower_
V1_No2_F","Land_Cargo_Tower_V1_No3_F","Land_Cargo_Tower_V1_No4_F","Land_Cargo_To
wer_V1_No5_F","Land_Cargo_Tower_V1_No6_F","Land_Cargo_Tower_V1_No7_F","Land_Carg
o_Tower_V2_F","Land_Cargo_Tower_V3_F"], 1]
];

database_buildings_objSpawnList = [
        ["Land_HBarrier_1_F",           3],
        ["Land_HBarrier_3_F",           10],
        ["Land_HBarrier_5_F",           15],
        ["Land_HBarrierBig_F",          15],
        ["Land_HBarrierTower_F",        1],
        ["Land_CncBarrier_F",           3],
        ["Land_Obstacle_Saddle_F",      1],
        ["Land_Canal_WallSmall_10m_F",  10],
        ["Land_Canal_Wall_10m_F",       10],
        ["Land_Canal_Wall_Stairs_F",    1],
        ["Land_PierLadder_F",           1],
        ["Land_ConcretePipe_F",         1],
        ["Land_Scaffolding_F",          2],
        ["Land_Concrete_SmallWall_8m_F",5],
//      ["Land_Concrete_SmallWall_4m_F",5],
        ["Land_GH_Stairs_F",            3],
        ["Land_GH_Platform_F",          3],

//      ["Land_Mil_WallBig_4m_F",       10],
        ["Land_Mil_WiredFence_F",       3],
        //["Land_Stone_4m_F",           4],
        //["Land_Stone_8m_F",           5],

        ["Land_BagBunker_Tower_F",      1],
        ["Land_BagBunker_Large_F",      1],
        //["Land_Razorwire_F",          3],
        ["Land_Obstacle_Climb_F",       1],
        //["Land_Obstacle_Bridge_F",    1],
        ["Land_Obstacle_Ramp_F",        1],
        //["Land_CncBarrier_F",         3],
        ["Land_Obstacle_Saddle_F",      1],
        ["Land_BagBunker_Small_F",      1],
//      ["Land_Rampart_F",              1],
        ["Land_CncShelter_F",           1],
        ["Dirthump_1_F",                1],
        ["Dirthump_2_F",                1],
        ["Dirthump_3_F",                1],
        //["Dirthump_4_F",              1],
        ["BlockConcrete_F",             5],
        ["Land_RampConcrete_F",         1],
        ["Land_RampConcreteHigh_F",     1],

        ["Land_BagFence_Corner_F",      0],
        ["Land_BagFence_End_F",         0],
        ["Land_BagFence_Long_F",        10],
        ["Land_BagFence_Round_F",       5],
        ["Land_BagFence_Short_F",       1],

        ["Land_CncBarrierMedium_F",     1],
        ["Land_CncBarrierMedium4_F",    10],
        ["Land_CncWall1_F",             1],
        ["Land_CncWall4_F",             25],
        ["Land_Mil_ConcreteWall_F",     1],

        ["Land_Shoot_House_Wall_F",             3],
        ["Land_Shoot_House_Wall_Stand_F",       1],
        ["Land_Shoot_House_Wall_Crouch_F",      1],
        ["Land_Shoot_House_Wall_Prone_F",       0],
        ["Land_Shoot_House_Wall_Long_F",        5],
        ["Land_Shoot_House_Wall_Long_Stand_F",  1],
        ["Land_Shoot_House_Wall_Long_Crouch_F", 1],
        ["Land_Shoot_House_Wall_Long_Prone_F",  0],
        ["Land_Shoot_House_Corner_F",           1],
        ["Land_Shoot_House_Corner_Stand_F",     1],
        ["Land_Shoot_House_Corner_Crouch_F",    0],
        ["Land_Shoot_House_Corner_Prone_F",     0],
//      ["Land_Shoot_House_Door_F",             1],
//      ["Land_Shoot_House_Window_F",           1],
        ["Land_Shoot_House_Panels_F",           1],
        ["Land_Shoot_House_Panels_Crouch_F",    0],
        ["Land_Shoot_House_Panels_Prone_F",     0],
        ["Land_Shoot_House_Panels_Vault_F",     0],
        ["Land_Shoot_House_Panels_Window_F",    0],
        ["Land_Shoot_House_Panels_Windows_F",   0],
        ["Land_Shoot_House_Tunnel_F",           1],
        ["Land_Shoot_House_Tunnel_Stand_F",     1],
        ["Land_Shoot_House_Tunnel_Crouch_F",    0],
        ["Land_Shoot_House_Tunnel_Prone_F",     0],
        ["Land_Shoot_House_Leaning_F",          0],
        ["Land_Shoot_House_Leaning_Full_F",     0],
        ["Land_Shoot_House_Leaning_Stand_F",    1],
        ["Land_Shoot_House_Leaning_Crouch_F",   0],
        ["Land_Shoot_House_Leaning_Prone_F",    0],

        // ═¯Ô¯Õ
        ["Land_cargo_addon02_V1_F",     1],
        ["Land_cargo_addon01_V2_F",     1],
        ["Land_TouristShelter_01_F",    1],
        ["Land_cargo_house_slum_F",     1],
        ["Land_LifeguardTower_01_F",    1]
];

database_buildings_objLootNormalList = [
        [wgnxch,                10],
        [wgv226,                10],
        [wggt31,        35],
        [wg3xlz,                35],
        [wgnggq,                1],
        [wgof2t,        10],
        [wgcv7o,                1],
        [wg371c,        0]
];

database_buildings_objLootMilitaryList = [
        [wgnxch,                1],
        [wgv226,                1],
        [wggt31,        10],
        [wg3xlz,                10],
        [wgnggq,                5],
        [wgof2t,        10],
        [wgcv7o,                1],
        [wg371c,        2]
];