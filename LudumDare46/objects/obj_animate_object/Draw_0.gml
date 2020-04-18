if (timer_stopped(timer_delay)) {
	image_speed = image_spd_base * slow_factor;	

	if (!defined(draw_script) && defined(sprite_index))
		draw_self();
	else
		script_execute(draw_script);
}
else
	image_index = 0;