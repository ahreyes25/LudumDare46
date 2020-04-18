var _sh = (sprite_get_height(spr_boat_side) * player.boat_scale) / 2;
x = obj_camera.x;
y = obj_camera.y + (obj_camera.height * obj_camera.zoom_factor) / 2 - _sh;

// Cursor Coords
if (mouse_check_button(mb_left) && defined(anchor_x) && defined(anchor_y)) {
	var _len	= point_distance(mouse_x, mouse_y, anchor_x, anchor_y);
	var _dir	= point_direction(mouse_x, mouse_y, anchor_x, anchor_y);
	var _len_x	= lengthdir_x(_len * 2, _dir);
	var _len_y	= lengthdir_y(_len * 2, _dir);	
	cursor_x = anchor_x + _len_x;
	cursor_y = anchor_y + _len_y;
}

// Plant Rod
if (mouse_check_button_pressed(mb_left) && !defined(lure)) {
	anchor_x = mouse_x;
	anchor_y = mouse_y;
	camera_x = obj_camera.x;
	camera_y = obj_camera.y;
}

// Release Rod
if (mouse_check_button_released(mb_left) && !defined(lure)) {
	if (defined(anchor_x) && defined(anchor_y)) {	
		lure				= instance_create_layer(x, y, "Instances", obj_lure);
		lure.rod			= id;	
		player.lure			= lure;
		lure.player			= player;
		lure.type			= lure_type;
		lure.desired_x		= cursor_x;
		lure.desired_y		= cursor_y;
		lure.target_x		= cursor_x + (miss_aim * random(shake * percent(1 - accuracy)) * choose(-1, 1));
		lure.target_y		= cursor_y + (miss_aim * random(shake * percent(1 - accuracy)) * choose(-1, 1));
		lure.launch_speed	= launch_speed;
		launched_x			= x;
		launched_y			= y;
		cursor_x			= undefined;
		cursor_y			= undefined;
		
		camera_set_zoom_factor(1, -1);
		camera_set_focus_target(lure, -1);
		obj_camera.focus_point_x = undefined;
		obj_camera.focus_point_y = undefined;
	}
}