var _player = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_player_parent, false, false);

// Destroy
if (!defined(_player) && destroy && triggered)
	instance_destroy();

// Player Enters Zone -- Focus Camera
if (defined(_player) && defined(focus_object) && !triggered) {
	if (defined(focus_time))
		camera_set_focus_target(focus_object, focus_time);
	else
		camera_set_focus_target(focus_object);
		
	if (zoom && defined(zoom_factor) && defined(zoom_duration) && defined(zoom_speed))
		camera_set_zoom_factor(zoom_factor, zoom_duration, zoom_speed);
	triggered = true;
}
else if (!defined(_player) && retrigger)
	triggered = false;