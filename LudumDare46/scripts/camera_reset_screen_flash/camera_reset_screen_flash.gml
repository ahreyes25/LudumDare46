var _camera = camera_get_current();

if (exists(_camera)) {
	_camera.screen_flash_alpha	= 0;
	_camera.screen_flash_decay	= _camera.screen_flash_decay_base;
	_camera.screen_flash_color	= _camera.screen_flash_color_base;
	return true;
}
return false;