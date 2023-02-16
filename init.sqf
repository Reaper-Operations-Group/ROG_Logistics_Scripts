/*
This script is executed when a mission is loaded
 */

// Checking if multiplayer or single player
if (isServer) then {
	hint "Server Detected";

	_actionIndex = [["ROG Menu", "scripts\rogMenu.sqf"]] call CBA_fnc_addPlayerAction;
};