// Plant Rod
var _solid = collision_point(x, y, obj_solid, false, false);
if (!_solid && mouse_check_button_pressed(mb_left) && !defined(lure)) {
	anchor_x = mouse_x;
	anchor_y = mouse_y;
}

// Release Rod
if (mouse_check_button_released(mb_left) && !defined(lure)) {
	if (defined(anchor_x) && defined(anchor_y)) {	
		lure				= instance_create_layer(x, y, "Instances", obj_lure);
		lure.rod			= id;	
		owner.lure			= lure;
		lure.owner			= owner;
		lure.type			= lure_type;
		var _len			= point_distance(x, y, anchor_x, anchor_y);
		var _dir			= point_direction(x, y, anchor_x, anchor_y);
		var _len_x			= lengthdir_x(_len * 2, _dir);
		var _len_y			= lengthdir_y(_len * 2, _dir);
		lure.target_x		= anchor_x + _len_x;
		lure.target_y		= anchor_y + _len_y;
		lure.launch_speed	= launch_speed;
		launched_x			= x;
		launched_y			= y;
		camera_x			= obj_camera.x;
		camera_y			= obj_camera.y;
		camera_set_zoom_factor(1, -1);
		camera_set_focus_target(lure, -1);
		obj_camera.focus_point_x = undefined;
		obj_camera.focus_point_y = undefined;
	}
}