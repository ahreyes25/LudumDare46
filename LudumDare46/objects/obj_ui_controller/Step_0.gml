#region Resolution & HUD
debugging_res	= obj_debug.debug && keyboard_check(ord("C"));
debugging_hud	= obj_debug.debug && keyboard_check(ord("H"));
depth			= obj_debug.depth - 1;

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
if (mouse_check_button_pressed(mb_left) && mouse_touching_edges()) {
	// Left
	if (window_mouse_get_x() < surface_get_width(application_surface) / 2 && 
		window_mouse_get_y() > 100 && window_mouse_get_y() < surface_get_height(application_surface) - 100)
			camera_set_focus_point(obj_camera.x - obj_camera.width / 2, obj_camera.y, -1);
	// Right
	else if (window_mouse_get_x() > surface_get_width(application_surface) / 2 && 
		window_mouse_get_y() > 100 && window_mouse_get_y() < surface_get_height(application_surface) - 100)
			camera_set_focus_point(obj_camera.x + obj_camera.width / 2, obj_camera.y, -1);
	// Up
	else if (window_mouse_get_y() < surface_get_height(application_surface) / 2)
		camera_set_focus_point(obj_camera.x, obj_camera.y - obj_camera.height / 2, -1);	
	// Down
	else
		camera_set_focus_point(obj_camera.x, obj_camera.y + obj_camera.height / 2, -1);
}