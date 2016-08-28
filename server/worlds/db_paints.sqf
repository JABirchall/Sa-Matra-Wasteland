/*
        ArmA 3 Wasteland
        Code written by Sa-Matra
        Using this code without Sa-Matra's direct permission is forbidden
*/

// ============== GENERAL ===============
#define GENERAL_COL_BLACK               "#(argb,8,8,3)color(0,0,0,1)"

// ============== OFFROAD ===============
#define OFFROAD_COL_RED                 "\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa"
#define OFFROAD_COL_CREAM               "\A3\soft_F\Offroad_01\Data\Offroad_01_ext_BASE01_CO.paa"
#define OFFROAD_COL_WHITE               "\A3\soft_F\Offroad_01\Data\Offroad_01_ext_BASE02_CO.paa"
#define OFFROAD_COL_BLUE                "\A3\soft_F\Offroad_01\Data\Offroad_01_ext_BASE03_CO.paa"
#define OFFROAD_COL_DARKRED             "\A3\soft_F\Offroad_01\Data\Offroad_01_ext_BASE04_CO.paa"
#define OFFROAD_COL_GRAPHIC             "\A3\soft_F\Offroad_01\Data\Offroad_01_ext_BASE05_CO.paa"
#define OFFROAD_COL_BLACK               "#(argb,8,8,3)color(0,0,0,1)"
#define OFFROAD_COL_GREY                "#(argb,8,8,3)color(0.1,0.1,0.1,1)"
#define OFFROAD_COL_DARKBLUE            "#(argb,8,8,3)color(0.001,0.001,0.05,1)"

#define OFFROAD_COL_DARKGREEN           "#(argb,8,8,3)color(0.001,0.05,0.001,1)"

#define OFFROAD_COL_PURPLE              "#(argb,8,8,3)color(0.1,0,0.1,1)"

#define OFFROAD_ACC_POLICE              ["HidePolice", 0]
#define OFFROAD_ACC_METALBUMPER         ["HideBumper1", 0]
#define OFFROAD_ACC_FRONTPIPES          ["HideBumper2", 0]
#define OFFROAD_ACC_BACKPIPES           ["HideConstruction", 0]
#define OFFROAD_ACC_NOMETALBUMPER       ["HideBumper1", 1]
#define OFFROAD_ACC_NOFRONTPIPES        ["HideBumper2", 1]
#define OFFROAD_ACC_NOBACKPACKS         ["HideBackpacks", 1]
#define OFFROAD_ACC_NODRIVERDOOR        ["HideDoor1", 1]
#define OFFROAD_ACC_NORIGHTDOOR         ["HideDoor2", 1], ["HideGlass2", 1]
#define OFFROAD_ACC_NOBACKDOOR          ["HideDoor3", 1]

#define OFFROAD_FIXBACKDOOR             ["HideDoor3", 0]
#define OFFROAD_FIXDRIVERDOOR           ["HideDoor1", 0]
#define OFFROAD_FIXRIGHTDOOR            ["HideDoor2", 0], ["HideGlass2", 0]

// ============== QUADBIKE ===============
#define QUAD_COL0_BLACK                 "\A3\Soft_F\Quadbike_01\Data\Quadbike_01_CIV_BLACK_CO.paa"
#define QUAD_COL0_BLUE                  "\A3\Soft_F\Quadbike_01\Data\Quadbike_01_CIV_BLUE_CO.paa"
#define QUAD_COL0_RED                   "\A3\Soft_F\Quadbike_01\Data\Quadbike_01_CIV_RED_CO.paa"
#define QUAD_COL0_WHITE                 "\A3\Soft_F\Quadbike_01\Data\Quadbike_01_CIV_WHITE_CO.paa"
#define QUAD_COL0_INDEP                 "\A3\Soft_F\Quadbike_01\Data\quadbike_01_indp_co.paa"
#define QUAD_COL0_HUNTER                "\A3\Soft_F\Quadbike_01\Data\quadbike_01_indp_hunter_co.paa"

