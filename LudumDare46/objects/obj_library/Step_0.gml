if (mouse_wheel_down())
	scroll_index -= cell_height;
if (mouse_wheel_up())
	scroll_index += cell_height;

if (exists(obj_player))
	index = clamp(((device_mouse_y_to_gui(0) - start_y) div cell_height), 0, ds_list_size(obj_game_controller.player_fish_data) - 1);
	
if (show && mouse_check_button_pressed(mb_left)) {
	var _mx = device_mouse_x_to_gui(0);	
	var _sw = surface_get_width(application_surface);
	
	if (_mx > _sw * 0.4 || mouse_outside_edges()) {
		show = false;	
	}
}