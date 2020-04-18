var _camera = camera_get_current();
if (exists(_camera)) {
	_camera.lock_time_x	= undefined;
	_camera.lock_time_y	= undefined;
	_camera.lock_x		= undefined;
	_camera.lock_y		= undefined;
	timer_stop(_camera, _camera.timer_lock_x);
	timer_stop(_camera, _camera.timer_lock_y);
	return true;
}
return false;