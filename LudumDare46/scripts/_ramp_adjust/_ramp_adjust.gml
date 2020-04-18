// Horizontal Ramps
if (exists(obj_ramp_horiz)) {
	var _ramp_horiz = collision_point(x, y, obj_ramp_horiz, false, false);
	if (defined(_ramp_horiz)) {
		var _vertical_adjust = 2 * slow_factor;
		// Move Up Ramp
		if (sign(image_xscale) == sign(_ramp_horiz.image_xscale)) {
			if (hspd != 0 && !place_meeting(x, y - _vertical_adjust, obj_solid))
				y -= _vertical_adjust;
		}
		// Move Down Ramp
		else if (sign(image_xscale) == sign(_ramp_horiz.image_xscale) * -1) {
			if (hspd != 0 && !place_meeting(x, y + _vertical_adjust, obj_solid))
				y += _vertical_adjust;
		}
	}
}

// Vertical Ramps
if (exists(obj_ramp_vert) || exists(obj_ramp_horiz)) {
	var _ramp_vert			= collision_point(x, y, obj_ramp_vert,  false, false);
	var _ramp_horiz			= collision_point(x, y, obj_ramp_horiz, false, false);
	var _vertical_adjust	= 1 * slow_factor;
	
	if (defined(_ramp_vert) || (defined(_ramp_horiz) && _ramp_horiz.apply_vertical)) {
		// Move Up Ramp
		if (facing == DIR.UP) {
			if (vspd != 0 && !place_meeting(x, y - _vertical_adjust, obj_solid))
				y += _vertical_adjust;
		}	
		// Move Down Ramp	
		if (facing == DIR.DOWN) {
			if (vspd != 0 && !place_meeting(x, y + _vertical_adjust, obj_solid))
				y += _vertical_adjust;	
		}
	}
}