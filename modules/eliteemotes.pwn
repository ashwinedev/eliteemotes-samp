/*
    ELiTE Emote System (Fivem inspired emote system for SA-MP) 

    Author: @ashwinm14
    Version: 1.0
    Date: July 16, 2025

    ▸ Do not remove this credit.
    ▸ You are allowed to rename files.
    ▸ You are allowed to modify the code.
    ▸ You are NOT allowed to sell this system.

    Developed for SA-MP by Elite Devs Team.
    Discord : https://discord.gg/ScjWN9Bkz8

    For Paid Sa-MP, Website, App Development Contact Us!
    Website : https://elitedevs.in
*/


enum e_AnimationStuff
{
	e_AnimationName[32], //nama item
	e_AnimLib[32],
    e_AnimName[32],
    Float:e_AnimDelta,
    bool:e_AnimLoop,
    bool:e_AnimLX,
    bool:e_AnimLY,
    bool:e_AnimFreeze,
    e_AnimTime
};

new const g_AnimDetails[][e_AnimationStuff] =
{
    // General animations
{"Nod", "COP_AMBIENT","Copbrowse_nod", 4.1, true, false, false, true, 0},
{"Nod2", "COP_AMBIENT","Coplook_nod", 4.1, true, false, false, true, 0},
{"Watch", "OTB","wtchrace_cmon", 4.1, false, false, false, true, 0},
{"Watch2", "OTB","wtchrace_lose", 4.1, false, false, false, true, 0},
{"Watch3", "OTB","wtchrace_win", 4.1, false, false, false, true, 0},
{"Wait", "COP_AMBIENT","Coplook_out", 4.1, true, false, false, true, 0},
{"Wait2", "COP_AMBIENT","Coplook_shake", 4.1, true, false, false, true, 0},
{"Think", "COP_AMBIENT","Coplook_think", 4.1, false, false, false, true, 0},
{"WatchTime", "COP_AMBIENT","Coplook_watch", 4.1, false, false, false, true, 0},
{"Masturbate", "PAULNMAC", "WANK_IN", 4.0, false, false, false, true, 0},
{"Masturbate2", "PAULNMAC", "WANK_LOOP", 4.0, true, false, false, true, 0},
{"Smoke", "SMOKING", "M_smk_in", 4.1, false, false, false, true, 0},
{"Smoke2", "SMOKING","M_smklean_loop", 4.1, true, false, false, true, 0},
{"Smoke3", "SMOKING","M_smk_tap",4.1, false, false, false, true, 0},
{"LieDown", "COP_AMBIENT", "Coplook_loop", 4.1, false, true, true, true, 0},
{"LieDown2","GRAVEYARD", "prst_loopa", 4.1, true, false, false, false, 0},
{"LieDown3","GRAVEYARD", "mrnM_loop", 4.1, true, false, false, false, 0},
{"LieDown4","DEALER", "DEALER_IDLE", 4.1, false, true, true, true, 0},
{"LieDown5", "OTB","wtchrace_in", 4.1, false, false, false, true, 0},
{"LieDown6", "OTB","wtchrace_loop", 4.1, true, false, false, true, 0},
{"Sit", "CRIB", "PED_Console_Loop", 4.1, true, false, false, false, 0},
{"Sit2", "INT_HOUSE", "LOU_In", 4.1, false, false, false, true, 0},
{"Sit3", "MISC", "SEAT_LR", 4.1, true, false, false, false, 0},
{"Sit4", "MISC", "Seat_talk_01", 4.1, true, false, false, false, 0},
{"Sit5", "MISC", "Seat_talk_02", 4.1, true, false, false, false, 0},
{"Sit6", "ped", "SEAT_down", 4.1, false, false, false, true, 0},
{"Sit7", "PED","SEAT_idle",4.1, false, false, false, true, 0},
{"Sit8", "JST_BUISNESS","girl_02",4.1, false, false, false, true, 0},
{"Relax", "BEACH", "bather", 4.1, true, false, false, false, 0},
{"Relax2", "BEACH", "Lay_Bac_Loop", 4.1, true, false, false, false, 0},
{"Relax3", "BEACH", "ParkSit_M_loop", 4.1, true, false, false, false, 0},
{"Relax4", "BEACH", "ParkSit_W_loop", 4.1, true, false, false, false, 0},
{"Relax5", "BEACH", "SitnWait_loop_W", 4.1, true, false, false, false, 0},
{"Sleep", "CRACK", "crckdeth4", 4.1, false, false, false, true, 0},
{"Sleep2", "CRACK", "crckidle4", 4.1, false, false, false, true, 0},
{"Exercise", "benchpress", "gym_bp_celebrate", 4.1, false, false, false, false, 0},
{"Exercise2", "benchpress", "gym_bp_down", 4.1, false, false, false, true, 0},
{"Exercise3", "benchpress", "gym_bp_getoff", 4.1, false, false, false, false, 0},
{"Exercise4", "benchpress", "gym_bp_geton", 4.1, false, false, false, true, 0},
{"Exercise5", "benchpress", "gym_bp_up_A", 4.1, false, false, false, true, 0},
{"Exercise6", "benchpress", "gym_bp_up_B", 4.1, false, false, false, true, 0},
{"Exercise7", "benchpress", "gym_bp_up_smooth", 4.1, false, false, false, true, 0},
{"Exercise8", "GYMNASIUM", "GYMshadowbox", 4.0, true, true, true, true, 0},
{"Yoga", "PARK", "Tai_Chi_Loop", 4.1, true, false, false, false, 0},
{"Yoga2", "DAM_JUMP", "DAM_Dive_Loop", 4.1, true, false, false, false, 0},
{"Jump", "DODGE", "Crush_Jump", 4.1, false, true, true, false, 0},
{"Vomit", "FOOD", "EAT_Vomit_P", 4.1, false, false, false, false, 0},
{"Drunk", "PED", "WALK_drunk", 4.1, true, true, true, true, 1},
{"Salute", "GHANDS", "gsign5LH", 4.1, false, false, false, false, 0},
{"Chat", "GANGS", "prtial_gngtlkA", 4.1, false, false, false, false, 0},
{"Chat2", "GANGS", "prtial_gngtlkB", 4.1, false, false, false, false, 0},
{"Chat3", "GANGS", "prtial_gngtlkE", 4.1, false, false, false, false, 0},
{"Chat4", "GANGS", "prtial_gngtlkF", 4.1, false, false, false, false, 0},
{"Chat5", "GANGS", "prtial_gngtlkG", 4.1, false, false, false, false, 0},
{"Chat6", "GANGS", "prtial_gngtlkH", 4.1, false, false, false, false, 0},
{"Wave", "PED", "endchat_03", 4.1, false, false, false, false, 0},
{"Wave2", "KISSING", "gfwave2", 4.1, false, false, false, false, 0},
{"Wave3", "ON_LOOKERS", "wave_loop", 4.1, true, false, false, false, 0},
{"Cry", "GRAVEYARD", "mrnF_loop", 4.1, true, false, false, true, 0},
{"Cry2", "GRAVEYARD", "MRNM_LOOP", 4.0, true, false, false, true, 0},
{"Laugh", "RAPPING", "Laugh_01", 4.0, false, false, false, true, 0},
{"Greet", "ON_LOOKERS","Pointup_loop",4.1, false, false, false, true, 0},
{"Point", "ON_LOOKERS","Pointup_loop",4.1, false, false, false, true, 0},
{"Hitchhike", "ON_LOOKERS","Pointup_loop",4.1, false, false, false, true, 0},
{"Tired", "PED", "IDLE_tired", 4.1, true, false, false, false, 0},
{"Tired2", "FAT", "IDLE_tired", 4.1, true, false, false, false, 0},
{"Insult", "PED", "fucku", 4.1, false, false, false, false, 0},
{"Rap", "RAPPING", "RAP_A_Loop", 4.1, true, false, false, false, 0},
{"Rap2", "RAPPING", "RAP_B_Loop", 4.1, true, false, false, false, 0},
{"Rap3", "RAPPING", "RAP_C_Loop", 4.1, true, false, false, false, 0},
{"Dance", "SKATE", "skate_idle", 4.1, true, false, false, false, 0},
{"Strip", "STRIP", "strip_A", 4.1, true, false, false, false, 0},
{"Strip2", "STRIP", "strip_B", 4.1, true, false, false, false, 0},
{"Strip3", "STRIP", "strip_C", 4.1, true, false, false, false, 0},
{"Strip4", "STRIP", "strip_D", 4.1, true, false, false, false, 0},
{"Strip5", "STRIP", "strip_E", 4.1, true, false, false, false, 0},
{"Strip6", "STRIP", "strip_F", 4.1, true, false, false, false, 0},
{"Strip7", "STRIP", "strip_G", 4.1, true, false, false, false, 0},
{"Strip8", "STRIP", "STR_A2B", 4.1, true, false, false, false, 0},
{"Strip9", "STRIP", "STR_B2C", 4.1, true, false, false, false, 0},
{"Strip10", "STRIP", "STR_C1", 4.1, true, false, false, false, 0},
{"Strip11", "STRIP", "STR_C2", 4.1, true, false, false, false, 0},
{"Strip12", "STRIP", "STR_Loop_A", 4.1, true, false, false, false, 0},
{"Strip13", "STRIP", "STR_Loop_B", 4.1, true, false, false, false, 0},
{"Strip14", "STRIP", "STR_Loop_C", 4.1, true, false, false, false, 0},
{"Cheer", "ON_LOOKERS", "shout_01", 4.1, false, false, false, false, 0},
{"Cheer2", "ON_LOOKERS", "shout_02", 4.1, false, false, false, false, 0},
{"Cheer3","ON_LOOKERS", "shout_in", 4.1, false, false, false, false, 0},
{"Cheer4", "RIOT", "RIOT_ANGRY_B", 4.1, true, false, false, false, 0},
{"Cheer5", "RIOT", "RIOT_CHANT", 4.1, false, false, false, false, 0},
{"Cheer6", "RIOT", "RIOT_shout", 4.1, false, false, false, false, 0},
{"Cheer7", "STRIP", "PUN_HOLLER", 4.1, false, false, false, false, 0},
{"Cheer8", "OTB", "wtchrace_win", 4.1, false, false, false, false, 0},
{"Scratch", "SCRATCHING", "scdldlp", 4.1, true, false, false, false, 0},
{"Scratch2", "SCRATCHING", "scdlulp", 4.1, true, false, false, false, 0},
{"Scratch3", "SCRATCHING", "scdrdlp", 4.1, true, false, false, false, 0},
{"Scratch4", "SCRATCHING", "scdrulp", 4.1, true, false, false, false, 0},

    {"Jetpack", "ped","Jetpack_Idle", 4.1, false, false, false, true, 0}
};

