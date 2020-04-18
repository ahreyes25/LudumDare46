var _camera = camera_get_current();

if (exists(_camera)) {
	_camera.screen_shake_size = undefined;
	_camera.screen_shake_time = undefined;
	timer_stop(_camera, _camera.timer_screen_shake_time);
	return true;
}
return false;