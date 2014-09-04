/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Clothes Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		["U_CAF_AG_ME_robes_01",nil,250],
		["U_CAF_AG_ME_robes_01a",nil,250],
		["U_CAF_AG_ME_robes_01b",nil,250],
		["U_CAF_AG_ME_robes_01c",nil,250],
		["U_CAF_AG_ME_robes_01d",nil,250],
		["U_CAF_AG_ME_robes_02",nil,250],
		["U_CAF_AG_ME_robes_02a",nil,250],
		["U_CAF_AG_ME_robes_02b",nil,250],
		["U_CAF_AG_ME_robes_02c",nil,250],
		["U_CAF_AG_ME_robes_03",nil,250],
		["U_CAF_AG_ME_robes_03a",nil,250],
		["U_CAF_AG_ME_robes_03b",nil,250],
		["U_CAF_AG_ME_robes_03c",nil,250],
		["U_CAF_AG_ME_robes_03d",nil,250],
		["U_CAF_AG_ME_robes_04",nil,250],
		["U_CAF_AG_ME_robes_04a",nil,250],
		["U_CAF_AG_ME_robes_04b",nil,250],
		["U_CAF_AG_ME_robes_04c",nil,250],
		["U_CAF_AG_ME_robes_04d",nil,250],
		["rds_uniform_Functionary1",nil,450],
		["rds_uniform_Functionary2",nil,450],
		["rds_uniform_Priest",nil,450],
		["rds_uniform_doctor",nil,450],
		["rds_uniform_schoolteacher",nil,450],
		["rds_uniform_assistant",nil,450],
		["U_C_Scientist",nil,450],
		["U_C_Journalist",nil,1050] 
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_caf_ag_paktol",nil,150],
			["H_caf_ag_paktol_02",nil,150],
			["H_caf_ag_paktol_03",nil,150],
			["H_caf_ag_paktol_04",nil,150],
			["H_caf_ag_wrap",nil,150],
			["H_caf_ag_turban",nil,150],
			["H_StrawHat",nil,150],
			["H_StrawHat_dark",nil,150],
			["H_Hat_blue",nil,150],
			["H_Hat_grey",nil,150],
			["H_Hat_brown",nil,150],
			["H_Hat_checker",nil,150],
			["H_Hat_tan",nil,150],
			["H_Cap_press",nil,350]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Aviator",nil,100],
			["G_Lady_Mirror",nil,150],
			["G_Lady_Dark",nil,150],
			["G_Lady_Blue",nil,150],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_Press_F",nil,950]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,2500],
			["B_Kitbag_mcamo",nil,4500],
			["B_TacticalPack_oli",nil,3500],
			["B_FieldPack_ocamo",nil,3000],
			["B_Bergen_sgg",nil,4500],
			["B_Kitbag_cbr",nil,4500],
			["B_Carryall_oli",nil,5000],
			["B_Carryall_khk",nil,5000]
		];
	};
};