enum e_AnimPropStuff
{
	e_AnimationPropName[32], //nama item
	e_AnimPropLib[32],
    e_AnimPropName[32],
    Float:e_AnimPropDelta,
    bool:e_AnimPropLoop,
    bool:e_AnimPropLX,
    bool:e_AnimPropLY,
    bool:e_AnimPropFreeze,
    e_AnimPropTime,

    //prop object
    e_AnimPropIndex,
    e_AnimPropModel,
    e_AnimPropBone,
    Float:e_AnimPropOffX,
    Float:e_AnimPropOffY,
    Float:e_AnimPropOffZ,
    Float:e_AnimPropRotX,
    Float:e_AnimPropRotY,
    Float:e_AnimPropRotZ,
    Float:e_AnimPropScaX,
    Float:e_AnimPropScaY,
    Float:e_AnimPropScaZ,
    e_AnimPropMatCol0,
    e_AnimPropMatCol1
};

new const g_AnimPropDetails[][e_AnimPropStuff] =
{
    {"Box"},
    {"Box2"},
    {"Box3"},
    {"Ban"},
    {"Bumper"},
    {"Bumper2"},
    {"Toolbox"},
    {"Suitcase"},
    {"Bunga", "KISSING", "gift_give", 5.33, false, false, false, false, 0, 9, 325, 6, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, 1.000000, 1.000000, 0, 0},
    {"Dildo", "PAULNMAC", "WANK_LOOP", 4.0, true, false, false, true, 0, 9, 321, 5, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, 1.000000, 1.000000, 0, 0},
    {"Dildo2", "PAULNMAC", "WANK_LOOP", 4.0, true, false, false, true, 0, 9, 322, 5, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, 1.000000, 1.000000, 0, 0},
    {"Bat", "CRACK", "Bbalbat_Idle_01", 6.67, true, false, false, true, 0, 9, 336, 6, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, 1.000000, 1.000000, 0, 0},
    {"Bat2", "CRACK", "Bbalbat_Idle_02", 10.00, true, false, false, true, 0, 9, 336, 6, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, 1.000000, 1.000000, 0, 0},
    {"Baton", "CRACK", "Bbalbat_Idle_01", 6.67, true, false, false, true, 0, 9, 334, 6, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, 1.000000, 1.000000, 0, 0},
    {"Baton2", "CRACK", "Bbalbat_Idle_02", 10.00, true, false, false, true, 0, 9, 334, 6, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, 1.000000, 1.000000, 0, 0},
    {"Skate", "ped","Jetpack_Idle", 4.1, false, false, false, true, 0, 9, 19878, 5, 0.016000, 0.028000, 0.456000, 0.400000, 91.400108, -1.100000, 1.000000, 1.000000, 1.000000, 0, 0},
    {"Mic", "ped","Jetpack_Idle", 4.1, false, false, false, true, 0, 9, 19610, 5, 0.051999, 0.028999, -0.020000, -84.299865, -0.799999, 10.899998, 1.000000, 1.000000, 1.000000, 0, 0},
    {"Bendera", "ped","Jetpack_Idle", 4.1, false, false, false, true, 0, 9, 11245, 5, -0.097999, 0.039000, 0.091999, 1.500000, 103.000022, -2.900001, 0.384999, 0.204000, 0.276000, 0, 0},
    {"Gitar", "CRACK", "Bbalbat_Idle_01", 6.67, true, false, false, true, 0, 9, 19317, 1, -0.145000, 0.356999, 0.211999, -9.399999, 25.299961, 154.199905, 1.000000, 1.051999, 1.000000, 0, 0},

    {"Chair", "ped", "SEAT_down", 4.1, false, false, false, true, 0, 9, 1369, 1, -0.207000, 0.101999, -0.010000, -88.599967, 100.600143, -94.200103, 1.000000, 1.000000, 1.000000, 0, 0},
    {"Chair2",  "ped", "SEAT_down", 4.1, false, false, false, true, 0, 9, 2121, 1, -0.324999, 0.050000, -0.015000, -128.700027, 94.600151, -55.500225, 1.000000, 1.000000, 1.000000, 0, 0},
    {"Camera", "CAMERA", "piccrch_take", 1.0, true, false, false, false, 0, 9, 19623, 6, 0.074999, 0.112999, 0.079999, 0.000000, 0.000000, 96.599990, 1.000000, 1.000000, 1.000000, 0, 0},
    {"Camera2", "CAMERA", "picstnd_take", 1.0, true, false, false, false, 0, 9, 19623, 6, 0.152000, 0.068999, 0.037999, 3.899933, -0.499996, 91.399879, 1.000000, 1.000000, 1.000000, 0, 0},
    {"Umbrella", "ped","Jetpack_Idle", 4.1, false, false, false, true, 0, 9, 642, 5, -0.279000, 0.126000, -0.356999, 19.699987, -134.099990, 1.599998, 0.368000, 0.371000, 0.470999, 0xFF3A3B3C, 0xFF3A3B3C},
    {"Basket", "BSKTBALL","BBALL_idleloop", 0.67, true, false, false, true, 0, 9, 2114, 6, 0.300000, 0.000000, 0.039999, 0.000000, 0.000000, 0.000000, 1.000000, 1.000000, 1.000000, 0, 0},
    {"Basket2", "BSKTBALL","BBALL_run", 0.90, true, true, true, true, 0, 9, 2114, 6, 0.300000, 0.000000, 0.039999, 0.000000, 0.000000, 0.000000, 1.000000, 1.000000, 1.000000, 0, 0},
    {"Basket3", "BSKTBALL","BBALL_walk", 1.07, true, true, true, true, 0, 9, 2114, 6, 0.300000, 0.000000, 0.039999, 0.000000, 0.000000, 0.000000, 1.000000, 1.000000, 1.000000, 0, 0},
    {"Medbox", "CAMERA", "camcrch_idleloop", 2.0, true, false, false, false, 0, 9, 11738, 1, -0.522999, 0.668999, 0.550999, 74.799995, 76.100028, -21.699998, 1.473999, 1.431999, 1.212000, 0, 0},
    
    {"Book", "ped","Jetpack_Idle", 4.1, false, false, false, true, 0, 9, 2894, 5, 0.063999, 0.051999, -0.043999, -148.800201, -3.600002, -71.900009, 0.395999, 0.459000, 1.089000, 0, 0},
    {"Flashlight", "GHETTO_DB","GDB_Car_RYD", 4.1, true, false, false, true, 0, 9, 18641, 6, 0.047999, 0.046000, -0.016999, 68.300003, 40.200000, 0.000000, 1.000000, 1.000000, 1.000000, 0, 0},
    {"Tablet", "INT_SHOP","shop_loop", 4.1, true, false, false, true, 0, 9, 19786, 5, 0.182999, 0.048999, -0.112999, -66.699935, -23.799949, -116.699996, 0.130999, 0.136000, 0.142000, 0, 0}
};

new const g_AnimSharedName[][] =
{
    "Kiss",
    "Kiss2",
    "Kiss3",
    "Gift",
    "Pleasure",
    "Pleasure2",
    "Greet",
    "Greet2",
    "Greet3",
    "Greet4",
    "Greet5",
    "Greet6",
    "Greet7"
};
