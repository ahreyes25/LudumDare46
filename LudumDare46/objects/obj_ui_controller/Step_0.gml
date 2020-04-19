#region Resolution & HUD
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
#endregion

// Move To New Area
if (!obj_game_controller.paused) {
	//if (mouse_check_button_pressed(mb_left) && mouse_touching_edges()) {
	//	// Left
	//	if (device_mouse_y_to_gui(0) < surface_get_width(application_surface) / 2 && 
	//		device_mouse_y_to_gui(0) > 100 && device_mouse_y_to_gui(0) < surface_get_height(application_surface) - 100)
	//			camera_set_focus_point(obj_camera.x - obj_camera.width / 2, obj_camera.y, -1);
	//	// Right
	//	else if (device_mouse_y_to_gui(0) > surface_get_width(application_surface) / 2 && 
	//		device_mouse_y_to_gui(0) > 100 && device_mouse_y_to_gui(0) < surface_get_height(application_surface) - 100)
	//			camera_set_focus_point(obj_camera.x + obj_camera.width / 2, obj_camera.y, -1);
	//	// Up
	//	else if (device_mouse_y_to_gui(0) < surface_get_height(application_surface) / 2)
	//		camera_set_focus_point(obj_camera.x, obj_camera.y - obj_camera.height / 2, -1);	
	//	// Down
	//	else
	//		camera_set_focus_point(obj_camera.x, obj_camera.y + obj_camera.height / 2, -1);
	//}

	if (keyboard_check_pressed(ord("A"))) {
		camera_set_focus_point(obj_camera.x - obj_camera.width / 2, obj_camera.y, -1);
		inventory_hide();
		merchant_hide();
	}
	if (keyboard_check_pressed(ord("D"))) {
		camera_set_focus_point(obj_camera.x + obj_camera.width / 2, obj_camera.y, -1);
		inventory_hide();
		merchant_hide();
	}
	if (keyboard_check_pressed(ord("W"))) {
		camera_set_focus_point(obj_camera.x, obj_camera.y - obj_camera.height / 2, -1);	
		inventory_hide();
		merchant_hide();
	}
	if (keyboard_check_pressed(ord("S"))) {
		camera_set_focus_point(obj_camera.x, obj_camera.y + obj_camera.height / 2, -1);
		inventory_hide();
		merchant_hide();
	}
}