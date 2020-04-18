/// @param y

var _camera = camera_get_current();

if (exists(_camera)) {
	_camera.leading_y = argument0;
	return true;
}
return false;