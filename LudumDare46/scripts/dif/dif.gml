/// @param value1
/// @param value2
/// @param abs?*

#region Arguments
if (argument_count == 3) {
	var _v1  = argument[0];
	var _v2  = argument[1];
	var _abs = argument[2];
} 
else {
	var _v1  = argument[0];
	var _v2  = argument[1];
	var _abs = false;	
}
#endregion

if (_abs) {
	_v1 = abs(_v1);
	_v2 = abs(_v2);
}

return abs(_v1 - _v2);