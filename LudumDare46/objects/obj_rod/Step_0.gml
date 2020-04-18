// Plant Rod
var _solid = collision_point(x, y, obj_solid, false, false);
if (!_solid && mouse_check_button_pressed(mb_left) && !defined(anchor_x) && !defined(anchor_y)) {
	anchor_x = mouse_x;
	anchor_y = mouse_y;
}

// Release Rod
if (mouse_check_button_released(mb_left)) {
	if (defined(anchor_x) && defined(anchor_y)) {	
		lure				= instance_create_layer(x, y, "Instances", obj_lure);
		lure.rod			= id;
		lure.target_x		= anchor_x + _len_x2;
		lure.target_y		= anchor_y + _len_y2;
		lure.launch_speed	= launch_speed;
		launched_x			= x;
		launched_y			= y;
	}
}