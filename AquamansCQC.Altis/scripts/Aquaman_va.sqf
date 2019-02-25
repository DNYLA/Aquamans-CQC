/*
    Author: sbondo1234
    Description: Aquaman_va.sqf
    Credit to Sbondo/Nualovi Mendana because im too lazy to add in all the item classes my self.
*/

_crate = _this select 0;
["AmmoboxInit",[_crate,false,{true}]] spawn BIS_fnc_arsenal;

//Lists of items to include
_sg_headgear = [
    "H_HelmetSpecB",
    "H_PilotHelmetFighter_B",
    "H_PilotHelmetFighter_I",
    "H_HelmetSpecB_blk",
    "H_PilotHelmetHeli_B",
    "H_CrewHelmetHeli_B",
    "H_HelmetLeaderO_ocamo",
    "H_HelmetB_camo",
    "H_Booniehat_khk",
    "H_Booniehat_indp",
    "H_Booniehat_oli",
    "H_Booniehat_indp",
    "H_Booniehat_khk_hs",
    "H_Cap_headphones",
    "H_Cap_blk",
    "H_Cap_blk_CMMG",
    "H_Cap_blk_Raven",
    "H_Cap_blk_ION",
    "H_PilotHelmetFighter_O",
    "H_Shemag_tan",
    "H_Beret_Colonel",
    "H_Beret_ocamo",
    "H_Beret_02",
    "H_HelmetB_TI_tna_F",
    "H_Cap_blk_Syndikat_F",
    "H_Cap_tan_Syndikat_F",
    "H_Cap_oli_Syndikat_F",
    "H_Cap_grn_Syndikat_F",
    "H_ShemagOpen_khk",
    "H_ShemagOpen_tan",
    "H_Shemag_olive",
    "H_HelmetIA",
    "H_PilotHelmetFighter_B",
    "H_HelmetLeaderO_oucamo"

];

_sg_glasses = [
    "G_Balaclava_blk",
    "G_Balaclava_combat",
    "G_Balaclava_lowprofile",
    "G_Balaclava_oli",
    "G_Balaclava_TI_blk_F",
    "G_Balaclava_TI_tna_F",
    "G_Balaclava_TI_G_blk_F",
    "G_Balaclava_TI_G_tna_F",
    "G_Bandanna_beast",
    "G_Sport_Blackred"
];

_sg_clothing = [
    "U_B_Wetsuit",
    "U_O_Wetsuit",
    "U_B_PilotCoveralls",
    "U_I_CombatUniform",
    "U_I_CombatUniform_shortsleeve",
    "U_I_pilotCoveralls",
    "U_I_GhillieSuit",
    "U_B_FullGhillie_lsh",
    "U_B_FullGhillie_sard",
    "U_B_FullGhillie_ard",
    "U_I_G_resistanceLeader_F",
    "U_I_GhillieSuit",
    "U_IG_Guerilla1_1",
    "U_IG_Guerilla2_1",
    "U_IG_Guerilla2_2",
    "U_IG_Guerilla3_1",
    "U_B_T_FullGhillie_tna_F",
    "U_B_T_Sniper_F",
    "U_I_Wetsuit",
    "U_NikosAgedBody",
    "U_C_Scientist",
    "U_BG_Guerrilla_6_1",
    "U_B_CTRG_Soldier_2_F",
    "U_B_CTRG_Soldier_F",
    "U_B_CTRG_Soldier_3_F",
    "U_B_CTRG_Soldier_2_F",
    "U_B_GEN_Soldier_F",
    "U_I_C_Soldier_Bandit_5_F",
    "U_I_C_Soldier_Bandit_2_F",
    "U_I_C_Soldier_Para_4_F",
    "U_Marshal",
    "U_IG_Guerilla1_1",
    "U_IG_Guerilla2_1",
    "U_BG_Guerilla2_1",
    "U_BG_Guerilla2_3",
    "U_BG_Guerilla3_1",
    "U_OG_Guerilla2_2",
    "U_OG_Guerilla2_1",
    "U_C_Poor_1",
    "U_C_HunterBody_grn",
    "U_B_CTRG_2",
    "U_C_Journalist",
    "U_B_Protagonist_VR",
    "U_O_Protagonist_VR",
    "U_I_Protagonist_VR",
    "U_C_Protagonist_VR",
    "U_O_SpecopsUniform_ocamo",
    "U_O_SpecopsUniform_blk"
];

_sg_vests = [
    "V_PlateCarrier_Kerry",
    "V_PlateCarrierL_CTRG",
    "V_PlateCarrierH_CTRG",
    "V_RebreatherB",
    "V_RebreatherIR",
    "V_RebreatherIA",
    "V_PlateCarrier2_blk",
    "V_PlateCarrierGL_rgr",
    "V_I_G_resistanceLeader_F",
    "V_TacVest_camo",
    "V_PlateCarrier1_rgr",
    "V_PlateCarrier1_blk",
    "V_BandollierB_khk",
    "V_BandollierB_cbr",
    "V_BandollierB_blk"
];

