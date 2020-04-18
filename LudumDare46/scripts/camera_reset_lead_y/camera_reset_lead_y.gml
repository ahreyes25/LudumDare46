var _camera = camera_get_current();
if (exists(_camera)) {
	_camera.leading_y = _camera.leading_y_base;
	return true;
}
return false;