/// @description	Return True or False, if the given value is in between two values

/// @param value
/// @param min
/// @param max
/// @param inclusive?*

#region Arguments
var _value	= argument[0];
var _min	= argument[1];
var _max	= argument[2];

if (argument_count == 4)
	var _inclusive = argument[3];
else
	var _inclusive = true;
#endregion
#region Swap Min & Max if Needed
if (_min > _max) {
	var _temp = _min;
	_min = _max;
	_max = _temp;
}
#endregion

if (_inclusive)
	return (_value >= _min && _value <= _max);
else
	return (_value > _min && _value < _max);