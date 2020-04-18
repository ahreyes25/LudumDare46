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
		
		var _throw_dist = obj_throw_stats.throw_distance != "" ? real(obj_throw_stats.throw_distance) : 0;
		obj_throw_stats.throw_distance = string(_throw_dist + 1);
		
		// Check For Landing On Water
		if (path_position == 1) {
			state = "float";
			obj_game_controller.need_to_clear_surface = true;
		}
		break;
		
	case "float":
		// Hit Land
		if (!collision_point(x, y, obj_solid, false, false)) {
			instance_destroy();
			camera_set_focus_point(rod.camera_x, rod.camera_y, -1);
			camera_reset_zoom_factor();
		}
		
		// Return
		if (mouse_check_button_pressed(mb_left))
			state = "return";
			
		//meter_create(id);
		//instance_destroy();
		break;
		
	case "return":
		break;
}