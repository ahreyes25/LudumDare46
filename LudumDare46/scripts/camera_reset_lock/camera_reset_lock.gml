var _camera = camera_get_current();
if (exists(_camera)) {
	_camera.lock_time_x	= undefined;
	_camera.lock_time_y	= undefined;
	_camera.lock_x		= undefined;
	_camera.lock_y		= undefined;
	_camera.alarm[_camera.timer_lock_x] = -1;
	_camera.alarm[_camera.timer_lock_y] = -1;
	return true;
}
return false;