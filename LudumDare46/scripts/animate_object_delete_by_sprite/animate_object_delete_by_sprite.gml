/// @description	Delete any animate_object that exists with an associated state that is
///					the same as the state passed into this script.
/// @param sprite_index

var _sprite = argument0;

with (obj_animate_object)
	if (sprite_index == _sprite)
		instance_destroy();