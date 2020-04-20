if (mouse_check_button_pressed(mb_any)) 
	room_transition(room + 1);
	
switch (room) {
	case rm_forest_0:
		global.tint_color = global.color_green;
		break;
		
	case rm_desert_0:
		global.tint_color = global.color_tan;
		break;
		
	case rm_glacier_0:
		global.tint_color = global.color_white;
		break;
		
	case rm_ocean_0:
		global.tint_color = global.color_blue;
		break;
}