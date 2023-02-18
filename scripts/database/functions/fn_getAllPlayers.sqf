/*
	Author: Kieran

	Description:
		Returns the players from the database

	Returns:
		HASHMAP = [ UID, [Username, OpCount, balance, isAdmin, isTeamLead, isQuartermaster, isActive, isLocked] ]

	Examples:
		_playerMap = call ROG_fnc_getAllPlayers;
*/

// Calling the response from the database
_playersRespnseStr = "extDB3" callExtension "0:SQL:SELECT concat('""',uid,'""'), concat('""',username,'""') , opCount, balance, isAdmin, isTeamLead, isQuartermaster, isActive, isLocked FROM users;"; 

// Parsing the response string into an array
_playerResponseArr = parseSimpleArray _playersRespnseStr;

// Checking for connection errors to the database
_dbResponse = _playerResponseArr select 0;
if (_dbResponse == 1) then {
	
	_playerArr = _playerResponseArr select 1;
	
	//Going through the array and creating a hashmap.
	//Also converting the boolean values from the database.
	_playerMap = createHashMapFromArray _playerArr;
	{
		_playerData = _x;
		_playerMap set 
			[_x select 0, 
				[_x select 1, 
				 _x select 2, 
				 _x select 3, 
				 [_x select 4] call ROG_fn_intToBool, 
				 [_x select 5] call ROG_fn_intToBool, 
				 [_x select 6] call ROG_fn_intToBool, 
				 [_x select 7] call ROG_fn_intToBool, 
				 [_x select 8] call ROG_fn_intToBool
				]
			];
	} forEach _playerArr;
	_playerMap;
				 
} else {
	 hint format ["Error code recieved with message : %1", _playerResponseArr select 1];
	_dbResponse;
};
