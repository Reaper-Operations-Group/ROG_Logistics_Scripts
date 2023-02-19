 //----------------------------------------------- 
 //Generating Lockers on intialization 
 params ["_lockerArr", "_counter", "_uid"];
 _items = [_uid] call ROG_fnc_getLockerItemsByUID;
 
_locker = _lockerArr select _counter;
{
	_item = _x select 0;
	_type = _x select 1;
	if (_type == "Backpack") then {
		_locker addBackpackCargoGlobal [_item,1];
	} else {
		_locker addItemCargoGlobal [_item,1]; 
	};
	
} forEach _items;

