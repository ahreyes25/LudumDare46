var _camera = camera_get_current();

if (exists(_camera)) {
	_camera.lock_time_y	= undefined;
	_camera.lock_y		= undefined;
	alarm[_camera.timer_lock_y] = -1;
	return true;
}
return false;