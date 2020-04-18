/// @description	Check if an animate_object currently exists that is associated
///					to the state passed into this script.

/// @param sprite_index

var _sprite = argument0;

with (obj_animate_object)
	if (sprite_index == _sprite)
		return true;
return false;