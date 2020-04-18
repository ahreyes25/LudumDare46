var _camera = camera_get_current();
if (exists(_camera)) {
	_camera.zoom_factor			= _camera.zoom_factor_base;
	_camera.zoom_speed			= _camera.zoom_speed_base;
	_camera.zoom_factor_target	= undefined;
	_camera.zoom_time			= undefined;
	timer_stop(_camera, _camera.timer_zoom_time);
	return true;
}
return false;