if (defined(zoom_factor_target)) {
	// Gradual Zoom
	if (zoom_speed != -1) {
		if (zoom_factor > zoom_factor_target)
			zoom_factor -= zoom_speed * slow_factor;
		else if (zoom_factor < zoom_factor_target)
			zoom_factor += zoom_speed * slow_factor;
	}
	// Instant Snap
	else
		zoom_factor = zoom_factor_target;
}