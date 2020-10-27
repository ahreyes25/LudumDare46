rot = lerp(rot, rot_target, 0.1);
alpha = lerp(alpha, alpha_target, 0.05);
scale = lerp(scale, scale_target, 0.1);

if (alarm[0] == -1) {
	if (move_dir == DIR.UP) {
		arrow_tick_pos += meter_speed;	
	
		if (arrow_tick_pos >= 100) {
			move_dir = DIR.DOWN;
			bounces++;
			sfx_play(sfx_meter_bounce);
		}
	}
	else {
		arrow_tick_pos -= meter_speed;	
	
		if (arrow_tick_pos <= 0) {
			if (bounces >= max_bounces) {
				state = "leave";
				sfx_play(sfx_fish_escape);
				obj_player.sad = true;
				obj_player.alarm[0] = 120;
				camera_set_screen_shake();
			}
			else {
				move_dir = DIR.UP;
				sfx_play(sfx_meter_bounce);
			}
		}
	}
	
	if (arrow_tick_pos mod (pixel_per_tick * 2) == 0 && state != "leave" && state != "wait")
		sfx_play(sfx_meter_tick);
}

// Click!
if (alarm[3] == -1 && mouse_check_button_pressed(mb_left)) {
	if (alarm[0] == -1) {
		meter_speed = 0;
	
		// Win
		if (arrow_tick_pos <= goal_ticks + goal_offset + 3 && arrow_tick_pos >= goal_offset - 3) {
			catch_reward(fish, "fish");
			scale = 1.3;
			state = "wait";
			alarm[2] = 10;
		}
		else {
			sfx_play(sfx_fish_escape);
			obj_player.sad = true;
			obj_player.alarm[0] = 120;
			camera_set_screen_shake();
			scale = 0.9;
			state = "wait";
			alarm[2] = 20;
		}
	}
	else {
		state = "leave";
		sfx_play(sfx_fish_escape);
		obj_player.sad = true;
		obj_player.alarm[0] = 120;
		camera_set_screen_shake();
	}
	alarm[3] = 60 * 5;
}

if (state == "leave") {
	alpha_target	= 0;
	//scale_target	= 0;
	surf_y += 50;
	
	if (alarm[1] == -1)
		alarm[1] = 30;
}