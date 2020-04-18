/// @param id*

var _obj	= (argument_count == 1) ? argument[0] : id;
var _cam	= camera_get_current();
var _cush	= 128;

if (!exists(_obj) || !exists(_cam))	return false;

visible = (
	_obj.bbox_right  > (_cam.x - (_cam.width  / 2) - _cush) * _cam.zoom_factor &&
	_obj.bbox_left	 < (_cam.x + (_cam.width  / 2) + _cush) * _cam.zoom_factor &&
	_obj.bbox_bottom > (_cam.y - (_cam.height / 2) - _cush) * _cam.zoom_factor &&
	_obj.bbox_top	 < (_cam.y + (_cam.height / 2) + _cush) * _cam.zoom_factor
);
return true;