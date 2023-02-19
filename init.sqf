//Initalization Script. Executed when the mission is loaded

if (isServer) then {
	// Running extDB3 system commands
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
	onPlayerConnected{
		
		//Adding Menu Action
		[["ROG Menu", "scripts\rogMenu.sqf"]] call CBA_fnc_addPlayerAction;

		if (_uid in ROG_LockerUIDs) then {
			//Player locker was already loaded
			hint "Already Loaded Player";
		} else {
			//Player locker not loaded
			//hint "Player not loaded";
			[LockerArr, ROG_LockerCounter, _uid] call ROG_fnc_initPlayerLocker;
			ROG_LockerUIDs set [_uid, 1];
			ROG_LockerCounter = ROG_LockerCounter + 1;
		};
		
	};
};