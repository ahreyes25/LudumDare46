/// @description	Get an animate_object that exists with the same as the state passed into this script.

/// @param sprite_index
/// @param owner

var _sprite = argument0;
var _owner	= argument1;

with (obj_animate_object)
	if (sprite_index == _sprite && owner == _owner)
		return id;
return undefined;