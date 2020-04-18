var _player = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_player_parent, false, false);

// Destroy
if (!defined(_player) && destroy && triggered)
	instance_destroy();

#region Player Enter Zone -- Zoom Camera
if (defined(_player) && !triggered) {

	var _camera = camera_get_current();

	if (exists(_camera)) {
		// Check To See If Obejct Is Too Close To Room Edges
		if (bbox_left < _camera.width || bbox_right > room_width - _camera.width || bbox_top < _camera.height || bbox_bottom > room_height - _camera.height)
			camera_set_room_restrict(false);

		// Match Width
		if (sprite_width > sprite_height) {
			// Zoom Camera In --> Increase Zoom Factor
			if (_camera.width > sprite_width) {
				var _zoom_factor = round_tenths(sprite_width / _camera.width);
				if (defined(zoom_time))
					camera_set_zoom_factor(_zoom_factor, zoom_time);
				else
					camera_set_zoom_factor(_zoom_factor);
			}
			// Zoom Camera Out --> Decrease Zoom Factor
			else {
				var _zoom_factor = round_tenths(_camera.width / sprite_width);
				if (defined(zoom_time))
					camera_set_zoom_factor(_zoom_factor, zoom_time);
				else
					camera_set_zoom_factor(_zoom_factor);
			}
		}
		// Match Height
		else {
			// Zoom Camera In --> Increase Zoom Factor
			if (_camera.height > sprite_height) {
				var _zoom_factor = round_tenths(sprite_height / _camera.height);
				if (defined(zoom_time))
					camera_set_zoom_factor(_zoom_factor, zoom_time);
				else
					camera_set_zoom_factor(_zoom_factor);
			}
			// Zoom Camera Out --> Decrease Zoom Factor
			else {
				var _zoom_factor = round_tenths(_camera.height / sprite_height);
				if (defined(zoom_time))
					camera_set_zoom_factor(_zoom_factor, zoom_time);
				else
					camera_set_zoom_factor(_zoom_factor);
			}
		}
	}
	triggered = true;
}
#endregion

#region Player Exits Zone -- Zoom Out Camera
else if (!defined(_player)) {
	if (retrigger)
		triggered = false;
		
	// Zoom Out
	if (unzoom_on_player_exit) {
		camera_reset_zoom_factor_soft();
		
		// Reset Room Restrict
		camera_set_room_restrict(true);
	}
}
#endregion