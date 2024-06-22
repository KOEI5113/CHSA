#include "common.sqf";

// 陣營基本道具（將會整合陣營共用道具）
private _faction_general = [
	"B_IR_Grenade"
] + _general + _nightGoogles;

// 陣營基本制服（包含頭盔、背心、制服、背包）
private _faction_uniform = [
	"H_HelmetSpecB",
	"B_AssaultPack_khk",
	"U_B_CombatUniform_mcam_tshirt",
	"V_PlateCarrier2_rgr",
	"B_Kitbag_rgr",
	"U_B_CombatUniform_mcam",
	"V_PlateCarrier1_rgr",
	"B_Carryall_khk",
	"V_PlateCarrierSpec_rgr",
	"V_PlateCarrierGL_rgr"
];

// 陣營基本武器（主武器，包含手槍）
private _faction_weapon = [
	"ACE_30Rnd_65x39_caseless_mag_Tracer_Dim",
	"30Rnd_65x39_caseless_black_mag",
	"30Rnd_65x39_caseless_black_mag_Tracer",
	"arifle_MX_F",
	"muzzle_snds_H",
	"ACE_DBAL_A3_Red",
	"optic_MRCO",
	"bipod_01_F_snd",
	"arifle_MXM_F",
	"optic_Hamr",
	"bipod_01_F_blk",
	"arifle_MXC_F",
	"acc_flashlight",
	"optic_Holosight",
	"optic_Arco",
	"hgun_ACPC2_F",
	"9Rnd_45ACP_Mag",
	"muzzle_snds_acp",
	"acc_flashlight_pistol",
	"hgun_Pistol_heavy_02_F",
	"6Rnd_45ACP_Cylinder",
	"muzzle_snds_L",
	"optic_Yorris",
	"hgun_Pistol_heavy_01_F",
	"11Rnd_45ACP_Mag",
	"optic_MRD",
	"hgun_Rook40_F",
	"30Rnd_9x21_Mag",
	"hgun_P07_F",
	"16Rnd_9x21_Mag",
	"NLAW_F",
	"ACE_launch_NLAW_ready_F"
];

// 陣營 UAV 道具
private _faction_uav = [
	"B_UavTerminal",
	"ACE_UAVBattery"
];

// 陣營 LMG (槍枝)
private _faction_LMG_G = [
    "arifle_MX_SW_F",
    "muzzle_snds_H_MG",
	"LMG_Mk200_F",
	"LMG_03_F"
];

// 陣營 LMG (彈藥)
private _faction_LMG_A = [
    "100Rnd_65x39_caseless_black_mag_tracer",
    "ACE_100Rnd_65x39_caseless_mag_Tracer_Dim",
	"ACE_200Rnd_65x39_cased_Box_Tracer_Dim",
	"200Rnd_65x39_cased_Box",
	"200Rnd_556x45_Box_Tracer_Red_F",
	"200Rnd_556x45_Box_Tracer_F",
	"200Rnd_556x45_Box_Red_F",
	"200Rnd_556x45_Box_F"
];

// 陣營 HMG (槍枝)
private _faction_HMG_G = [
    "LMG_Zafir_F",
    "MMG_02_sand_F",
	"MMG_01_tan_F"
];

// 陣營 HMG (彈藥)
private _faction_HMG_A = [
    "150Rnd_762x54_Box_Tracer",
	"150Rnd_762x54_Box",
	"150Rnd_93x64_Mag",
	"130Rnd_338_Mag",
	"muzzle_snds_338_sand",
	"muzzle_snds_93mmg_tan"
];

// 陣營鎗榴彈發射器
private _faction_grenadeLauncher = [
	"arifle_MX_GL_F"
] + _grenadeLauncher;

// 陣營精準射手
private _faction_sniper = [
	"ACE_Tripod",
	"ACE_Kestrel4500",
	"ACE_RangeCard",
	"ACE_SpottingScope",
	"ACE_ATragMX",
	"ACE_Flashlight_KSF1",
	"ACE_PlottingBoard",
	"ACE_DAGR",
	"ACE_20Rnd_762x51_Mag_Tracer_Dim",
	"ACE_20Rnd_762x51_M118LR_Mag",
	"ACE_20Rnd_762x51_M993_AP_Mag",
	"ACE_20Rnd_762x51_Mk316_Mod_0_Mag",
	"ACE_20Rnd_762x51_Mk319_Mod_0_Mag",
	"ACE_20Rnd_762x51_Mag_Tracer",
	"ACE_20Rnd_762x51_Mag_SD",
	"ACE_10Rnd_762x51_Mag_SD",
	"ACE_10Rnd_762x51_Mag_Tracer",
	"ACE_10Rnd_762x51_Mk319_Mod_0_Mag",
	"ACE_10Rnd_762x51_Mk316_Mod_0_Mag",
	"ACE_10Rnd_762x51_M993_AP_Mag",
	"ACE_10Rnd_762x51_M118LR_Mag",
	"ACE_10Rnd_762x51_Mag_Tracer_Dim",
	"srifle_EBR_F",
	"muzzle_snds_B",
	"optic_LRPS",
	"U_B_FullGhillie_ard",
	"U_B_FullGhillie_sard",
	"U_B_FullGhillie_lsh",
	"U_B_GhillieSuit"
];