_sg_backpack = [
    "B_AssaultPack_khk",
    "B_AssaultPack_dgtl",
    "B_AssaultPack_rgr",
    "B_AssaultPack_sgg",
    "B_AssaultPack_blk",
    "B_AssaultPack_cbr",
    "B_FieldPack_blk",
    "B_FieldPack_cbr",
    "B_OutdoorPack_blk",
    "B_FieldPack_ocamo",
    "B_TacticalPack_blk",
    "B_TacticalPack_mcamo",
    "B_ViperLightHarness_blk_F",
    "B_ViperLightHarness_oli_F",
    "B_ViperLightHarness_khk_F",
    "B_ViperLightHarness_ghex_F",
    "B_ViperLightHarness_hex_F",
    "B_ViperHarness_blk_F",
    "B_ViperHarness_oli_F",
    "B_ViperHarness_khk_F",
    "B_ViperHarness_ghex_F",
    "B_ViperHarness_hex_F",
    "B_Carryall_cbr",
    "B_Carryall_oli",
    "B_Carryall_khk",
    "B_Carryall_mcamo",
    "B_Carryall_oucamo",
    "B_Carryall_ocamo",
    "B_Messenger_Black_F",
    "B_Messenger_Olive_F",
    "B_Messenger_Coyote_F",
    "B_Messenger_Gray_F",
    "B_Kitbag_cbr",
    "B_Kitbag_mcamo",
    "B_AssaultPack_Kerry",
    "B_Kitbag_sgg",
    "B_LegStrapBag_black_F",
    "B_LegStrapBag_coyote_F",
    "B_LegStrapBag_olive_F",
    "B_FieldPack_oli",
    "B_FieldPack_blk",
    "B_FieldPack_ocamo",
    "B_FieldPack_khk",
    "B_FieldPack_oucamo",
    "B_FieldPack_cbr"
];

_sg_guns = [
    "srifle_DMR_03_F", //MK-I
    "srifle_DMR_03_multicam_F",
    "srifle_DMR_03_khaki_F",
    "srifle_DMR_03_tan_F",
    "srifle_DMR_03_woodland_F", //^MK-I
    "srifle_DMR_06_camo_F", //Mk14
    "srifle_DMR_06_olive_F",
    "srifle_EBR_F", //Mk18
    "arifle_ARX_blk_F", //Type 115
    "arifle_ARX_ghex_F",
    "arifle_ARX_hex_F", //^Type 115
    "arifle_MXC_Black_F",
    "arifle_MX_Black_F",
    "arifle_MX_F",
    "arifle_MXC_F",
    "arifle_MX_SW_F",
    "arifle_MXM_F",
    "arifle_TRG21_F",
    "arifle_TRG20_F",
    "arifle_MX_khk_F",
    "arifle_MXC_khk_F",
    "arifle_MXM_khk_F",
    "arifle_MX_GL_khk_F",
    "arifle_MX_GL_F",
    "arifle_MX_GL_Black_F",
    "arifle_MXM_Black_F",
    "arifle_Katiba_F",
    "arifle_Katiba_C_F",
    "arifle_Mk20_F",
    "arifle_Mk20_plain_F",
    "arifle_Mk20C_F",
    "arifle_Mk20C_plain_F",
    "arifle_AKM_F",
    "arifle_CTAR_blk_F",
    "arifle_CTAR_hex_F",
    "arifle_CTAR_ghex_F",
    "arifle_AK12_F",
    "arifle_AKS_F",
    "arifle_AKM_F",
    "arifle_AKM_FL_F",
    "hgun_PDW2000_F",
    "hgun_ACPC2_F", //ACP
    "hgun_Pistol_heavy_02_F", //Zubr
    "hgun_Pistol_heavy_01_F", //4-Five
    "hgun_Rook40_F", //Rook
    "hgun_Pistol_01_F", //PM
    "hgun_P07_khk_F", //P07
    "hgun_Pistol_Signal_F", //Starter Pistol
    "arifle_SDAR_F",
    "arifle_CTARS_blk_F",
    "arifle_CTARS_hex_F",
    "arifle_CTARS_ghex_F",
    "SMG_01_F",
    "SMG_02_F",
    "SMG_03_black",
    "SMG_03_camo",
    "SMG_03_hex",
    "SMG_03_khaki",
    "SMG_03_TR_black",
    "SMG_03_TR_camo",
    "SMG_03_TR_hex",
    "SMG_03_TR_khaki",
    "SMG_03C_black",
    "SMG_03C_camo",
    "SMG_03C_hex",
    "SMG_03C_khaki",
    "arifle_SPAR_03_blk_F",
    "arifle_SPAR_03_khk_F",
    "arifle_SPAR_03_snd_F",
    "arifle_SPAR_01_blk_F",
    "arifle_SPAR_01_khk_F",
    "arifle_SPAR_01_snd_F"

];
_sg_attach = [
    "acc_flashlight",
    "acc_pointer_IR",
    "optic_MRCO",
    "bipod_01_F_blk",
    "bipod_01_F_snd",
    "bipod_01_F_mtp",
    "muzzle_snds_H_khk_F",
    "muzzle_snds_H_snd_F",
    "optic_Arco_blk_F",
    "optic_Arco_ghex_F",
    "optic_ERCO_blk_F",
    "optic_Hamr_khk_F",
    "optic_ERCO_snd_F",
    "optic_ERCO_khk_F",
    "bipod_01_F_khk",
    "optic_Arco",
    "optic_Hamr",
    "optic_ACO_grn_smg",
    "optic_Aco_smg",
    "muzzle_snds_570",
    "muzzle_snds_M",
    "muzzle_snds_H",
    "muzzle_snds_B",
    "optic_Yorris",
    "optic_MRD",
    "muzzle_snds_L",
    "muzzle_snds_acp"
];

