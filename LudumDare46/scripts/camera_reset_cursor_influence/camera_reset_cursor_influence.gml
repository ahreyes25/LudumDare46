var _camera = camera_get_current();

if (exists(_camera)) {
	_camera.cursor_influence = _camera.cursor_influence_base;
	return true;
}
return false;