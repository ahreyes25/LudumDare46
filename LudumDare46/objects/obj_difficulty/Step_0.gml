menu_index = clamp((device_mouse_y_to_gui(0) - menu_y) div (string_height("A") * 2), 0, array_length_1d(menu_options) - 1);

if (mouse_check_button_pressed(mb_left)) {
	switch (menu_index) {
		case 0:
			obj_game_controller.multiplier = 1;
			room_transition(rm_title);
			break;
		case 1:
			obj_game_controller.multiplier = 2;
			room_transition(rm_title);
			break;
		case 2:
			obj_game_controller.multiplier = 3;
			room_transition(rm_title);
			break;
	}
	global_rod_data();
	global_lure_data();
	global_fish_data();
	global_region_data();
	sfx_play(sfx_memu_select);
}