#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Takistan Police Department Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret set[count _ret,["demian2435_police_man_uniform","Patrol Uniform",25]];
		_ret set[count _ret,["demian2435_swat_leader_uniform","SWAT Leader",1480]];
		_ret set[count _ret,["demian2435_swat_sniper_uniform","SWAT Sniper",1340]];
		_ret set[count _ret,["demian2435_swat_man_uniform","SWAT Uniform",1280]];
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["U_B_CombatUniform_mcam_tshirt",nil,750]];
			_ret set[count _ret,["U_B_CombatUniform_mcam",nil,1250]];
			_ret set[count _ret,["U_B_CombatUniform_mcam_vest",nil,1250]];
			_ret set[count _ret,["U_B_CombatUniform_mcam_worn",nil,1250]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret set[count _ret,["U_mas_afr_B_uniform","UN Uniform 1",500]];
			_ret set[count _ret,["U_mas_afr_B_uniform_s","UN Uniform 2",500]];
			_ret set[count _ret,["U_mas_afr_B_contract2","UN Contractor 1",500]];
			_ret set[count _ret,["U_mas_afr_B_contract4","UN Contractor 2",500]];			
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			_ret set[count _ret,["rds_uniform_Policeman",nil,500]];		
		};
	};
	
	//Hats
	case 1:
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["demian2435_swat_leader_helmet","SWAT Leader Helmet",120]];
			_ret set[count _ret,["demian2435_sniper_cap","SWAT Sniper Cap",120]];
			_ret set[count _ret,["demian2435_swat_helmet","SWAT Helmet",120]];
		};
		
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret set[count _ret,["H_mas_afr_HelmetB","UN Helmet 1",100]];
			_ret set[count _ret,["H_mas_afr_beret_b","UN Beret 1",100]];
			_ret set[count _ret,["H_mas_afr_beret_bs","UN Beret 2",100]];
			_ret set[count _ret,["H_mas_afr_MilCap_b","UN Cap 1",70]];
			_ret set[count _ret,["H_mas_afr_MilCap_bs","UN Cap 2",70]];
			_ret set[count _ret,["H_mas_afr_Booniehat_b","UN Boonie 1",70]];
			_ret set[count _ret,["H_mas_afr_Booniehat_b2","UN Boonie 2",70]];
			_ret set[count _ret,["H_mas_afr_headset_b","UN Headset",70]];	
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			_ret set[count _ret,["rds_police_cap",nil,100]];	
		};
	};
	
	//Glasses
	case 2:
	{
		_ret = 
		[
			["Balaclava_Black","Balaclava",120],
			["Balaclava_GRY","Balaclava 2",120],
			["Balaclava_OD","Balaclava 3",120],
			["Mask_M40","Gas Mask 1",120],
			["Mask_M50","Gas Mask 2",170],
			["SAS_Shemagh_Tan","Shemagh 1",120],
			["NeckTight_Tan","Shemagh 2",120],
			["LCG_Shemagh_Tan","Shemagh 3",120],
			["LBG_Shemagh_Tan","Shemagh 4",120],
			["LOG_Shemagh_Tan","Shemagh 5",120],
			["PU_shemagh_Tan","Shemagh 6",120],
			["Shemagh_FaceTan","Shemagh 7",120],
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Aviator",nil,75],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		_ret set[count _ret,["demian2435_police_belt",nil,800]];
		_ret set[count _ret,["demian2435_police_vest",nil,800]];
		_ret set[count _ret,["V_mas_afr_PlateCarrierIA1_B",nil,1200]];
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["V_PlateCarrier2_rgr",nil,1500]];
		    _ret set[count _ret,["demian2435_swat_leader_vest",nil,1500]];
			_ret set[count _ret,["demian2435_sniper_vest",nil,1500]];
			_ret set[count _ret,["demian2435_swat_vest",nil,1500]];
		};
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_Kitbag_cbr",nil,800],
			["B_FieldPack_cbr",nil,500],
			["B_AssaultPack_cbr",nil,700],
			["B_Bergen_sgg",nil,2500],
			["B_Carryall_cbr",nil,3500]
		];
	};
};

_ret;