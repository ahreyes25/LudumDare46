/// @description	Always Face Direction Moving On Path
/// @param object_instance*
/// @param path

var _obj  = argument_count == 2 ? argument[0] : id;
var _path = argument_count == 2 ? argument[1] : argument[0];

if (!exists(_obj))	return;

if (_obj.slow_factor > 0) {
	with (_obj) {
		var _path_length = path_get_number(_path);
		var _current_path_point = floor(_path_length * path_position);

		if (_current_path_point + 1 <= _path_length - 1) {
			var _p1 = path_get_point_x(_path, _current_path_point);
			var _p2 = path_get_point_x(_path, _current_path_point + 1);
	
			if (_p2 > _p1)
				facing = DIR.RIGHT;
			else
				facing = DIR.LEFT;
		}
	}
}