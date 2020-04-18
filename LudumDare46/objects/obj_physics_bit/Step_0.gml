switch (state) {
	#region Flying
	case "flying":
		
		// Dont Fly if Dropping
		if (drop) {
			state = "falling";
			return;
		}
		
		// Move
		x += dir_x * slow_factor;
		y += dir_y * slow_factor;
		
		// Rotate
		angle += angle_spd;
		if (angle_spd > 0)
			angle_spd -= angle_spd_dmp;
		else
			angle_spd += angle_spd_dmp;
		
		if (timer_stopped(timer_flying)) {
			timer_set(timer_falling, fall_time / slow_factor)
			state = "falling";
		}
		break;
	#endregion
		
	#region Falling
	case "falling":
		// Move
		x += dir_x * slow_factor;
		y -= dir_y * slow_factor;
		
		// Rotate
		angle += angle_spd;
		if (angle_spd > 0)
			angle_spd -= angle_spd_dmp * slow_factor;
		else
			angle_spd += angle_spd_dmp * slow_factor;
		
		if (timer_stopped(timer_falling)) {
			timer_set(timer_sitting, sit_time / slow_factor);
			state = "grounded";
		}
		break;
	#endregion
		
	#region Grounded
	case "grounded":
		depth_sort();
	
		if (timer_stopped(timer_sitting))
			state = "fading";
		break;
	#endregion
		
	#region Fading
	case "fading":
		depth_sort();
		
		alpha -= 0.01 * slow_factor;
		
		if (alpha <= 0)
			state = "destroy";
		break;
	#endregion
		
	#region Destroy
	case "destroy":
		instance_destroy();
		break;
	#endregion
}