/// @description	Delete any fadeout_object that exists with an associated state that is
///					the same as the state passed into this script.
/// @param sprite_index
/// @param owner

var _sprite = argument0;
var _owner  = argument1;

with (obj_fadeout_object)
	if (sprite_index == _sprite && owner == _owner)
		instance_destroy();