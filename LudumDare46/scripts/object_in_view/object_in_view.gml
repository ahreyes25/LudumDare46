/// @param instance

var _obj = argument0;
var _cam = camera_get_current();

if (exists(_cam)) {
	var _cam_x = _cam.x - (_cam.width  / 2);
	var _cam_y = _cam.y - (_cam.height / 2);

	return (
		_obj.bbox_right  > _cam_x && _obj.bbox_left < (_cam_x + _cam.width)  &&
		_obj.bbox_bottom > _cam_y && _obj.bbox_top  < (_cam_y + _cam.height)
	);
}
return false;