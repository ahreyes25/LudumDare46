var _camera = camera_get_current();
if (exists(_camera)) {
	_camera.cutscene = true;
	alarm[_camera.timer_cutscene_bars] = 30;
	return true;
}
return false;