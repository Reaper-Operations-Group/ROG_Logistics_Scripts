/*
	Author: Kieran

	Description:
		Returns the locker items from the database

	Returns:
		<return type>

	Examples:
		fn_getAllLockerItems = compile preprocessFile "scripts\database\functions\fn_getAllLockerItems.sqf";
		_lockerItems = call fn_getAllLockerItems;
*/
_lockerItems = "extDB3" callExtension "0:SQL:SELECT * FROM item";
_lockerItems;