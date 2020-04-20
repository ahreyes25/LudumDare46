#region New Screen Resolution
if (update_res) {
	window_set_size(width, height);
		
	// Maintain Aspect Ratio		
	if (width >= height)
		width = height * aspect_ratio;
		
	display_set_gui_size(width, height);
	surface_resize(application_surface, width, height);
	//surface_resize(bg_surface, surface_get_width(application_surface), surface_get_height(application_surface));
	
	// Center Window
	if (!centered) {
		alarm[0] = 1;
		centered = true;
	}
	
	update_res = false;
	init_load  = false;
}
#endregion

// Move To New Area -- Clicking
if (!obj_game_controller.paused && exists(obj_inventory) && !obj_inventory.show && exists(obj_player) && exists(obj_player.rod) && 
	!defined(obj_player.rod.lure) && exists(obj_shop) && !obj_shop.show && exists(obj_library) && !obj_library.show &&
	exists(obj_map) && !obj_map.show) {
		
	if (mouse_check_button_pressed(mb_left) && mouse_touching_edges()) {
		var _mx = device_mouse_x_to_gui(0);
		var _my = device_mouse_y_to_gui(0);
		var _sw = surface_get_width(application_surface);
		var _sh = surface_get_height(application_surface); 
		var _left_edge  = obj_ui_controller.outer_edge_width + obj_ui_controller.inner_edge_width;
		var _right_edge = _sw - obj_ui_controller.outer_edge_width - obj_ui_controller.inner_edge_width;
		
		// Left
		if (_mx > _left_edge && _mx < _right_edge) {
			if (_mx < _sw / 2 && _my > 100 && _my < _sh - 100) {
				camera_set_focus_point(obj_camera.x - obj_camera.width / 2, obj_camera.y, -1);
				sfx_play(sfx_page_turn);
			}
			// Right
			else if (_mx > _sw / 2 && _my > 100 && _my < _sh - 100) {
				camera_set_focus_point(obj_camera.x + obj_camera.width / 2, obj_camera.y, -1);
				sfx_play(sfx_page_turn);
			}
			// Up
			else if (_my < _sh / 2) {
				camera_set_focus_point(obj_camera.x, obj_camera.y - obj_camera.height / 2, -1);	
				sfx_play(sfx_page_turn);
			}
			// Down
			else {
				camera_set_focus_point(obj_camera.x, obj_camera.y + obj_camera.height / 2, -1);
				sfx_play(sfx_page_turn);
			}
		}
	}
}

// Move To New Area -- WASD
if (!obj_game_controller.paused && exists(obj_player) && exists(obj_player.rod) && !defined(obj_player.rod.lure)) {
	if (keyboard_check_pressed(ord("A"))) {
		camera_set_focus_point(obj_camera.x - obj_camera.width / 2, obj_camera.y, -1);
		inventory_hide();
		shop_hide();
		library_hide();
		map_hide();
		sfx_play(sfx_page_turn);
	}
	if (keyboard_check_pressed(ord("D"))) {
		camera_set_focus_point(obj_camera.x + obj_camera.width / 2, obj_camera.y, -1);
		inventory_hide();
		shop_hide();
		library_hide();
		map_hide();
		sfx_play(sfx_page_turn);
	}
	if (keyboard_check_pressed(ord("W"))) {
		camera_set_focus_point(obj_camera.x, obj_camera.y - obj_camera.height / 2, -1);	
		inventory_hide();
		shop_hide();
		library_hide();
		map_hide();
		sfx_play(sfx_page_turn);
	}
	if (keyboard_check_pressed(ord("S"))) {
		camera_set_focus_point(obj_camera.x, obj_camera.y + obj_camera.height / 2, -1);
		inventory_hide();
		shop_hide();
		library_hide();
		map_hide();
		sfx_play(sfx_page_turn);
	}
}