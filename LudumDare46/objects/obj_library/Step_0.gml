if (mouse_wheel_down())
	scroll_index += cell_height;
if (mouse_wheel_up())
	scroll_index -= cell_height;
index = clamp(((device_mouse_y_to_gui(0) - start_y) div cell_height), 0, ds_list_size(obj_player.fish_data) - 1);