/*
	Author: Kieran

	Description:
		Returns the values associated with a player's locker items

	Parameters:
		0 : STRING - Player UID 

	Returns:
		ARRAY - [ [classname, itemtype] ]

	Examples:
		_playerLockerData = [123123123] call ROG_fnc_getLockerItemsByUID;
*/
params ["_uid"];
_playerLockerItems = call ROG_fnc_getAllLockerItems;

if (_uid in _playerLockerItems) then {
	_playerLockerItems get _uid;
} else {
	0;
}