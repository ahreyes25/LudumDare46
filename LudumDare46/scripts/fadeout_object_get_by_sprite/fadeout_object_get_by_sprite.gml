/// @description	Get an fadeout_object that exists with the same as the state passed into this script.

/// @param sprite_index

var _sprite = argument0;

with (obj_fadeout_object)
	if (sprite_index == _sprite)
		return id;
return undefined;