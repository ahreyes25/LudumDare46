var _camera = camera_get_current();

if (exists(_camera)) {
	_camera.screen_shake_size = undefined;
	_camera.screen_shake_time = undefined;
	_camera.alarm[_camera.timer_screen_shake_time] = -1;
	return true;
}
return false;