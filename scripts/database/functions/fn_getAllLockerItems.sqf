/*
	Author: Kieran

	Description:
		Returns the locker items from the database

	Returns:
		<return type>

	Examples:
		_lockerItems = call ROG_fn_getAllLockerItems;
*/
_lockerItems = "extDB3" callExtension 
"0:SQL:
SELECT concat('""',u.uid,'""'), concat('""',i.classname,'""'), concat('""',it.name,'""') FROM 
users AS u 
INNER JOIN lockeritem AS li
	ON u.uid = li.uid
INNER JOIN item as i
	ON li.itemid = i.itemid
INNER JOIN itemtype as it
	ON it.id = i.typeid";
_lockerItems;