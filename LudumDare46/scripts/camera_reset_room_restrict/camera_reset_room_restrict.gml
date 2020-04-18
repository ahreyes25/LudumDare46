var _camera = camera_get_current();
if (exists(_camera)) {
	_camera.restrict_to_room = _camera.restrict_to_room_base;
	return true;
}
return false;