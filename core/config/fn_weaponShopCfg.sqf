#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
    case "cop_equipment":
	{
		switch(true) do
		{
			case (playerside !=west):{"You are not a cop"};
			case (__GETC__(life_coplevel) > 0):
			{
				["Police Equipment",
					[
						["ItemGPS",nil,100],
						["ItemMap",nil,100],
						["MineDetector",nil,1000],
						["Binocular","Binoculars",300],
						["Rangefinder","RangeFinder",300],
						["NVGoggles",nil,2000],				
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["ToolKit",nil,250],
						["Chemlight_red",nil,300],
						["Chemlight_yellow",nil,300],
						["Chemlight_green",nil,300],
						["Chemlight_blue",nil,300],
						["1Rnd_HE_Grenade_shell",nil,245],
						["UGL_FlareWhite_F",nil,145],
						["UGL_FlareGreen_F",nil,145],
						["UGL_FlareRed_F",nil,145],
						["UGL_FlareYellow_F",nil,145],
						["1Rnd_Smoke_Grenade_shell",nil,145],
						["1Rnd_SmokeRed_Grenade_shell",nil,145],
						["1Rnd_SmokeGreen_Grenade_shell",nil,145],
						["1Rnd_SmokeYellow_Grenade_shell",nil,145],
						["1Rnd_SmokePurple_Grenade_shell",nil,145],
						["1Rnd_SmokeBlue_Grenade_shell",nil,145],
						["1Rnd_SmokeOrange_Grenade_shell",nil,145],
						["muzzle_mas_snds_L",nil,1845],
						["muzzle_mas_snds_C",nil,1845],
						["muzzle_mas_snds_M",nil,1845],
						["muzzle_mas_snds_SM",nil,1845],
						["muzzle_mas_snds_SH",nil,1845],
						["optic_mas_zeiss",nil,2845],
						["optic_mas_zeiss_eo",nil,2845],
						["optic_mas_acog",nil,2845],
						["optic_mas_acog_eo",nil,2845],
						["optic_mas_acog_rd",nil,2845],
						["optic_mas_handle",nil,2845],
						["optic_mas_aim",nil,2845],
						["optic_mas_pso",nil,2845],
						["optic_mas_pso_eo",nil,2845],
						["optic_mas_term",nil,2845],
						["acc_mas_pointer_IR",nil,2845],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,7500]
					]
				];
			};
		};
	
	};

    case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop"};
			case (__GETC__(life_coplevel) == 0): {"You are not a WhiteListed police officer, apply for WhiteList at www.Arma3TakistanLife.com"};
			case (__GETC__(life_coplevel) == 1):
			{
				["Probationary Constable Weapons",
					[
							["arifle_sdar_F","Taser Rifle",20000],
							["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125],
							["hgun_P07_snds_F","Stun Pistol",2000],
							["hgun_P07_F",nil,7500],
							["muzzle_snds_L",nil,650],
							["16Rnd_9x21_Mag",nil,50]
					]
				];
			};
			case (__GETC__(life_coplevel) == 2):
			{
				["Constable Weapons",
					[
							["arifle_sdar_F","Taser Rifle",20000],
							["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125],
							["hgun_P07_snds_F","Stun Pistol",2000],
							["hgun_P07_F",nil,7500],
							["muzzle_snds_L",nil,650],
							["16Rnd_9x21_Mag",nil,50],
							["hgun_mas_m9_F",nil,10000],
							["hgun_mas_bhp_F",nil,10000],	
							["hgun_mas_glock_F",nil,10000],
							["hgun_mas_acp_F",nil,10000],
							["hgun_mas_usp_F",nil,10000],
							["hgun_mas_glocksf_F",nil,10000],
							["12Rnd_mas_45acp_Mag",nil,50],
							["10Rnd_mas_45acp_Mag",nil,50],
							["8Rnd_mas_45acp_Mag",nil,50],
							["hgun_mas_uzi_F",nil,12000],
							["25Rnd_mas_9x19_Mag",nil,70],
							["arifle_mas_mp5",nil,20000],
							["arifle_mas_mp5_v",nil,20000],
							["arifle_mas_mp5_d",nil,20000],
							["30Rnd_mas_9x21_Stanag",nil,75],
							["30Rnd_9x21_Mag",nil,75],
							["arifle_MX_Black_F",nil,50000],
							["arifle_MXC_Black_F",nil,48000],
							["arifle_MX_SW_Black_F",nil,52000],
							["30Rnd_65x39_caseless_mag",nil,125],
							["30Rnd_65x39_caseless_mag_Tracer",nil,135],
							["arifle_mas_m1014",nil,30000], 
							["7Rnd_mas_12Gauge_Slug",nil,100],	
							["7Rnd_mas_12Gauge_Pellets",nil,100],
							["srifle_mas_m24",nil,300000],
							["srifle_mas_m24_v",nil,300000],
							["srifle_mas_m24_d",nil,300000],
							["5Rnd_mas_762x51_Stanag",nil,125],	
							["5Rnd_mas_762x51_T_Stanag",nil,145]
					]
				];
			};
			case (__GETC__(life_coplevel) == 3):
			{
				["Sergeant Weapons",
					[
							["arifle_sdar_F","Taser Rifle",20000],
							["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125],
							["hgun_P07_snds_F","Stun Pistol",2000],
							["hgun_P07_F",nil,7500],
							["muzzle_snds_L",nil,650],
							["16Rnd_9x21_Mag",nil,50],
							["hgun_mas_m9_F",nil,10000],
							["hgun_mas_bhp_F",nil,10000],	
							["hgun_mas_glock_F",nil,10000],
							["hgun_mas_acp_F",nil,10000],
							["hgun_mas_usp_F",nil,10000],
							["hgun_mas_glocksf_F",nil,10000],
							["12Rnd_mas_45acp_Mag",nil,50],
							["10Rnd_mas_45acp_Mag",nil,50],
							["8Rnd_mas_45acp_Mag",nil,50],
							["hgun_mas_uzi_F",nil,12000],
							["25Rnd_mas_9x19_Mag",nil,70],
							["arifle_mas_mp5",nil,20000],
							["arifle_mas_mp5_v",nil,20000],
							["arifle_mas_mp5_d",nil,20000],
							["30Rnd_mas_9x21_Stanag",nil,75],
							["30Rnd_9x21_Mag",nil,75],
							["arifle_MX_Black_F",nil,50000],
							["arifle_MXC_Black_F",nil,48000],
							["arifle_MX_SW_Black_F",nil,52000],
							["30Rnd_65x39_caseless_mag",nil,125],
							["30Rnd_65x39_caseless_mag_Tracer",nil,135],
							["arifle_mas_m1014",nil,30000], 
							["7Rnd_mas_12Gauge_Slug",nil,100],	
							["7Rnd_mas_12Gauge_Pellets",nil,100],
						    ["HandGrenade_Stone","Flashbang",4700],
							["arifle_mas_m4",nil,50000],
							["arifle_mas_m4_gl",nil,55000],
							["arifle_mas_m4_v",nil,50000],
							["arifle_mas_m4_d",nil,50000],
							["arifle_mas_m4c",nil,50000],
							["arifle_mas_m4c_v",nil,50000],							
							["arifle_mas_m4c_d",nil,50000],			
							["30Rnd_mas_556x45_Stanag",nil,125],	
							["30Rnd_mas_556x45_T_Stanag",nil,145],							
							["30Rnd_556x45_Stanag",nil,125],	
							["30Rnd_556x45_Stanag_Tracer_Red",nil,145],							
							["30Rnd_556x45_Stanag_Tracer_Green",nil,145],		
							["30Rnd_556x45_Stanag_Tracer_Yellow",nil,145],
							["arifle_mas_hk417c",nil,58000],
							["arifle_mas_hk417c_v",nil,60000],
							["arifle_mas_hk417c_d",nil,60000],	
							["20Rnd_mas_762x51_Stanag",nil,125],	
							["20Rnd_mas_762x51_T_Stanag",nil,145],							
							["20Rnd_762x51_Mag",nil,125],
							["arifle_mas_mk16",nil,70000],
							["arifle_mas_mk16_gl",nil,75000],
							["arifle_mas_mk16_l",nil,72000],
							["30Rnd_mas_556x45_Stanag",nil,125],	
							["30Rnd_mas_556x45_T_Stanag",nil,145],							
							["30Rnd_556x45_Stanag",nil,125],	
							["30Rnd_556x45_Stanag_Tracer_Red",nil,145],							
							["30Rnd_556x45_Stanag_Tracer_Green",nil,145],		
							["30Rnd_556x45_Stanag_Tracer_Yellow",nil,145],
							["arifle_mas_mk17",nil,80000],
							["arifle_mas_mk17_gl",nil,85000],
							["srifle_mas_mk17s",nil,90000],
							["20Rnd_mas_762x51_Stanag",nil,125],	
							["20Rnd_mas_762x51_T_Stanag",nil,145],							
							["20Rnd_762x51_Mag",nil,125],
							["srifle_mas_m24",nil,300000],
							["srifle_mas_m24_v",nil,300000],
							["srifle_mas_m24_d",nil,300000],
							["5Rnd_mas_762x51_Stanag",nil,125],	
							["5Rnd_mas_762x51_T_Stanag",nil,145]
					]
				];
			};
			case (__GETC__(life_coplevel) == 4):
			{
				["Inspector Weapons",
					[
							["arifle_sdar_F","Taser Rifle",20000],
							["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125],
							["hgun_P07_snds_F","Stun Pistol",2000],
							["hgun_P07_F",nil,7500],
							["muzzle_snds_L",nil,650],
							["16Rnd_9x21_Mag",nil,50],
							["hgun_mas_m9_F",nil,10000],
							["hgun_mas_bhp_F",nil,10000],	
							["hgun_mas_glock_F",nil,10000],
							["hgun_mas_acp_F",nil,10000],
							["hgun_mas_usp_F",nil,10000],
							["hgun_mas_glocksf_F",nil,10000],
							["12Rnd_mas_45acp_Mag",nil,50],
							["10Rnd_mas_45acp_Mag",nil,50],
							["8Rnd_mas_45acp_Mag",nil,50],
							["hgun_mas_uzi_F",nil,12000],
							["25Rnd_mas_9x19_Mag",nil,70],
							["arifle_mas_mp5",nil,20000],
							["arifle_mas_mp5_v",nil,20000],
							["arifle_mas_mp5_d",nil,20000],
							["30Rnd_mas_9x21_Stanag",nil,75],
							["30Rnd_9x21_Mag",nil,75],
							["arifle_MX_Black_F",nil,50000],
							["arifle_MXC_Black_F",nil,48000],
							["arifle_MX_SW_Black_F",nil,52000],
							["30Rnd_65x39_caseless_mag",nil,125],
							["30Rnd_65x39_caseless_mag_Tracer",nil,135],
							["arifle_mas_m1014",nil,30000], 
							["7Rnd_mas_12Gauge_Slug",nil,100],	
							["7Rnd_mas_12Gauge_Pellets",nil,100],
						    ["HandGrenade_Stone","Flashbang",4700],
							["arifle_mas_m4",nil,50000],
							["arifle_mas_m4_gl",nil,55000],
							["arifle_mas_m4_v",nil,50000],
							["arifle_mas_m4_d",nil,50000],
							["arifle_mas_m4c",nil,50000],
							["arifle_mas_m4c_v",nil,50000],							
							["arifle_mas_m4c_d",nil,50000],			
							["30Rnd_mas_556x45_Stanag",nil,125],	
							["30Rnd_mas_556x45_T_Stanag",nil,145],							
							["30Rnd_556x45_Stanag",nil,125],	
							["30Rnd_556x45_Stanag_Tracer_Red",nil,145],							
							["30Rnd_556x45_Stanag_Tracer_Green",nil,145],		
							["30Rnd_556x45_Stanag_Tracer_Yellow",nil,145],
							["arifle_mas_hk417c",nil,58000],
							["arifle_mas_hk417c_v",nil,60000],
							["arifle_mas_hk417c_d",nil,60000],	
							["20Rnd_mas_762x51_Stanag",nil,125],	
							["20Rnd_mas_762x51_T_Stanag",nil,145],							
							["20Rnd_762x51_Mag",nil,125],
							["arifle_mas_mk16",nil,70000],
							["arifle_mas_mk16_gl",nil,75000],
							["arifle_mas_mk16_l",nil,72000],
							["30Rnd_mas_556x45_Stanag",nil,125],	
							["30Rnd_mas_556x45_T_Stanag",nil,145],							
							["30Rnd_556x45_Stanag",nil,125],	
							["30Rnd_556x45_Stanag_Tracer_Red",nil,145],							
							["30Rnd_556x45_Stanag_Tracer_Green",nil,145],		
							["30Rnd_556x45_Stanag_Tracer_Yellow",nil,145],
							["arifle_mas_mk17",nil,80000],
							["arifle_mas_mk17_gl",nil,85000],
							["srifle_mas_mk17s",nil,90000],
							["20Rnd_mas_762x51_Stanag",nil,125],	
							["20Rnd_mas_762x51_T_Stanag",nil,145],							
							["20Rnd_762x51_Mag",nil,125],
							["LMG_mas_Mk200_F",nil,100000], 
							["LMG_mas_M249_F",nil,100000],	
							["200Rnd_mas_556x45_Stanag",nil,125],	
							["200Rnd_mas_556x45_T_Stanag",nil,145],															
							["LMG_mas_Mk48_F",nil,120000], 
							["LMG_mas_Mk48_F_v",nil,120000],
							["LMG_mas_Mk48_F_d",nil,120000],
							["LMG_mas_M240_F",nil,120000],	
							["100Rnd_mas_762x51_Stanag",nil,125],	
							["100Rnd_mas_762x51_T_Stanag",nil,145],
							["srifle_mas_m24",nil,300000],
							["srifle_mas_m24_v",nil,300000],
							["srifle_mas_m24_d",nil,300000],
							["5Rnd_mas_762x51_Stanag",nil,125],	
							["5Rnd_mas_762x51_T_Stanag",nil,145]
					]
				];
			};
			case (__GETC__(life_coplevel) == 5):
			{
				["Superintendent Weapons",
					[
							["arifle_sdar_F","Taser Rifle",20000],
							["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125],
							["hgun_P07_snds_F","Stun Pistol",2000],
							["hgun_P07_F",nil,7500],
							["muzzle_snds_L",nil,650],
							["16Rnd_9x21_Mag",nil,50],
							["hgun_mas_m9_F",nil,10000],
							["hgun_mas_bhp_F",nil,10000],	
							["hgun_mas_glock_F",nil,10000],
							["hgun_mas_acp_F",nil,10000],
							["hgun_mas_usp_F",nil,10000],
							["hgun_mas_glocksf_F",nil,10000],
							["12Rnd_mas_45acp_Mag",nil,50],
							["10Rnd_mas_45acp_Mag",nil,50],
							["8Rnd_mas_45acp_Mag",nil,50],
							["hgun_mas_uzi_F",nil,12000],
							["25Rnd_mas_9x19_Mag",nil,70],
							["arifle_mas_mp5",nil,20000],
							["arifle_mas_mp5_v",nil,20000],
							["arifle_mas_mp5_d",nil,20000],
							["30Rnd_mas_9x21_Stanag",nil,75],
							["30Rnd_9x21_Mag",nil,75],
							["arifle_MX_Black_F",nil,50000],
							["arifle_MXC_Black_F",nil,48000],
							["arifle_MX_SW_Black_F",nil,52000],
							["30Rnd_65x39_caseless_mag",nil,125],
							["30Rnd_65x39_caseless_mag_Tracer",nil,135],
							["arifle_mas_m1014",nil,30000], 
							["7Rnd_mas_12Gauge_Slug",nil,100],	
							["7Rnd_mas_12Gauge_Pellets",nil,100],
						    ["HandGrenade_Stone","Flashbang",4700],
							["arifle_mas_m4",nil,50000],
							["arifle_mas_m4_gl",nil,55000],
							["arifle_mas_m4_v",nil,50000],
							["arifle_mas_m4_d",nil,50000],
							["arifle_mas_m4c",nil,50000],
							["arifle_mas_m4c_v",nil,50000],							
							["arifle_mas_m4c_d",nil,50000],			
							["30Rnd_mas_556x45_Stanag",nil,125],	
							["30Rnd_mas_556x45_T_Stanag",nil,145],							
							["30Rnd_556x45_Stanag",nil,125],	
							["30Rnd_556x45_Stanag_Tracer_Red",nil,145],							
							["30Rnd_556x45_Stanag_Tracer_Green",nil,145],		
							["30Rnd_556x45_Stanag_Tracer_Yellow",nil,145],
							["arifle_mas_hk417c",nil,58000],
							["arifle_mas_hk417c_v",nil,60000],
							["arifle_mas_hk417c_d",nil,60000],	
							["20Rnd_mas_762x51_Stanag",nil,125],	
							["20Rnd_mas_762x51_T_Stanag",nil,145],							
							["20Rnd_762x51_Mag",nil,125],
							["arifle_mas_mk16",nil,70000],
							["arifle_mas_mk16_gl",nil,75000],
							["arifle_mas_mk16_l",nil,72000],
							["30Rnd_mas_556x45_Stanag",nil,125],	
							["30Rnd_mas_556x45_T_Stanag",nil,145],							
							["30Rnd_556x45_Stanag",nil,125],	
							["30Rnd_556x45_Stanag_Tracer_Red",nil,145],							
							["30Rnd_556x45_Stanag_Tracer_Green",nil,145],		
							["30Rnd_556x45_Stanag_Tracer_Yellow",nil,145],
							["arifle_mas_mk17",nil,80000],
							["arifle_mas_mk17_gl",nil,85000],
							["srifle_mas_mk17s",nil,90000],
							["20Rnd_mas_762x51_Stanag",nil,125],	
							["20Rnd_mas_762x51_T_Stanag",nil,145],							
							["20Rnd_762x51_Mag",nil,125],
							["LMG_mas_Mk200_F",nil,100000], 
							["LMG_mas_M249_F",nil,100000],	
							["200Rnd_mas_556x45_Stanag",nil,125],	
							["200Rnd_mas_556x45_T_Stanag",nil,145],															
							["LMG_mas_Mk48_F",nil,120000], 
							["LMG_mas_Mk48_F_v",nil,120000],
							["LMG_mas_Mk48_F_d",nil,120000],
							["LMG_mas_M240_F",nil,120000],
							["100Rnd_mas_762x51_Stanag",nil,125],	
							["100Rnd_mas_762x51_T_Stanag",nil,145],
							["srifle_mas_m110",nil,300000],
							["20Rnd_mas_762x51_Stanag",nil,125],	
							["20Rnd_mas_762x51_T_Stanag",nil,145],							
							["20Rnd_762x51_Mag",nil,125],
							["srifle_mas_m24",nil,300000],
							["srifle_mas_m24_v",nil,300000],
							["srifle_mas_m24_d",nil,300000],
							["5Rnd_mas_762x51_Stanag",nil,125],	
							["5Rnd_mas_762x51_T_Stanag",nil,145]
					]
				];
			};
			case (__GETC__(life_coplevel) >= 6):
			{
				["Commissioner Weapons",
					[
							["arifle_sdar_F","Taser Rifle",20000],
							["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125],
							["hgun_P07_snds_F","Stun Pistol",2000],
							["hgun_P07_F",nil,7500],
							["muzzle_snds_L",nil,650],
							["16Rnd_9x21_Mag",nil,50],
							["hgun_mas_m9_F",nil,10000],
							["hgun_mas_bhp_F",nil,10000],	
							["hgun_mas_glock_F",nil,10000],
							["hgun_mas_acp_F",nil,10000],
							["hgun_mas_usp_F",nil,10000],
							["hgun_mas_glocksf_F",nil,10000],
							["12Rnd_mas_45acp_Mag",nil,50],
							["10Rnd_mas_45acp_Mag",nil,50],
							["8Rnd_mas_45acp_Mag",nil,50],
							["hgun_mas_uzi_F",nil,12000],
							["25Rnd_mas_9x19_Mag",nil,70],
							["arifle_mas_mp5",nil,20000],
							["arifle_mas_mp5_v",nil,20000],
							["arifle_mas_mp5_d",nil,20000],
							["30Rnd_mas_9x21_Stanag",nil,75],
							["30Rnd_9x21_Mag",nil,75],
							["arifle_MX_Black_F",nil,50000],
							["arifle_MXC_Black_F",nil,48000],
							["arifle_MX_SW_Black_F",nil,52000],
							["30Rnd_65x39_caseless_mag",nil,125],
							["30Rnd_65x39_caseless_mag_Tracer",nil,135],
							["arifle_mas_m1014",nil,30000], 
							["7Rnd_mas_12Gauge_Slug",nil,100],	
							["7Rnd_mas_12Gauge_Pellets",nil,100],
						    ["HandGrenade_Stone","Flashbang",4700],
							["arifle_mas_m4",nil,50000],
							["arifle_mas_m4_gl",nil,55000],
							["arifle_mas_m4_v",nil,50000],
							["arifle_mas_m4_d",nil,50000],
							["arifle_mas_m4c",nil,50000],
							["arifle_mas_m4c_v",nil,50000],							
							["arifle_mas_m4c_d",nil,50000],			
							["30Rnd_mas_556x45_Stanag",nil,125],	
							["30Rnd_mas_556x45_T_Stanag",nil,145],							
							["30Rnd_556x45_Stanag",nil,125],	
							["30Rnd_556x45_Stanag_Tracer_Red",nil,145],							
							["30Rnd_556x45_Stanag_Tracer_Green",nil,145],		
							["30Rnd_556x45_Stanag_Tracer_Yellow",nil,145],
							["arifle_mas_hk417c",nil,58000],
							["arifle_mas_hk417c_v",nil,60000],
							["arifle_mas_hk417c_d",nil,60000],	
							["20Rnd_mas_762x51_Stanag",nil,125],	
							["20Rnd_mas_762x51_T_Stanag",nil,145],							
							["20Rnd_762x51_Mag",nil,125],
							["arifle_mas_mk16",nil,70000],
							["arifle_mas_mk16_gl",nil,75000],
							["arifle_mas_mk16_l",nil,72000],
							["30Rnd_mas_556x45_Stanag",nil,125],	
							["30Rnd_mas_556x45_T_Stanag",nil,145],							
							["30Rnd_556x45_Stanag",nil,125],	
							["30Rnd_556x45_Stanag_Tracer_Red",nil,145],							
							["30Rnd_556x45_Stanag_Tracer_Green",nil,145],		
							["30Rnd_556x45_Stanag_Tracer_Yellow",nil,145],
							["arifle_mas_mk17",nil,80000],
							["arifle_mas_mk17_gl",nil,85000],
							["srifle_mas_mk17s",nil,90000],
							["20Rnd_mas_762x51_Stanag",nil,125],	
							["20Rnd_mas_762x51_T_Stanag",nil,145],							
							["20Rnd_762x51_Mag",nil,125],
							["LMG_mas_Mk200_F",nil,100000], 
							["LMG_mas_M249_F",nil,100000],	
							["200Rnd_mas_556x45_Stanag",nil,125],	
							["200Rnd_mas_556x45_T_Stanag",nil,145],															
							["LMG_mas_Mk48_F",nil,120000], 
							["LMG_mas_Mk48_F_v",nil,120000],
							["LMG_mas_Mk48_F_d",nil,120000],
							["LMG_mas_M240_F",nil,120000],	
							["100Rnd_mas_762x51_Stanag",nil,125],	
							["100Rnd_mas_762x51_T_Stanag",nil,145],
							["srifle_mas_m110",nil,300000],
							["20Rnd_mas_762x51_Stanag",nil,125],	
							["20Rnd_mas_762x51_T_Stanag",nil,145],							
							["20Rnd_762x51_Mag",nil,125],
							["srifle_mas_m24",nil,300000],
							["srifle_mas_m24_v",nil,300000],
							["srifle_mas_m24_d",nil,300000],
							["5Rnd_mas_762x51_Stanag",nil,125],	
							["5Rnd_mas_762x51_T_Stanag",nil,145]
					]
				];
			};
		};
	};
		
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"You are not an EMS Medic"};
			default {
				["Hospital EMS Shop",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["B_FieldPack_ocamo",nil,3000]
					]
				];
			};
		};
	};	
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Bandi's Jihadi Shop",
					[
						["arifle_TRG20_F",nil,25000],
						["30Rnd_556x45_Stanag",nil,300],
						["arifle_SDAR_F",nil,20000],
						["20Rnd_556x45_UW_mag",nil,125],
						["arifle_Katiba_F",nil,30000],
						["30Rnd_65x39_caseless_green",nil,275],
						["srifle_DMR_01_F",nil,50000],
						["10Rnd_762x51_Mag",nil,500],
						["hgun_mas_sa61_F",nil,9000],
						["20Rnd_mas_765x17_Mag",nil,145],
						["hgun_mas_grach_F",nil,5000],
						["17Rnd_mas_9x21_Mag",nil,145],
						["13Rnd_mas_9x21_Mag",nil,145],
						["hgun_mas_mak_F",nil,5000],
						["8Rnd_mas_9x18_Mag",nil,145],	
						["arifle_mas_ak_74m",nil,128000],
						["arifle_mas_ak_74m_c",nil,128000],
						["arifle_mas_ak_74m_sf",nil,138000],
						["arifle_mas_ak_74m_gl",nil,130000],
						["arifle_mas_aks74",nil,128000],
						["arifle_mas_aks74_gl",nil,130000],	
						["30Rnd_mas_545x39_mag",nil,125],	
						["30Rnd_mas_545x39_T_mag",nil,145],
						["arifle_mas_akms",nil,130000],
						["arifle_mas_akm",nil,130000],							
						["30Rnd_mas_762x39_mag",nil,135],	
						["30Rnd_mas_762x39_T_mag",nil,155],
						["arifle_mas_aks74u",nil,130000],
						["arifle_mas_aks74u_c",nil,130000],							
						["30Rnd_mas_545x39_mag",nil,125],	
						["30Rnd_mas_545x39_T_mag",nil,145],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,7500]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_gun): {"You don't have a Firearms license!"};
			default
			{
				["Mattz's Firearms",
					[
						["hgun_mas_m9_F",nil,6500],
						["hgun_mas_bhp_F",nil,6500],	
						["hgun_mas_glock_F",nil,6500],
						["hgun_mas_acp_F",nil,6500],
						["hgun_mas_usp_F",nil,6500],
						["hgun_mas_glocksf_F",nil,6500],
						["12Rnd_mas_45acp_Mag",nil,50],
						["10Rnd_mas_45acp_Mag",nil,50],
						["8Rnd_mas_45acp_Mag",nil,50],
						["hgun_mas_uzi_F",nil,12000],
						["25Rnd_mas_9x19_Mag",nil,70],
						["arifle_mas_m1014",nil,30000],
						["7Rnd_mas_12Gauge_Slug",nil,100],	
						["7Rnd_mas_12Gauge_Pellets",nil,100],
						["hgun_Rook40_F",nil,6500],
						["hgun_Pistol_heavy_02_F",nil,9850],
						["hgun_ACPC2_F",nil,11500],
						["hgun_PDW2000_F",nil,20000],
						["optic_ACO_grn_smg",nil,2500],
						["V_Rangemaster_belt",nil,4900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			default
			{
				["Hideout Armament",
					[
						["hgun_Rook40_F",nil,1500],
						["hgun_Pistol_heavy_02_F",nil,2500],
						["hgun_ACPC2_F",nil,4500],
						["hgun_PDW2000_F",nil,9500],
						["optic_ACO_grn_smg",nil,950],
						["V_Rangemaster_belt",nil,1900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "tla_equipment":
	{
		switch(true) do
		{
			case (playerSide != east): {"You are not TLA!"};
			default
			{
				["TLA Equipment",
					[
						["ItemGPS",nil,100],
						["ItemMap",nil,100],
						["MineDetector",nil,1000],
						["Binocular","Binoculars",300],
						["Rangefinder","RangeFinder",300],
						["NVGoggles",nil,2000],				
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["ToolKit",nil,250],
					    ["UGL_FlareWhite_F",nil,445],
						["UGL_FlareGreen_F",nil,445],
						["UGL_FlareRed_F",nil,445],
						["UGL_FlareYellow_F",nil,445],
						["1Rnd_Smoke_Grenade_shell",nil,445],
						["1Rnd_SmokeRed_Grenade_shell",nil,445],
						["1Rnd_SmokeGreen_Grenade_shell",nil,445],
						["1Rnd_SmokeYellow_Grenade_shell",nil,445],
						["1Rnd_SmokePurple_Grenade_shell",nil,445],
						["1Rnd_SmokeBlue_Grenade_shell",nil,445],
					    ["1Rnd_SmokeOrange_Grenade_shell",nil,445],
						["muzzle_mas_snds_L",nil,5845],
						["muzzle_mas_snds_C",nil,5845],
						["muzzle_mas_snds_M",nil,5845],
						["muzzle_mas_snds_SM",nil,5845],
						["muzzle_mas_snds_SH",nil,5845],
						["optic_mas_acog",nil,8845],
						["optic_mas_acog_eo",nil,8845],
						["optic_mas_acog_rd",nil,8845],
						["optic_mas_handle",nil,8845],
						["optic_mas_aim",nil,8845],
						["optic_mas_pso",nil,8845],
						["optic_mas_pso_eo",nil,8845],
						["optic_mas_term",nil,8845]
					]
				];
			};
		};
	};

	case "tla_basic":
	{
		switch(true) do
		{
			case (playerSide != east): {"You are not TLA!"};
			default
			{
				["TLA Weapons",
					[
						["hgun_Rook40_F",nil,1500],
						["hgun_Pistol_heavy_02_F",nil,2500],
						["hgun_ACPC2_F",nil,4500],
						["hgun_PDW2000_F",nil,9500],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75],
						["hgun_mas_sa61_F",nil,9000],
						["20Rnd_mas_765x17_Mag",nil,145],
						["hgun_mas_grach_F",nil,5000],
						["17Rnd_mas_9x21_Mag",nil,145],
						["13Rnd_mas_9x21_Mag",nil,145],											
						["hgun_mas_mak_F",nil,5000],
						["8Rnd_mas_9x18_Mag",nil,145],
						["arifle_mas_ak_74m",nil,98000],
						["arifle_mas_ak_74m_c",nil,98000],
						["arifle_mas_ak_74m_sf",nil,128000],
						["arifle_mas_ak_74m_gl",nil,120000],
						["arifle_mas_aks74",nil,98000],
						["arifle_mas_aks74_gl",nil,120000],	
						["30Rnd_mas_545x39_mag",nil,125],	
						["30Rnd_mas_545x39_T_mag",nil,145],							
						["arifle_mas_akms",nil,120000],
						["arifle_mas_akm",nil,120000],							
						["30Rnd_mas_762x39_mag",nil,135],	
						["30Rnd_mas_762x39_T_mag",nil,155],					
						["arifle_mas_aks74u",nil,120000],
						["arifle_mas_aks74u_c",nil,120000],							
						["30Rnd_mas_545x39_mag",nil,125],	
						["30Rnd_mas_545x39_T_mag",nil,145],								
						["arifle_mas_bizon",nil,98000],
						["64Rnd_mas_9x18_mag",nil,145],							
						["arifle_mas_saiga",nil,78000],
						["10Rnd_mas_12Gauge_Slug",nil,245],
						["10Rnd_mas_12Gauge_Pellets",nil,245],						
						["srifle_mas_svd",nil,335000],
						["10Rnd_mas_762x54_mag",nil,345],
						["10Rnd_mas_762x54_T_mag",nil,345],							
						["LMG_mas_rpk_F",nil,235000],
						["100Rnd_mas_545x39_mag",nil,545],
						["100Rnd_mas_545x39_T_mag",nil,545],												
						["LMG_mas_pkm_F",nil,235000],
						["100Rnd_mas_762x54_mag",nil,645],
						["100Rnd_mas_762x54_T_mag",nil,645]
						
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Takistan General Store",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
};
