var _camera = camera_get_current();

if (exists(_camera)) {
	_camera.leading_x = _camera.leading_x_base;
	return true;
}
return false;