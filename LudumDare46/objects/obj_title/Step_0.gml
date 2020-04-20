menu_index = clamp((device_mouse_y_to_gui(0) - menu_y) div (string_height("A") * 2), 0, array_length_1d(menu_options) - 1);

if (mouse_check_button_pressed(mb_left)) {
	switch (menu_index) {
		case 0:
			room_transition(rm_forest_0);
			break;
		case 1:
			window_set_fullscreen(!window_get_fullscreen());
			break;
		case 2:
			global.sound_mult = !global.sound_mult;
			audio_master_gain(global.sound_mult);
			break;
	}
	sfx_play(sfx_memu_select);
}