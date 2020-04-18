/// @param restrict?

var _camera = camera_get_current();
if (exists(_camera)) {
	_camera.restrict_to_room = argument0;
	return true;
}
return false;