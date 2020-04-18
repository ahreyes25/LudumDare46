var _lure = collision_circle(x, y, radius, obj_lure, false, false);
if (defined(_lure) && _lure.state == "float") {
	if (percent(0.01) && !defined(obj_player.meter)) {
		_lure.bubbles = id;
		meter_create(_lure);
	}
}