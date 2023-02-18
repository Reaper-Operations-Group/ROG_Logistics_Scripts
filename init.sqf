//Initalization Script. Executed when the mission is loaded

if (isServer) then {
	//Adding ROG Menu Action
	onPlayerConnected {[["ROG Menu", "scripts\rogMenu.sqf"]] call CBA_fnc_addPlayerAction;};

	//Run Script to check player
	[] execVM "scripts\database\checkJoinedPlayer.sqf";

	// Running extDB3 system commands
	_addDBMSG = "extDB3" callExtension "9:ADD_DATABASE:Database";
	_addPROTOMSG = "extDB3" callExtension "9:ADD_DATABASE_PROTOCOL:Database:SQL_CUSTOM:SQL:rog.ini";
	hint format ['Connected to DB || %1 || %2 ||', _addDBMSG, _addPROTOMSG];
};