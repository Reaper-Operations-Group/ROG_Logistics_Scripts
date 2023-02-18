/*
	Author: Kieran

	Description:
		Returns the boolean value of an integer

	Parameters:
		0 : NUMBER

	Returns:
		BOOLEAN

	Examples:
		fn_intToBool = compile preprocessFile "scripts\functions\fn_intToBool.sqf";
		_bool = [0] call fn_intToBool;
*/
params ["_num"];
if (_num==0) then{
	false;
} else {
	true;
};