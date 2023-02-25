//Initalization Script. Executed when the mission is loaded

if (isServer) then {
	// Running extDB3 system commands
	"extDB3" callExtension "9:RESET";
	_addDBMSG = "extDB3" callExtension "9:ADD_DATABASE:Database";
	_addPROTOMSG = "extDB3" callExtension "9:ADD_DATABASE_PROTOCOL:Database:SQL:SQL";
	hint format ['Connected to DB || %1 || %2 ||', _addDBMSG, _addPROTOMSG];

	//Initializing serverside global variable
	ROG_LockerCounter = 0;
	ROG_LockerUIDs = createHashMap;

	//Getting all lockers
	LockerArr = [];
	{ 
		_object = _x; 
		LockerArr pushBack _object; 
	} forEach entities "Metal_Locker_F"; 


	//-------------------------------------------------
	addMissionEventHandler ["PlayerConnected", {
		params ["_id", "_uid", "_name", "_jip", "_owner", "_idstr"];

		//Adding Menu Action
		[["ROG Menu", "scripts\rogMenu.sqf"]] call CBA_fnc_addPlayerAction;

		if (_uid in ROG_LockerUIDs) then {
			//Player locker was already loaded
			hint "Already Loaded Player";
		} else {
			//Player locker not loaded
			//hint "Player not loaded";

			//Checking if the UID is in the database already
			_players = call ROG_fnc_getAllPlayers;
			if (_uid in _players) then {
			
				//Initialize locker if already in the database
				_name = _players get _uid select 0;
				[LockerArr, ROG_LockerCounter, _uid, _name] call ROG_fnc_initPlayerLocker;
				ROG_LockerUIDs set [_uid, 1];
				ROG_LockerCounter = ROG_LockerCounter + 1;
			
			} else {

				// Insert the new player to the database
				_insertRespnseStr = "extDB3" callExtension format ["0:SQL:INSERT INTO users (uid, username) VALUES ('%1','%2')", _uid, [_name, "'", '"'] call CBA_fnc_replace ];

			}

		};
	}];

};