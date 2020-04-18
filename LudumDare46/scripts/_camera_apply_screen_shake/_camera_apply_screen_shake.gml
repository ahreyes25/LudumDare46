if (defined(screen_shake_size)) {
	x += random_range(-screen_shake_size, screen_shake_size) * slow_factor; 
	y += random_range(-screen_shake_size, screen_shake_size) * slow_factor;
}