#define QUAD_COL1_BLACK                 "\A3\Soft_F\Quadbike_01\Data\Quadbike_01_wheel_CIVBLACK_CO.paa"
#define QUAD_COL1_BLUE                  "\A3\Soft_F\Quadbike_01\Data\Quadbike_01_wheel_CIVBLUE_CO.paa"
#define QUAD_COL1_RED                   "\A3\Soft_F\Quadbike_01\Data\Quadbike_01_wheel_CIVRED_CO.paa"
#define QUAD_COL1_WHITE                 "\A3\Soft_F\Quadbike_01\Data\Quadbike_01_wheel_CIVWHITE_CO.paa"
#define QUAD_COL1_INDEP                 "\A3\Soft_F\Quadbike_01\Data\quadbike_01_wheel_indp_co.paa"
#define QUAD_COL1_HUNTER                "\A3\Soft_F\Quadbike_01\Data\quadbike_01_wheel_indp_hunter_co.paa"

// ============= KAMAZ ================
#define KAMAZ_COL0_GREY                 "#(argb,8,8,3)color(0.5,0.5,0.5,0.05)"
#define KAMAZ_COL0_CIVRED               "\A3\soft_f_beta\Truck_02\Data\Truck_02_kab_co.paa"
#define KAMAZ_COL0_CIVBLUE              "i\kamaz_blue.paa"
#define KAMAZ_COL0_INDEP                "\A3\soft_f_beta\Truck_02\Data\Truck_02_kab_indp_co.paa"

#define KAMAZ_COL1_GREY                 "#(argb,8,8,3)color(0.5,0.5,0.5,0.1)"
#define KAMAZ_COL1_CIVBLUE              "\A3\soft_f_beta\Truck_02\Data\Truck_02_kuz_co.paa"
#define KAMAZ_COL1_CIVREPAIR            "\A3\soft_f_beta\Truck_02\Data\Truck_02_repair_co.paa"
#define KAMAZ_COL1_CIVFUEL              "\A3\soft_f_beta\Truck_02\Data\Truck_02_fuel_co.paa"
#define KAMAZ_COL1_INDEP                "\A3\soft_f_beta\Truck_02\Data\Truck_02_kuz_indp_co.paa"
#define KAMAZ_COL1_INDEPREPAIR          "\A3\soft_f_beta\Truck_02\Data\Truck_02_repair_indp_co.paa"
#define KAMAZ_COL1_INDEPFUEL            "\A3\soft_f_beta\Truck_02\Data\Truck_02_fuel_indp_co.paa"

// ============= KA-60 ================
#define KA60_COL0_CIV                   "A3\Air_F\Heli_Light_02\Data\Heli_Light_02_ext_civilian_CO.paa"
#define KA60_COL0_BLACK                 "A3\Air_F\Heli_Light_02\Data\Heli_Light_02_ext_CO.paa"
#define KA60_COL0_INDEP                 "A3\Air_F\Heli_Light_02\Data\Heli_Light_02_ext_indp_CO.paa"
#define KA60_COL0_OPFOR                 "A3\Air_F\Heli_Light_02\Data\Heli_Light_02_ext_opfor_CO.paa"

// ============= MERLIN ================
#define MERLIN_COL0_DAHOMAN             "A3\Air_F_Beta\Heli_Transport_02\Data\Skins\heli_transport_02_1_dahoman_co.paa"
#define MERLIN_COL1_DAHOMAN             "A3\Air_F_Beta\Heli_Transport_02\Data\Skins\heli_transport_02_2_dahoman_co.paa"
#define MERLIN_COL2_DAHOMAN             "A3\Air_F_Beta\Heli_Transport_02\Data\Skins\heli_transport_02_3_dahoman_co.paa"
#define MERLIN_COL0_ION                 "A3\Air_F_Beta\Heli_Transport_02\Data\Skins\heli_transport_02_1_ion_co.paa"
#define MERLIN_COL1_ION                 "A3\Air_F_Beta\Heli_Transport_02\Data\Skins\heli_transport_02_2_ion_co.paa"
#define MERLIN_COL2_ION                 "A3\Air_F_Beta\Heli_Transport_02\Data\Skins\heli_transport_02_3_ion_co.paa"

