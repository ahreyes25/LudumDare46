depth = obj_ui_controller.depth - 1000;

switch (state) {
	case "fade_in":
		if (fade < 1)
			fade += fade_speed;
		else
			room_goto(next_room);
		break;
	
	case "fade_out":
		if (fade > 0)
			fade -= fade_speed;
		else
			state = "";
		break;
}