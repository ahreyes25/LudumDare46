/// @description Reset Burst

var _axe = collision_rectangle_bbox(obj_axe, false, false);
if (defined(_axe))
	timer_set(0, 1);
else
	burst = false;