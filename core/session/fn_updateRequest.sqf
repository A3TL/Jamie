/*
	File: fn_updateRequest.sqf
	Author: Tonic
*/
private["_packet","_array","_flag"];
_packet = [getPlayerUID player,(profileName),playerSide,life_cash,life_atmcash];
_array = [];
_flag = switch(playerSide) do {case west: {"cop"}; case civilian: {"civ"}; case independent: {"med"}; case east: {"tla"};};
{
	if(_x select 1 == _flag) then
	{
		_array set[count _array,[_x select 0,(missionNamespace getVariable (_x select 0))]];
	};
} foreach life_licenses;
_packet set[count _packet,_array];

if(playerSide != west) then {
[] call life_fnc_saveGear;
};

_packet set[count _packet, life_gear];
switch (playerSide) do {
	case civilian: {
		_packet set[count _packet,life_is_arrested];
	};
};

case east: {
[] call life_fnc_tlaSaveGear;
_packet set[count _packet,tla_gear];
};

[_packet,"DB_fnc_updateRequest",false,false] spawn life_fnc_MP;