// ============= LITTLEBIRD ===============
#define LITTLEBIRD_COL0_ION             "A3\Air_F\Heli_Light_01\Data\Heli_Light_01_ext_Ion_CO.paa"
#define LITTLEBIRD_COL0_INDEP           "A3\Air_F\Heli_Light_01\Data\Heli_Light_01_ext_Indp_CO.paa"
#define LITTLEBIRD_COL0_DIGITAL         "A3\Air_F\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa"
#define LITTLEBIRD_COL0_BLUE            "A3\Air_F\Heli_Light_01\Data\Heli_Light_01_ext_Blue_CO.paa"
#define LITTLEBIRD_COL0_RED             "A3\Air_F\Heli_Light_01\Data\Heli_Light_01_ext_CO.paa"
#define LITTLEBIRD_COL0_CIV1            "A3\Air_F\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa"
#define LITTLEBIRD_COL0_CIV2            "A3\Air_F\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa"
#define LITTLEBIRD_COL0_CIV3            "A3\Air_F\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa"
#define LITTLEBIRD_COL0_CIV4            "A3\Air_F\Heli_Light_01\Data\Skins\heli_light_01_ext_graywatcher_co.paa"
#define LITTLEBIRD_COL0_CIV5            "A3\Air_F\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa"
#define LITTLEBIRD_COL0_CIV6            "A3\Air_F\Heli_Light_01\Data\Skins\heli_light_01_ext_shadow_co.paa"
#define LITTLEBIRD_COL0_CIV7            "A3\Air_F\Heli_Light_01\Data\Skins\heli_light_01_ext_sheriff_co.paa"
#define LITTLEBIRD_COL0_CIV8            "A3\Air_F\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa"
#define LITTLEBIRD_COL0_CIV9            "A3\Air_F\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa"
#define LITTLEBIRD_COL0_CIV10           "A3\Air_F\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa"
#define LITTLEBIRD_COL0_CIV11           "A3\Air_F\Heli_Light_01\Data\Skins\heli_light_01_ext_wasp_co.paa"
#define LITTLEBIRD_COL0_CIV12           "A3\Air_F\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa"

// ============= VAN ================
#define VAN_COL0_BLACK                  "#(argb,8,8,3)color(0,0,0,1)"

// ============ STRIDER ==============
#define STRIDER_COL0_GREY               "\a3\soft_f_beta\mrap_03\data\mrap_03_ext_co.paa"
#define STRIDER_COL1_GREY               "\a3\data_f\vehicles\turret_co.paa"

