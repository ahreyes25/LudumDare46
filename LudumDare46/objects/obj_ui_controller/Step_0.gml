debugging_res	= obj_debug.debug && keyboard_check(ord("C"));
debugging_hud	= obj_debug.debug && keyboard_check(ord("H"));
depth			= obj_debug.depth - 1;

#region Debug Res Menu
// Navigate
if (debugging_res) {
	if (keyboard_check_pressed(vk_up)) {
		if (menu_index > 0)
			menu_index--;
		else
			menu_index = menu_length - 1;
	}
	if (keyboard_check_pressed(vk_down)) {
		if (menu_index < menu_length - 1)
			menu_index++;
		else
			menu_index = 0;
	}
}

// Select
if (keyboard_check_pressed(vk_enter)) {
	if (menu_index == menu_length - 1)
		window_set_fullscreen(!window_get_fullscreen());
	else {
		var _res	= resolutions[menu_index];
		var _width	= _res[0];
		var _height	= _res[1];
		window_set_resolution(_width, _height);
	}
}
#endregion

#region New Screen Resolution
if (update_res) {
	
	window_set_size(width, height);
		
	// Maintain Aspect Ratio		
	if (width >= height)
		width = height * aspect_ratio;
		
	display_set_gui_size(width, height);
	surface_resize(application_surface, width, height);
	
	// Center Window
	if (!init_load)
		alarm[0] = 1;
	
	update_res = false;
	init_load  = false;
}
#endregion
