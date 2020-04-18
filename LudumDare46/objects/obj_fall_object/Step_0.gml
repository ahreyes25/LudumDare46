switch (state) {
	case "fall":
		y			+= fall_speed	* slow_factor;
		fall_dist	+= fall_speed	* slow_factor;
		angle		+= rotation		* slow_factor;
		
		if (fall_dist > fall_dist_max)
			state = "grounded";
		break;
		
	case "grounded":
		if (timer_stopped(timer_fade))
			timer_set(timer_fade, fade_wait / slow_factor);
		break;
		
	case "fade_out":
		alpha -= fade_speed * slow_factor;
		
		if (alpha <= 0)
			state = "dead";
		break;
		
	case "dead":
		instance_destroy();
		break;
		
	// Run State Script
	default:
		if (defined(state) && script_exists(state))
			script_execute(state);
}	