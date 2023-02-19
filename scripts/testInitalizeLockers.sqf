 //----------------------------------------------- 
 //Generating Lockers on intialization 
 _lockerItems = call ROG_fnc_getAllLockerItems; 
 _players = call ROG_fnc_getAllPlayers; 
 
_lockerArr = [];
{ 
	_object = _x; 
	_lockerArr pushBack _object; 
} forEach entities "Metal_Locker_F"; 


_i = 0;
{
	_locker = _lockerArr select _i;
	_items = [_x] call ROG_fnc_getLockerItemsByUID;
	{
		_item = _x select 0;
		_type = _x select 1;
		if (_type == "Backpack") then {
			_locker addBackpackCargoGlobal [_item,1];
		} else {
			_locker addItemCargoGlobal [_item,1]; 
		};
		
	} forEach _items;
	_i = _i + 1;
} forEach _players;