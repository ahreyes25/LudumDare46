var _camera = camera_get_current();
if (exists(_camera)) {
	_camera.focus_target			= _camera.focus_target_base;
	_camera.focus_point_x			= undefined;
	_camera.focus_point_y			= undefined;
	_camera.move_to_factor			= _camera.move_to_factor_base;
	_camera.focus_time				= undefined;
	timer_stop(_camera, _camera.timer_focus_time);
	return true;
}
return false;