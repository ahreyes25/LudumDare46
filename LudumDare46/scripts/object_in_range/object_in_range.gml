/// @param id
/// @param range

var _object = argument0;
var _range  = argument1;

if (exists(_object)) {
	if (distance_to_object(_object) <= _range) {
	
		if (variable_instance_exists(id, "origin_x"))
			var _x = origin_x;
		else
			var _x = x;
			
		if (variable_instance_exists(id, "origin_y"))
			var _y = origin_y;
		else
			var _y = y;
	
		var _return_object = collision_circle(_x, _y, _range, _object, false, true);
	
		if (defined(_return_object))
			return _return_object;
	}
}
return undefined;