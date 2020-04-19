image_speed = 0.1;
image_index = irandom(image_number - 1);
radius = 64;

var _top_left		= collision_point(bbox_left, bbox_top, obj_solid, false, false)
var _top_right		= collision_point(bbox_right, bbox_top, obj_solid, false, false)
var _bottom_right	= collision_point(bbox_right, bbox_bottom, obj_solid, false, false)
var _bottom_left	= collision_point(bbox_left, bbox_bottom, obj_solid, false, false)

if (!_top_left || !_top_right || !_bottom_right || !_bottom_left)
	instance_destroy();