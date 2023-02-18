/*
	Author: Kieran

	Description:
		Returns the boolean value of an integer

	Parameters:
		0 : NUMBER

	Returns:
		BOOLEAN

	Examples:
		_bool = [0] call ROG_fnc_intToBool;
*/
params ["_num"];
if (_num==0) then{
	false;
} else {
	true;
};