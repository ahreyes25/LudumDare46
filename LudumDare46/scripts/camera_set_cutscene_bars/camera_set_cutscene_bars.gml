var _camera = camera_get_current();
if (exists(_camera)) {
	_camera.cutscene = true;
	timer_set(_camera, _camera.timer_cutscene_bars, 30);
	return true;
}
return false;