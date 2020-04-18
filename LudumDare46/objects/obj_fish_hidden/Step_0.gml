var _lure = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_lure, false, false);
if (defined(_lure) && _lure.state == "float") {
	if (percent(0.01) && !defined(obj_player.meter))
		meter_create(_lure);
}