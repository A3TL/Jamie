/*
	File: fn_civLoadout.sqf
	Author: Bryan "Tonic" Boardwine
	Edited: Itsyuka
	
	Description:
	Loads the civs out with the default gear.
*/
private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

_clothings = ["U_CAF_AG_ME_robes_01","U_CAF_AG_ME_robes_02","U_CAF_AG_ME_robes_03","U_CAF_AG_ME_robes_04","U_CAF_AG_ME_robes_01b","U_CAF_AG_ME_robes_02b","rds_uniform_Functionary1"];
player addUniform (_clothings select (floor(random (count _clothings))));

/* ITEMS */
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";

[] call life_fnc_saveGear;