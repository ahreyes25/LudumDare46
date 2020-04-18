/// @param cursor_influence?

var _camera = camera_get_current();
if (exists(_camera)) {
	_camera.cursor_influence = argument0;
	return true;
}
return false;