_sg_item = [
    "ItemWatch",
    "ItemCompass",
    "ItemGPS",
    "ItemRadio",
    "ItemMap",
    "Rangefinder",
    "NVGoggles",
    "NVGoggles_INDEP",
    "NVGoggles_OPFOR",
    "NVGoggles_tna_F",
    "O_NVGoggles_hex_F",
    "O_NVGoggles_urb_F",
    "O_NVGoggles_ghex_F",
    "NVGogglesB_blk_F",
    "NVGogglesB_grn_F",
    "NVGogglesB_gry_F",
    "FirstAidKit",
    "Medikit"
];
_sg_mags = [
    "20Rnd_762x51_Mag",
    "30Rnd_65x39_caseless_green_mag_Tracer",
    "1Rnd_Smoke_Grenade_shell",
    "1Rnd_SmokeRed_Grenade_shell",
    "1Rnd_SmokeGreen_Grenade_shell",
    "1Rnd_SmokeYellow_Grenade_shell",
    "1Rnd_SmokePurple_Grenade_shell",
    "1Rnd_SmokeBlue_Grenade_shell",
    "1Rnd_SmokeOrange_Grenade_shell",
    "3Rnd_Smoke_Grenade_shell",
    "3Rnd_SmokeRed_Grenade_shell",
    "3Rnd_SmokeGreen_Grenade_shell",
    "3Rnd_SmokeYellow_Grenade_shell",
    "3Rnd_SmokePurple_Grenade_shell",
    "3Rnd_SmokeBlue_Grenade_shell",
    "3Rnd_SmokeOrange_Grenade_shell",
    "30Rnd_65x39_caseless_mag",
    "30Rnd_65x39_caseless_green",
    "30Rnd_580x42_Mag_F",
    "30Rnd_556x45_Stanag",
    "30Rnd_762x39_Mag_F",
    "30Rnd_9x21_Mag",
    "30Rnd_9x21_Mag_SMG_02",
    "30Rnd_9x21_Mag_SMG_02_Tracer_Red",
    "30Rnd_45ACP_Mag_SMG_01",
    "30Rnd_45ACP_Mag_SMG_01_tracer_green",
    "50Rnd_570x28_SMG_03",
    "30Rnd_9x21_Mag",
    "9Rnd_45ACP_Mag",
    "16Rnd_9x21_Mag",
    "30Rnd_9x21_Mag",
    "11Rnd_45ACP_Mag",
    "6Rnd_45ACP_Cylinder",
    "30Rnd_9x21_Green_Mag",
    "20Rnd_556x45_UW_mag",
    "100Rnd_580x42_Mag_F",
    "100Rnd_580x42_Mag_Tracer_F",
    "6Rnd_GreenSignal_F",
    "6Rnd_RedSignal_F",
    "10Rnd_9x21_Mag"

];
//Populate with predefined items and whatever is already in the crate
[_crate,((backpackCargo _crate) + _sg_backpack)] call BIS_fnc_addVirtualBackpackCargo;
[_crate,((itemCargo _crate) + _sg_headgear + _sg_glasses + _sg_clothing + _sg_vests + _sg_attach + _sg_item)] call BIS_fnc_addVirtualItemCargo;
[_crate,(magazineCargo _crate + _sg_mags)] call BIS_fnc_addVirtualMagazineCargo;
[_crate,((weaponCargo _crate) + _sg_guns)] call BIS_fnc_addVirtualWeaponCargo;