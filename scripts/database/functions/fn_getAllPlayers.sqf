/*
	Author: Kieran

	Description:
		Returns the players from the database

	Returns:
		<return type>

	Examples:
		fn_getAllPlayers = compile preprocessFile "scripts\database\functions\fn_getAllPlayers.sqf";
		_player = call fn_getAllPlayers;
*/
_players = "extDB3" callExtension "0:SQL:SELECT * FROM users";
_players;