// 陣營發射器
private _faction_launchers = [
	"launch_B_Titan_F",
	"Titan_AA",
	"launch_B_Titan_short_F",
	"Titan_AT",
	"MRAWS_HE_F",
	"MRAWS_HEAT55_F",
	"MRAWS_HEAT_F",
	"launch_MRAWS_green_F"
];

// 火炮操作人員
private _faction_artillery = [
	"B_Mortar_01_weapon_F",
	"ACE_artilleryTable",
	"B_Mortar_01_support_F",
	"ace_csw_staticMortarCarry",
	"ACE_1Rnd_82mm_Mo_HE_Guided",
	"ACE_1Rnd_82mm_Mo_Smoke",
	"ACE_1Rnd_82mm_Mo_Illum",
	"ACE_1Rnd_82mm_Mo_HE_LaserGuided",
	"ACE_1Rnd_82mm_Mo_HE",
	"ace_csw_carryMortarBaseplate"
] + _crew;

// 載具機組員
private _faction_crew = [
	"H_HelmetCrew_B",
	"U_B_CTRG_2",
	"V_HarnessO_brn"
] + _crew;

// 直升機組員
private _faction_heli = [
	"H_PilotHelmetHeli_B",
	"U_B_HeliPilotCoveralls",
	"V_TacVest_khk",
	"H_CrewHelmetHeli_B"
] + _crew;

// 飛行員
private _faction_jet = [
	"H_PilotHelmetFighter_B",
	"U_B_PilotCoveralls",
	"V_HarnessO_brn"
] + _crew;

// 以 createHashMapFromArray 來建立陣營資料集並回傳
createHashMapFromArray [
	[
		// 告知這個陣營的裝備設定檔 (return by hashmap)
		"equipmentDataset", 
		createHashMapFromArray [
			["general", _faction_general], // 陣營基本道具
			["uniform", _faction_uniform], // 陣營基本制服
			["weapon", _faction_weapon], // 陣營基本武器
			["medic", _medic], // 醫療專精道具
			["engineer", _engineer], // 工兵與爆破專精道具
			["binocular", _binocular], // 專業望遠鏡，適合高級兵種或指揮者
			["LMG_G", _faction_LMG_G], // 機關槍 槍枝(LMG)
			["LMG_A", _faction_LMG_A], // 機關槍 彈藥(LMG)
			["HMG_G", _faction_HMG_G], // 重機槍 槍枝(HMG)
			["HMG_A", _faction_HMG_A], // 重機槍 彈藥(HMG)
			["grenadeLauncher", _faction_grenadeLauncher], // 鎗榴彈發射器
			["sniper", _faction_sniper], // 精準射手
			["uav", _faction_uav], // UAV 道具
			["launchers", _faction_launchers], // 發射器
			["crew", _faction_crew], // 載具機組員
			["artillery", _faction_artillery], // 火炮操作人員
			["heli", _faction_heli], // 直升機組員
			["jet", _faction_jet] // 飛行員
		]
	],
	[
		// 告知這個陣營要有那些職位 (return by array)
		"soltDataset",
		[
			["排長", 99, ["B_officer_F"]],
			["前線火炮觀察員", 99, ["B_soldier_UAV_06_F"]],
			["醫護兵", 99, ["B_medic_F"]],
			["班長", 99, ["B_Soldier_SL_F"]],
			["伍長", 99, ["B_Soldier_TL_F"]],
			["步槍兵", 99, ["B_Soldier_F"]],
			["自動步槍兵", 99, ["B_soldier_AR_F"]],
			["輔助助手", 99, ["B_soldier_AAR_F", "B_soldier_AAT_F", "B_Soldier_A_F"]],
			["工程兵", 99, [""]],
			["精準射手", 99, ["B_soldier_M_F"]],
			["排用機槍兵", 99, ["B_support_MG_F"]],
			["發射器專精兵", 99, ["B_soldier_AT_F"]],
			["火砲操作人員", 99, ["B_support_Mort_F", "B_support_AMort_F"]],
			["直升機組員", 99, ["B_Helipilot_F", "B_helicrew_F"]],
			["機組員", 99, ["B_crew_F"]],
			["飛行員", 99, ["B_Pilot_F"]]
		]
	]
];