database_paints_setsList = [
        [
                "C_Offroad_01_F",
                {5 > random 10},
                [
                        // ============== Police ===============
                        [
                                "Police",       //Name
                                1,              //Chance
                                //Textures
                                [
                                        [5, [0, [OFFROAD_COL_WHITE]], [1, [OFFROAD_COL_WHITE]]],
                                        [5, [0, [OFFROAD_COL_BLUE]], [1, [OFFROAD_COL_BLUE]]],
                                        [1, [0, [OFFROAD_COL_DARKBLUE]], [1, [OFFROAD_COL_WHITE]]]
                                ],
                                //Animations
                                [
                                        [1, [OFFROAD_ACC_POLICE, OFFROAD_FIXBACKDOOR, OFFROAD_ACC_FRONTPIPES, OFFROAD_ACC_BACKPIPES]]
                                ]
                        ],
                        // ============== Pipes ================
                        [
                                "Pipes",        //Name
                                3,              //Chance
                                //Textures
                                [],
                                //Animations
                                [
                                        [1, [OFFROAD_ACC_FRONTPIPES, OFFROAD_ACC_BACKPIPES]]
                                ]
                        ],
                        // ============== Wrecked ================
                        [
                                "Wrecked",      //Name
                                1,              //Chance
                                //Textures
                                [
                                        [
                                                1,
                                                [0, [OFFROAD_COL_WHITE, OFFROAD_COL_GREY, OFFROAD_COL_CREAM, OFFROAD_COL_GRAPHIC]],
                                                [1, [OFFROAD_COL_RED, OFFROAD_COL_CREAM, OFFROAD_COL_WHITE, OFFROAD_COL_BLUE, OFFROAD_COL_DARKRED, OFFROAD_COL_GRAPHIC]]
                                        ]
                                ],
                                //Animations
                                [
                                        [1, [OFFROAD_ACC_NODRIVERDOOR, OFFROAD_ACC_NORIGHTDOOR, OFFROAD_ACC_NOBACKDOOR, OFFROAD_ACC_BACKPIPES, OFFROAD_ACC_METALBUMPER]]
                                ]
                        ],
                        // ============== Extra colors ================
                        [
                                "Colors",       //Name
                                2,              //Chance
                                //Textures
                                [
                                        [
                                                1,
                                                [0, [OFFROAD_COL_DARKBLUE, OFFROAD_COL_DARKGREEN, OFFROAD_COL_PURPLE]],
                                                [1, [OFFROAD_COL_RED, OFFROAD_COL_CREAM, OFFROAD_COL_WHITE, OFFROAD_COL_BLUE, OFFROAD_COL_DARKRED, OFFROAD_COL_GRAPHIC]]
                                        ]
                                ],
                                //Animations
                                [
                                        [1, [OFFROAD_FIXBACKDOOR]]
                                ]
                        ]
                ]
        ],
        [
                "Offroad_01_armed_base_F",
                {true},
                [
                        // ============== Stock ===============
                        [
                                "Stock",        //Name
                                10,             //Chance
                                //Textures
                                [],
                                //Animations
                                [
                                        [10, [OFFROAD_ACC_NOBACKPACKS]],
                                        [1, [OFFROAD_ACC_NOBACKPACKS, OFFROAD_FIXBACKDOOR, OFFROAD_FIXDRIVERDOOR, OFFROAD_FIXRIGHTDOOR]]
                                ]
                        ],
                        // ============== Wrecked ================
                        [
                                "Wrecked",      //Name
                                1,              //Chance
                                //Textures
                                [
                                        [
                                                1,
                                                [0, [OFFROAD_COL_WHITE, OFFROAD_COL_GREY, OFFROAD_COL_CREAM, OFFROAD_COL_GRAPHIC]],
                                                [1, [OFFROAD_COL_RED, OFFROAD_COL_CREAM, OFFROAD_COL_WHITE, OFFROAD_COL_BLUE, OFFROAD_COL_DARKRED, OFFROAD_COL_GRAPHIC]]
                                        ]
                                ],
                                //Animations
                                [
                                        [1, [OFFROAD_ACC_NODRIVERDOOR, OFFROAD_ACC_NORIGHTDOOR, OFFROAD_ACC_NOBACKDOOR, OFFROAD_ACC_NOBACKPACKS, OFFROAD_ACC_NOFRONTPIPES, OFFROAD_ACC_BACKPIPES, OFFROAD_ACC_METALBUMPER]]
                                ]
                        ],
                        // ============== Extra colors ================
                        [
                                "Colors",       //Name
                                2,              //Chance
                                //Textures
                                [
                                        [
                                                1,
                                                [0, [OFFROAD_COL_DARKBLUE, OFFROAD_COL_DARKGREEN, OFFROAD_COL_PURPLE]],
                                                [1, [OFFROAD_COL_RED, OFFROAD_COL_CREAM, OFFROAD_COL_WHITE, OFFROAD_COL_BLUE, OFFROAD_COL_DARKRED, OFFROAD_COL_GRAPHIC]]
                                        ]
                                ],
                                //Animations
                                [
                                        [1, [OFFROAD_FIXBACKDOOR, OFFROAD_ACC_NOBACKPACKS]]
                                ]
                        ]
                ]
        ],
        [
                "I_G_Offroad_01_F",
                {true},
                [
                        // ============== Stock ===============
                        [
                                "Stock",        //Name
                                1,              //Chance
                                //Textures
                                [],
                                //Animations
                                [
                                        [1, [OFFROAD_ACC_NOBACKPACKS]]
                                ]
                        ]
                ]
        ],
        /*[
                "Truck_02_base_F", //Kamaz
                {4 > random 10},
                [
                        // ============== Colors ===============
                        [
                                "Colors",       //Name
                                1,              //Chance
                                //Textures
                                [
                                        [5, [0, [KAMAZ_COL0_RED, KAMAZ_COL0_GREY]], [1, [KAMAZ_COL1_BLUE, KAMAZ_COL1_GREY]]],
                                        [1, [1, [KAMAZ_COL1_BLUE, KAMAZ_COL1_GREY]]]
                                ],
                                //Animations
                                []
                        ]
                ]
        ],*/
        [       //Kamaz INDEP Covered (Civil)
                "I_Truck_02_covered_F",         {true},
                [[
                                "Civilian",     //Name
                                1,              //Chance
                                //Textures
                                [
                                        [10, [0, [KAMAZ_COL0_CIVBLUE]], [1, [KAMAZ_COL1_CIVBLUE]]],
                                        [1, [0, [KAMAZ_COL0_CIVRED]], [1, [KAMAZ_COL1_CIVBLUE]]]
                                ],
                                //Animations
                                []
                ]]
        ],
        [       //Kamaz INDEP Open (Civil)
                "I_Truck_02_transport_F",       {true},
                [[
                                "Civilian",     //Name
                                1,              //Chance
                                //Textures
                                [[1, [0, [KAMAZ_COL0_CIVBLUE, KAMAZ_COL0_CIVRED]], [1, [KAMAZ_COL1_CIVBLUE]]]],
                                //Animations
                                []
                ]]
        ],
        [       //Kamaz OPFOR Covered
                "O_Truck_02_covered_F",         {5 > random 10},
                [[
                                "Independent",  //Name
                                1,              //Chance
                                //Textures
                                [[1, [0, [KAMAZ_COL0_INDEP]], [1, [KAMAZ_COL1_INDEP]]]],
                                //Animations
                                []
                ]]
        ],
        [       //Kamaz OPFOR Open
                "O_Truck_02_transport_F",       {5 > random 10},
                [[
                                "Independent",  //Name
                                1,              //Chance
                                //Textures
                                [[1, [0, [KAMAZ_COL0_INDEP]], [1, [KAMAZ_COL1_INDEP]]]],
                                //Animations
                                []
                ]]
        ],
        [       //Kamaz OPFOR Medevac
                "O_Truck_02_medical_F",         {5 > random 10},
                [[
                                "Independent",  //Name
                                1,              //Chance
                                //Textures
                                [[1, [0, [KAMAZ_COL0_INDEP]], [1, [KAMAZ_COL1_INDEP]]]],
                                //Animations
                                []
                ]]
        ],
        // ð┼╠╬═Ê OPFOR\INDEP ═┼ ╚Ð¤╬╦▄ÃË┼ÊÐ▀
        /*[     //Kamaz OPFOR Repair
                "O_Truck_02_box_F",     {5 > random 10},
                [[
                                "Independent",  //Name
                                1,              //Chance
                                //Textures
                                [[1, [0, [KAMAZ_COL0_INDEP]], [1, [KAMAZ_COL1_INDEPREPAIR]]]],
                                //Animations
                                []
                ]]
        ],*/
        [       //Kamaz OPFOR Ammo
                "O_Truck_02_Ammo_F",    {5 > random 10},
                [[
                                "Independent",  //Name
                                1,              //Chance
                                //Textures
                                [[1, [0, [KAMAZ_COL0_INDEP]], [1, [KAMAZ_COL1_INDEPREPAIR]]]],
                                //Animations
                                []
                ]]
        ],
        [       //Kamaz OPFOR Fuel
                "O_Truck_02_fuel_F",    {5 > random 10},
                [[
                                "Independent",  //Name
                                1,              //Chance
                                //Textures
                                [[1, [0, [KAMAZ_COL0_INDEP]], [1, [KAMAZ_COL1_INDEPFUEL]]]],
                                //Animations
                                []
                ]]
        ],
        [       //Kamaz INDEP Medevac (Civil)
                "I_Truck_02_medical_F",         {true},
                [[
                                "Civilian",     //Name
                                1,              //Chance
                                //Textures
                                [
                                        [1, [0, [KAMAZ_COL0_CIVBLUE]], [1, [KAMAZ_COL1_CIVBLUE]]]
                                        //[1, [0, [KAMAZ_COL0_CIVRED]], [1, [KAMAZ_COL1_CIVBLUE]]]
                                ],
                                //Animations
                                []
                ]]
        ],
        [       //Kamaz INDEP Repair (Civil)
                "I_Truck_02_box_F",     {true},
                [[
                                "Civilian",     //Name
                                1,              //Chance
                                //Textures
                                [[1, [0, [KAMAZ_COL0_CIVRED]], [1, [KAMAZ_COL1_CIVREPAIR]]]],
                                //Animations
                                []
                ]]
        ],
        [       //Kamaz INDEP Fuel (Civil)
                "I_Truck_02_fuel_F",    {true},
                [[
                                "Civilian",     //Name
                                1,              //Chance
                                //Textures
                                [[1, [0, [KAMAZ_COL0_CIVBLUE]], [1, [KAMAZ_COL1_CIVFUEL]]]],
                                //Animations
                                []
                ]]
        ],
        [
                "RHS_CH_47F_base",
                {false}, []
        ],
        [
                "Heli_Transport_02_base_F", //Merlin
                {7 > random 10},
                [
                        // ============== Custom paint ===============
                        [
                                "Painted",      //Name
                                1,              //Chance
                                //Textures
                                [
                                        [1, [0, [MERLIN_COL0_DAHOMAN]], [1, [MERLIN_COL1_DAHOMAN]], [2, [MERLIN_COL2_DAHOMAN]]],
                                        [1, [0, [MERLIN_COL0_ION]], [1, [MERLIN_COL1_ION]], [2, [MERLIN_COL2_ION]]]
                                ],
                                //Animations
                                []
                        ]
                ]
        ],
        [
                "C_Van_01_box_F", //Van
                {3 > random 10},
                [
                        // ============== Colors ===============
                        [
                                "Black",        //Name
                                1,              //Chance
                                //Textures
                                [
                                        [1, [0, [VAN_COL0_BLACK]]]
                                ],
                                //Animations
                                []
                        ]
                ]
        ],
        [
                "MRAP_03_base_F", //Van
                {8 > random 10},
                [
                        // ============== Colors ===============
                        [
                                "Grey",         //Name
                                1,              //Chance
                                //Textures
                                [
                                        [1, [0, [STRIDER_COL0_GREY]], [1, [STRIDER_COL1_GREY]]]
                                ],
                                //Animations
                                []
                        ]
                ]
        ],
        [
                "O_Heli_Light_02_unarmed_F", //Ka60 Unarmed
                {random 2 < 1},
                [
                        // ============== Colors ===============
                        [
                                "Civilian",     //Name
                                1,              //Chance
                                //Textures
                                [
                                        [1, [0, [KA60_COL0_CIV]]]
                                ],
                                //Animations
                                []
                        ]
                ]
        ],
        [
                "O_Heli_Light_02_F", //Ka60 Armed
                {random 2 < 1},
                [
                        // ============== Colors ===============
                        [
                                "Indep",        //Name
                                1,              //Chance
                                //Textures
                                [
                                        [1, [0, [KA60_COL0_INDEP]]]
                                ],
                                //Animations
                                []
                        ]
                ]
        ],
        [
                "Heli_Light_01_armed_base_F", //Littlebird armed
                {random 4 < 3},
                [
                        // ============== Colors ===============
                        [
                                "Military",     //Name
                                1,              //Chance
                                //Textures
                                [
                                        [1, [0, [LITTLEBIRD_COL0_ION]]],
                                        [1, [0, [LITTLEBIRD_COL0_INDEP]]],
                                        [1, [0, [LITTLEBIRD_COL0_DIGITAL]]]
                                ],
                                //Animations
                                []
                        ]
                ]
        ],
        [
                "Heli_Light_01_base_F", //Littlebird unarmed
                {true},
                [
                        // ============== Colors ===============
                        [
                                "Civilian",     //Name
                                1,              //Chance
                                //Textures
                                [
                                        [1, [0, [LITTLEBIRD_COL0_BLUE]]],
                                        [1, [0, [LITTLEBIRD_COL0_RED]]],
                                        [1, [0, [LITTLEBIRD_COL0_ION]]],
                                        [1, [0, [LITTLEBIRD_COL0_CIV1]]],
                                        [1, [0, [LITTLEBIRD_COL0_CIV2]]],
                                        [1, [0, [LITTLEBIRD_COL0_CIV3]]],
                                        [1, [0, [LITTLEBIRD_COL0_CIV4]]],
                                        [1, [0, [LITTLEBIRD_COL0_CIV5]]],
                                        [1, [0, [LITTLEBIRD_COL0_CIV6]]],
                                        [1, [0, [LITTLEBIRD_COL0_CIV7]]],
                                        [1, [0, [LITTLEBIRD_COL0_CIV8]]],
                                        [1, [0, [LITTLEBIRD_COL0_CIV9]]],
                                        [1, [0, [LITTLEBIRD_COL0_CIV10]]],
                                        [1, [0, [LITTLEBIRD_COL0_CIV11]]],
                                        [1, [0, [LITTLEBIRD_COL0_CIV12]]]
                                ],
                                //Animations
                                []
                        ]
                ]
        ]
/*,
        [
                "Quadbike_Base_F",
                {7 > random 10},
                [
                        // ============== Normal ===============
                        [
                                "Normal",       //Name
                                1,              //Chance
                                //Textures
                                [
                                        [1, [0, [QUAD_COL0_BLACK]], [1, [QUAD_COL1_BLACK]]],
                                        [1, [0, [QUAD_COL0_BLUE]], [1, [QUAD_COL1_BLUE]]],
                                        [1, [0, [QUAD_COL0_RED]], [1, [QUAD_COL1_RED]]],
                                        [1, [0, [QUAD_COL0_WHITE]], [1, [QUAD_COL1_WHITE]]],
                                        [1, [0, [QUAD_COL0_INDEP]], [1, [QUAD_COL1_INDEP]]],
                                        [1, [0, [QUAD_COL0_HUNTER]], [1, [QUAD_COL1_HUNTER]]]
                                ],
                                //Animations
                                []
                        ]
                ]
        ]*/
];

//hiddenSelectionsTextures[] = {"\A3\soft_f_beta\Truck_02\Data\Truck_02_kab_OPFOR_co.paa","\A3\soft_f_beta\Truck_02\Data\Truck_02_kuz_OPFOR_co.paa"};

database_paints_blackOffroad = [
        [
                [1, [0, [OFFROAD_COL_BLACK]], [1, [OFFROAD_COL_DARKRED]]]
        ],
        [
                [1, [OFFROAD_FIXBACKDOOR, OFFROAD_ACC_BACKPIPES, OFFROAD_ACC_FRONTPIPES]]
        ]
];

database_paints_blackSpeedboat = [
        [
                [1, [0, [GENERAL_COL_BLACK]], [1, [GENERAL_COL_BLACK]]]
        ],
        []
];