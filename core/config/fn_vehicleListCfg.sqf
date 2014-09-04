#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
		];
	};
	case "med_shop":
	{
		_return = [
			["C_Offroad_01_F",10000],
			["I_Truck_02_medical_F",25000],
			["O_Truck_03_medical_F",45000],
			["B_Truck_01_medical_F",60000]
		];
	};
	
	case "med_air_hs": {
		_return = [
			["B_Heli_Light_01_F",50000],
			["O_Heli_Light_02_unarmed_F",75000],
			["UH60M_MEV",90000]
		];
	};
	
	case "civ_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_F",9500],
			["C_Hatchback_01_sport_F",11500],
			["C_Offroad_01_F",12500],
			["C_SUV_01_F",35000],
			["C_Van_01_transport_F",40000],
			["RDS_Golf4_Civ_01",10000],
			["RDS_S1203_Civ_01",17500],
			["RDS_Octavia_Civ_01",13500],
			["RDS_Gaz24_Civ_01",12000],
			["RDS_Gaz24_Civ_02",12000],
			["RDS_Gaz24_Civ_03",12000],
			["RDS_Lada_Civ_01",15000],
			["RDS_Lada_Civ_02",15000],
			["RDS_Lada_Civ_03",15000],
			["RDS_Lada_Civ_04",15000]
		];
	};
	
	case "civ_truck":
	{
		_return =
		[
			["C_Van_01_box_F",60000],
			["I_Truck_02_transport_F",75000],
			["I_Truck_02_covered_F",100000],
			["B_Truck_01_transport_F",275000],
			["O_Truck_03_transport_F",200000],
			["O_Truck_03_covered_F",250000],
			["B_Truck_01_box_F",350000],
			["O_Truck_03_device_F",450000],
			["RDS_Ikarus_Civ_01",80000],
			["RDS_Ikarus_Civ_02",80000]
		];	
	};
	
	
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["B_G_Offroad_01_F",15000],
			["O_MRAP_02_F",150000],
			["B_Heli_Light_01_F",325000]
		];
		
		if(license_civ_rebel) then
		{
			_return set[count _return,
			["B_G_Offroad_01_armed_F",750000]];
		};
	};
	
	case "tla_car":
	{
		_return =
		[
			["I_mas_afr_Quadbike_01_F",2500],
			["I_mas_afr_Offroad_01_F",15000],
			["I_mas_afr_Offroad_01_armed_F",580000],
			["I_mas_afr_Truck_02_logistic_F",80000],
			["I_mas_afr_Truck_02_covered_F",80000],
			["I_mas_afr_Truck_02_transport_F",80000],
			["O_MRAP_02_F",125000],
			["O_MRAP_02_hmg_F",375000],
			["O_APC_Wheeled_02_rcws_F",475000],
			["B_Heli_Light_01_F",325000],
			["UH1H",425000]
		];
	};
	
	case "cop_car":
	{
		_return set[count _return,
		["C_Offroad_01_F",5000]];
		_return set[count _return,
		["C_SUV_01_F",10000]];
		_return set[count _return,
		["B_MRAP_01_F",50000]];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["B_mas_afr_Offroad_01_armed_F",85000]];
			_return set[count _return,
			["B_mas_afr_Truck_02_logistic_F",45000]];
			_return set[count _return,
			["B_mas_afr_Truck_02_medic_F",45000]];
			_return set[count _return,
			["B_mas_afr_Truck_02_covered_F",45000]];
			_return set[count _return,
			["B_mas_afr_Truck_02_transport_F",45000]];
			_return set[count _return,
			["B_mas_afr_MRAP_03_F",50000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["B_mas_afr_APC_Wheeled_01_Cannon_F",485000]];
			_return set[count _return,
            ["DAR_M1151",170000]];
			_return set[count _return,
			["DAR_M1151_Deploy",160000]];
			_return set[count _return,
			["DAR_M1152",180000]];
			_return set[count _return,
			["DAR_M1165_GMV",195000]];
			_return set[count _return,
			["DAR_MaxxPro",420000]];
		};
	};
	
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",253000],
			["MV22",300000],
			["IVORY_ERJ135_1",750000],
			["IVORY_CRJ200_1",750000],
			["GNT_C185",100000],
			["GNT_C185F",100000]
		];
	};
	
	case "cop_air":
	{
		_return set[count _return,
		["demian2435_police_helicopter",75000]];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["B_mas_afr_Heli_Light_02_unarmed_F",200000]];
			_return set[count _return,
			["UH1H",250000]];
			_return set[count _return,
			["UH60M",250000]];
			_return set[count _return,
			["UH60M_MEV",250000]];
			_return set[count _return,
			["MV22",250000]];
		};
	};
	
	case "cop_airhq":
	{
		_return set[count _return,
		["demian2435_police_helicopter",75000]];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["B_mas_afr_Heli_Light_02_unarmed_F",200000]];
			_return set[count _return,
			["UH1H",250000]];
			_return set[count _return,
			["UH60M",250000]];
			_return set[count _return,
			["UH60M_MEV",250000]];
			_return set[count _return,
			["CH_47F",250000]];	
			_return set[count _return,
			["MV22",250000]];			
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["globemaster_c17_NATO",300000]];
			_return set[count _return,
			["globemaster_c17_RAAF",300000]];	
		};
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
	};

	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_Boat_Armed_01_minigun_F",75000],
			["B_SDV_01_F",100000]
		];
	};
};

_return;
