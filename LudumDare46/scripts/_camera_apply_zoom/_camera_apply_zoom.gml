if (defined(zoom_factor_target)) {
	// Gradual Zoom
	if (zoom_speed != -1)
		zoom_factor = lerp(zoom_factor, zoom_factor_target, zoom_speed * slow_factor);
	// Instant Snap
	else
		zoom_factor = zoom_factor_target;
}