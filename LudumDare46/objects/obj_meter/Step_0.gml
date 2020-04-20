if (alarm[0] == -1) {
	if (move_dir == DIR.UP) {
		arrow_tick_pos += meter_speed;	
	
		if (arrow_tick_pos >= 100) {
			move_dir = DIR.DOWN;
			bounces++;
		}
	}
	else {
		arrow_tick_pos -= meter_speed;	
	
		if (arrow_tick_pos <= 0) {
			if (bounces >= max_bounces)
				instance_destroy();
			else
				move_dir = DIR.UP;
		}
	}

	// Click!
	if (mouse_check_button_pressed(mb_left)) {
		meter_speed = 0;
	
		// Win
		if (arrow_tick_pos <= goal_ticks)
			catch_reward(fish, "fish");
		instance_destroy();
	}
}