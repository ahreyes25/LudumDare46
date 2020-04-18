if (abs(zoom_factor - zoom_factor_target) <= 1 && alarm[timer_zoom_time] == -1) {
	alarm[timer_zoom_time] = zoom_time / slow_factor;
	zoom_time = undefined;
}