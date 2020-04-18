/// @param y
/// @param time*

var _camera		= camera_get_current();
var _y			= argument[0];
var _time		= (argument_count == 2) ? argument[1] : -1;

if (exists(_camera)) {
	_camera.lock_y		= _y;
	_camera.lock_time_y	= _time;
	return true;
}
return false;