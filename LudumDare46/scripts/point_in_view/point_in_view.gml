/// @param x
/// @param y

var _x		= argument0;
var _y		= argument1;
var _cam	= camera_get_current();

if (exists(_camera)) {
	var _cam_x = _cam.x - (_cam.width  / 2);
	var _cam_y = _cam.y - (_cam.height / 2);

	return (
		_x > _cam_x && _x < _cam_x + _cam.width &&
		_y > _cam_y && _y < _cam_y + _cam.height
	);
}
return false;