/// @param value
/// @param min
/// @param max

var _value	= argument0;
var _min	= argument1;
var _max	= argument2;

if (_value > _max)
	_value = _min + (_value mod _max) - 1;
return _value;