var _player = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_player_parent, false, false);

// Always Lock Cursor Influence
if (defined(_player))
	camera_set_cursor_influence(false);
	
// Destroy
if (!defined(_player) && destroy && triggered)
	instance_destroy();

#region Player Enter Zone -- Lock Camera
if (defined(_player) && !triggered) {
	// Lock Camera To Center This Lock Object
	var _xx = (bbox_left + bbox_right)  / 2;
	var _yy = (bbox_top  + bbox_bottom) / 2;
	
	if (defined(lock_time))
		camera_set_lock([_xx, _yy], lock_time);
	else
		camera_set_lock([_xx, _yy]);
		
	#region Zoom Camera In to Best Possible Fit
	if (zoom_to_fit) {

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
					camera_set_zoom_factor(_zoom_factor);
				}
				// Zoom Camera Out --> Decrease Zoom Factor
				else {
					var _zoom_factor = round_tenths(_camera.width / sprite_width);
					camera_set_zoom_factor(_zoom_factor);
				}
			}
			// Match Height
			else {
				// Zoom Camera In --> Increase Zoom Factor
				if (_camera.height > sprite_height) {
					var _zoom_factor = round_tenths(sprite_height / _camera.height);
					camera_set_zoom_factor(_zoom_factor);
				}
				// Zoom Camera Out --> Decrease Zoom Factor
				else {
					var _zoom_factor = round_tenths(_camera.height / sprite_height);
					camera_set_zoom_factor(_zoom_factor);
				}
			}
		}
	}
	#endregion
	
	triggered	= true;
	reset		= false;
}
#endregion
#region Player Exits Zone -- Unlock Camera
else if (!defined(_player) && !reset) {
	if (retrigger)
		triggered = false;
		
	if (unlock_on_player_exit)
		camera_reset_lock();
	
	if (zoom_to_fit)		
		camera_reset_zoom_factor_soft();
		
	camera_set_room_restrict(true);
	camera_set_cursor_influence(true);
	reset = true;
}
#endregion