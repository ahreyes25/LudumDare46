if (mouse_check_button_pressed(mb_left)) {
	if (!clicked)
		clicked = true;
	else {
		if (!obj_game_controller.how_to_play)
			room_transition(rm_forest_0);
		else {
			room_transition(rm_title);
			obj_game_controller.how_to_play = false;
		}
	}
}