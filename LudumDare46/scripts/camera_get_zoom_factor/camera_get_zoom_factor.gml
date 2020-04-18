var _camera = camera_get_current();

if (exists(_camera))
	return (_camera.zoom_factor);
return undefined;