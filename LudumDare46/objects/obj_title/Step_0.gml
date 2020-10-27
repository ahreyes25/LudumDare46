var _text		= obj_game_controller.new_game ? "New Game" : "Continue Game";
var _erase_text = erasing_save ? "Are You Sure? Click Again To Confirm." : "Reset Save File";
menu_options	= [
	_text, 
	"How To Play", 
	"Choose Difficulty", 
	"Toggle Fullscreen", 
	"Toggle Sound", 
	_erase_text,
	"Exit Game"
];


menu_index = clamp((device_mouse_y_to_gui(0) - menu_y) div (string_height("A") * 2), 0, array_length_1d(menu_options) - 1);

if (mouse_check_button_pressed(mb_left)) {
	switch (menu_index) {
		case 0:
			if (!obj_game_controller.new_game || obj_game_controller.did_tutorial)
				room_transition(region_to_room(obj_game_controller.last_region));
			else {
				obj_game_controller.did_tutorial = true;
				room_transition(rm_tutorial);
			}
			load_game();
			obj_game_controller.new_game = false;
			break;
		case 1:
			obj_game_controller.how_to_play = true;
			obj_game_controller.did_tutorial = true;
			room_transition(rm_tutorial);
			break;
		case 2:
			obj_game_controller.choose_difficulty = true;
			room_transition(rm_difficulty);
			break;
		case 3:
			window_set_fullscreen(!window_get_fullscreen());
			break;
		case 4:
			global.sound_mult = !global.sound_mult;
			audio_master_gain(global.sound_mult);
			break;
		case 5:
			if (erasing_save) {
				reset_save_file();
				erasing_save = false;
			}
			else
				erasing_save = true;
			break;
		case 6:
			room_transition(rm_outro_0);
			break;
	}
	sfx_play(sfx_memu_select);
}