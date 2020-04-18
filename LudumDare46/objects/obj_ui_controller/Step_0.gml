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
	alarm[0] = 1;
	
	update_res = false;
	init_load  = false;
}
#endregion
#endregion

