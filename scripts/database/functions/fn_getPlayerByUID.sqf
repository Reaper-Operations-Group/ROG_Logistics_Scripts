/*
	Author: Kieran

	Description:
		Returns the values associated with a player's locker items

	Parameters:
		0 : STRING - Player UID 

	Returns:
		ARRAY - [Username, OpCount, balance, isAdmin, isTeamLead, isQuartermaster, isActive, isLocked]

	Examples:
		_playerLockerData = [123123123] call ROG_fnc_getPlayerByUID;
*/
params ["_uid"];
_playerData = call ROG_fnc_getAllPlayers;

if (_uid in _playerData) then {
	_playerData get _uid;
} else {
	0;
}