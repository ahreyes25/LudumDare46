/// @param obj_instance*
/// @param x

var _obj = argument_count == 2 ? argument[0] : id;
var _x	 = argument_count == 2 ? argument[1] : argument[0];

if (_obj.slow_factor > 0) {
	if (_x > x)
		_obj.facing = DIR.RIGHT;
	else
		_obj.facing = DIR.LEFT;
}