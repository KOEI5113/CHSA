// 醫療兵才能取用的道具
private _medic = [
	"ACE_surgicalKit",
	"ACE_adenosine",
	"ACE_bloodIV_250",
	"ACE_bloodIV",
	"ACE_epinephrine",
	"ACE_bloodIV_500",
	"ACE_quikclot",
	"ACE_packingBandage",
	"ACE_elasticBandage",
	"ACE_personalAidKit"
];

// 通用道具
private _general = [
    "ACE_painkillers",
    "ACE_fieldDressing",
    "ACE_bodyBag",
    "ACE_morphine",
    "ACE_splint",
    "ACE_tourniquet",
    "ACE_Maptools",
    "ACE_CableTie",
    "ACE_EarPlugs",
    "ACE_Entrenchingtool",
    "ACE_IR_strobe_Item",
    "ACE_Flashlight_XL50",
    "ACE_rope12",
    "ACE_rope15",
    "ACE_rope18",
    "ACE_rope27",
    "ACE_rope36",
    "ACRE_PRC148",
    "ACRE_PRC152",
    "ACRE_PRC343",
    "ACE_microDAGR",
    "ACE_SpraypaintBlack",
    "ACE_SpraypaintBlue",
    "ACE_Spraypaintgreen",
    "ACE_SpraypaintRed",
    "ItemMap",
    "ItemCompass",
    "ItemWatch",
    "Itemradio",
    "ItemGPS",
    "ACE_Chemlight_HiBlue",
    "ACE_Chemlight_HiGreen",
    "ACE_Chemlight_HiRed",
    "ACE_Chemlight_HiWhite",
    "ACE_Chemlight_HiYellow",
    "ACE_Chemlight_IR",
    "ACE_SpareBarrel",
    "binocular",
    "ACE_Chemlight_UltraHiOrange",
    "ACE_M14",
    "ACE_CTS9",
    "ACE_HandFlare_White",
    "ACE_HandFlare_Red",
    "ACE_HandFlare_Green",
    "ACE_HandFlare_Yellow",
    "SmokeShellOrange",
    "SmokeShellRed",
    "SmokeShellPurple",
    "SmokeShellGreen",
    "SmokeShellBlue",
    "SmokeShellYellow",
    "HandGrenade",
    "SmokeShell",
    "ACE_M84",
    "MiniGrenade"
];


// Invade & Annex 模式所需的 CBRN 防護服
private _IAA_CBRN = [
    "U_B_CBRN_Suit_01_MTP_F",
    "U_B_CBRN_Suit_01_Tropic_F",
    "U_B_CBRN_Suit_01_Wdl_F",
    "B_SCBA_01_F",
    "B_CombinationUnitRespirator_01_F",
    "G_AirPurifyingRespirator_02_black_F",
    "G_AirPurifyingRespirator_02_olive_F",
    "G_AirPurifyingRespirator_02_sand_F",
    "G_AirPurifyingRespirator_01_F",
    "G_AirPurifyingRespirator_01_nofilter_F",
    "G_RegulatorMask_F",
    "H_Shemag_olive",
    "H_Shemag_olive_hs",
    "H_ShemagOpen_khk",
    "H_ShemagOpen_tan",
    "G_Combat",
    "G_Combat_Goggles_tna_F"
];

// 工程 / 破壞兵才能取用的道具
private _engineer = [
    "DemoCharge_Remote_Mag",
    "ATMine_Range_Mag",
    "SatchelCharge_Remote_Mag",
    "ClaymoreDirectionalMine_Remote_Mag",
    "APERSBoundingMine_Range_Mag",
    "SLAMDirectionalMine_Wire_Mag",
    "APERSTripMine_Wire_Mag",
    "APERSMine_Range_Mag",
    "ACE_wirecutter",
    "MineDetector",
    "ToolKit",
    "ACE_DefusalKit",
    "ace_marker_flags_red",
    "ACE_Clacker",
    "ACE_M26_Clacker"
];

// 高階望遠鏡道具
private _binocular = [
	"ACE_Vector",
	"ACE_MX2A",
	"Rangefinder",
	"Laserdesignator",
	"Laserdesignator_01_khk_F",
	"Laserdesignator_03",
	"Laserbatteries"
];

// 夜視鏡
private _nightGoogles = [
	"ACE_NVG_Wide_Black",
	"ACE_NVG_Wide",
	"ACE_NVG_Wide_Green",
	"NVgoggles",
	"NVgoggles_inDEP",
	"NVgoggles_opfor"
];

// 槍榴彈
private _grenadeLauncher = [
    "FlareWhite_F",
    "UGL_FlareWhite_F",
    "UGL_FlareCIR_F",
    "UGL_FlareRed_F",
    "FlareRed_F",
    "UGL_FlareGreen_F",
    "FlareGreen_F",
    "UGL_FlareYellow_F",
    "FlareYellow_F",
    "1Rnd_SmokeOrange_Grenade_shell",
    "1Rnd_Smoke_Grenade_shell",
    "1Rnd_SmokeRed_Grenade_shell",
    "1Rnd_SmokeGreen_Grenade_shell",
    "1Rnd_SmokePurple_Grenade_shell",
    "1Rnd_SmokeBlue_Grenade_shell",
    "1Rnd_SmokeYellow_Grenade_shell",
    "ACE_HuntIR_M203",
    "3Rnd_UGL_FlareWhite_F",
    "3Rnd_UGL_FlareCIR_F",
    "3Rnd_UGL_FlareRed_F",
    "3Rnd_UGL_FlareGreen_F",
    "3Rnd_UGL_FlareYellow_F",
    "3Rnd_SmokeOrange_Grenade_shell",
    "3Rnd_Smoke_Grenade_shell",
    "3Rnd_SmokeRed_Grenade_shell",
    "3Rnd_SmokePurple_Grenade_shell",
    "3Rnd_SmokeGreen_Grenade_shell",
    "3Rnd_SmokeBlue_Grenade_shell",
    "3Rnd_SmokeYellow_Grenade_shell",
    "1Rnd_HE_Grenade_shell",
    "3Rnd_HE_Grenade_shell",
    "ACE_HuntIR_monitor",
    "ACE_40mm_Flare_ir",
    "ACE_40mm_Flare_red",
    "ACE_40mm_Flare_green",
    "ACE_40mm_Flare_white"
];

// 機組員維修工具
private _crew = [
    "ToolKit"
];