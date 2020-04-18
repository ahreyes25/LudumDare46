/// @description	Delete any animate_object that exists with an associated state that is
///					the same as the state passed into this script.
/// @param owner

var _owner = argument0;

with (obj_animate_object)
	if (owner == _owner)
		instance_destroy();