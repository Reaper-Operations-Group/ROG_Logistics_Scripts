/*
	Author: Kieran

	Description:
		Returns the player given a uid

	Parameter(s):
		0: NUMBER - uid of the player

	Returns:
		<return type>

	Examples:
		fn_getPlayerByUID = compile preprocessFile "scripts\database\functions\fn_getPlayerByUID.sqf";
		_player = [1111111111] call fn_getPlayerByUID;
*/

params ["_uid"];

_player = "extDB3" callExtension format ["0:SQL:getPlayerByUID:%1",_uid];

hint _player;
