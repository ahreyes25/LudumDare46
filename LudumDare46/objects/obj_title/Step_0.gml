menu_index = clamp((device_mouse_y_to_gui(0) - menu_y) div (string_height("A") * 2), 0, array_length_1d(menu_options) - 1);

if (mouse_check_button_pressed(mb_left)) {
	switch (menu_index) {
		case 0:
			if (obj_game_controller.did_tutorial)
				room_transition(rm_forest_0);
			else {
				obj_game_controller.did_tutorial = true;
				room_transition(rm_tutorial);
			}
			break;
		case 1:
			obj_game_controller.how_to_play = true;
			obj_game_controller.did_tutorial = true;
			room_transition(rm_tutorial);
			break;
		case 2:
			window_set_fullscreen(!window_get_fullscreen());
			break;
		case 3:
			global.sound_mult = !global.sound_mult;
			audio_master_gain(global.sound_mult);
			break;
		case 5:
			room_transition(rm_outro_0);
			break;
	}
	sfx_play(sfx_memu_select);
}