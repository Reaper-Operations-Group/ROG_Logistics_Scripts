/*
	Author: Kieran

	Description:
		Returns the items from the database

	Returns:
		<return type>

	Examples:
		_items = call ROG_fnc_getAllLockerItems;
*/
_items = "extDB3" callExtension "0:SQL:SELECT * FROM item";
_items;