switch (state) {
	
	case "throw":
		// Create Launch Path
		if (defined(target_x) && defined(target_y)) {
			if (path_get_number(path) == 0) {
				path_add_point(path, x, y, 100);
		
				var _len = point_distance(x, y, target_x, target_y) / 2;
				var _dir = point_direction(x, y, target_x, target_y);
				path_add_point(path, x + lengthdir_x(_len, _dir), y + lengthdir_y(_len, _dir) - random_range(100, 200), 100);
		
				path_add_point(path, target_x, target_y, 100);
				path_start(path, launch_speed, path_action_stop, false);
			}
		}
		
		var _throw_dist = obj_sidebar_right.throw_distance != "" ? real(obj_sidebar_right.throw_distance) : 0;
		obj_sidebar_right.throw_distance = string(_throw_dist + 1);
		
		// Check For Landing On Water
		if (path_position == 1) {
			// Hit Land
			if (!collision_point(x, y, obj_solid, false, false)) {
				state = "return";
				sfx_play(sfx_reel);
				sfx_play(sfx_ground_hit);
			}
			else {
				state = "float";
				sfx_stop(sfx_reel);
				sfx_play(sfx_splash);
			}
			obj_game_controller.need_to_clear_surface = true;
		}
		
		// Return
		if (mouse_check_button_pressed(mb_left)) {
			path_clear_points(path);
			state = "return";
			obj_game_controller.need_to_clear_surface = true;
		}
		break;
		
	case "float":
		sfx_stop(sfx_reel);
		
		// Return
		if (mouse_check_button_pressed(mb_left) && !exists(obj_meter)) {
			path_clear_points(path);
			state = "return";
			sfx_play(sfx_reel);
		}
		break;
		
	case "return":
		if (path_get_number(path) == 0) {
			path_add_point(path, x, y, 100);
		
			var _len = point_distance(x, y, start_x, start_y) / 2;
			var _dir = point_direction(x, y, start_x, start_y);
			path_add_point(path, x + lengthdir_x(_len, _dir), y + lengthdir_y(_len, _dir) - random_range(50, 100), 100);
		
			path_add_point(path, start_x, start_y, 100);
			path_start(path, 20, path_action_stop, false);
		}
		
		if (path_position == 1) {
			camera_set_focus_point(rod.camera_x, rod.camera_y, -1);
			camera_reset_zoom_factor_soft();
			instance_destroy();
		}
		break;
}
















