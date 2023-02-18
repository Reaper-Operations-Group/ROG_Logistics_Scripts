/*
	Author: Kieran

	Description:
		Returns the items from the database

	Returns:
		<return type>

	Examples:
		fn_getAllItems = compile preprocessFile "scripts\database\functions\fn_getAllItems.sqf";
		_items = call fn_getAllItems;
*/
_items = "extDB3" callExtension "0:SQL:SELECT * FROM item";
_items;