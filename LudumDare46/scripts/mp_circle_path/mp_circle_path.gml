/// @description	Generate a circle path around a given point. The circle's smoothness is decided by subdivisions.
/// @param path
/// @param x
/// @param y
/// @param speed
/// @param subdivisions
/// @param parts
/// @param clockwise?*

var _path	= argument[0];
var _x		= argument[1];
var _y		= argument[2];
var _speed	= argument[3];
var _sub	= argument[4];
var _parts	= argument[5];
var _clock	= (argument_count == 7) ? argument[6] : true;
var _len	= point_distance( _x, _y, x, y);
var _dir	= point_direction(_x, _y, x, y);
var _count  = 0;

// Clockwise
if (_clock) {
	for (var i = _dir; i <= 360 + _dir; i += 360 / _sub) {
		if (_count >= _parts)
			break;
			
		var _px = lengthdir_x(_len, i);
		var _py = lengthdir_y(_len, i);
		path_add_point(_path, _x + _px, _y + _py, _speed);
		_count++;
	}
}
// Counterclockwise
else {
	for (var i = 360 + _dir; i >= 0; i -= 360 / _sub) {
		if (_count >= _parts)
			break;
			
		var _px = lengthdir_x(_len, i);
		var _py = lengthdir_y(_len, i);
		path_add_point(_path, _x + _px, _y + _py, _speed);
		_count++;
	}
}

if (path_get_number(_path) > 0)
	return true;
return false;