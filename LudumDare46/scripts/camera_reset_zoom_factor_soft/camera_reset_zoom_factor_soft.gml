var _camera = camera_get_current();
if (exists(_camera)) {
	_camera.zoom_factor_target	= _camera.zoom_factor_base;
	_camera.zoom_time			= -1;
	_camera.zoom_speed			= _camera.zoom_speed_base;
	return true;
}
return false;