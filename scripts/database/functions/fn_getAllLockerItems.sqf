/* 
 Author: Kieran 
 
 Description: 
  Returns the players from the database 
 
 Returns:
	 NOTE : an item looks like [classname, type] 
  HASHMAP = [ UID, [ [classname1,type1], [classname2,type2],........,[classname_n,type_n] ] ] 
 
 Examples: 
  _playerMap = call ROG_fnc_getAllLockerItems; 
*/  


// Calling the response from the database
_lockerItemsResponseStr = "extDB3" callExtension  
"0:SQL: 
SELECT concat('""',u.uid,'""'), concat('""',i.classname,'""'), concat('""',it.name,'""') FROM  
users AS u  
INNER JOIN lockeritem AS li 
 ON u.uid = li.uid 
INNER JOIN item as i 
 ON li.itemid = i.itemid 
INNER JOIN itemtype as it 
 ON it.id = i.typeid"; 
 
// Parsing the response string into an array
_lockerItemsResponseArr = parseSimpleArray _lockerItemsResponseStr;

// Checking for connection errors to the database 
_dbResponse = _lockerItemsResponseArr select 0; 
if (_dbResponse == 1) then { 
  
	//Grabbing items from the response array
	_lockerItemsArr = _lockerItemsResponseArr select 1;   
	_lockerItemsArr;
	
	//Creating a map with the classnames and uniforms of a player
	_prevArray = [];
	_lockerItemsMap = createHashMap;
	{
		_lockerItem = _x;
		if (_lockerItem select 0 in _lockerItemsMap) then {
			_prevArray = _lockerItemsMap get (_lockerItem select 0);
			_prevArray pushBack [_lockerItem select 1, _lockerItem select 2];
		} else {
			_lockerItemsMap set [_lockerItem select 0, [[_lockerItem select 1, _lockerItem select 2]]];
		}
				
	} forEach _lockerItemsArr;

	_lockerItemsMap;
				
} else { 
	 hint format ["Error code recieved with message : %1", _lockerItemsResponseArr select 1]; 
	_dbResponse; 
};