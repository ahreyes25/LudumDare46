if (abs(zoom_factor - zoom_factor_target) <= 1 && timer_stopped(timer_zoom_time)) {
	timer_set(timer_zoom_time, zoom_time / slow_factor);
	zoom_time = undefined;
}