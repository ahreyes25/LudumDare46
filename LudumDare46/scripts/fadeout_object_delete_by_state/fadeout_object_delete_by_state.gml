/// @description	Delete any fadeout_object that exists with an associated state that is
///					the same as the state passed into this script.
/// @param state

var _state = argument0;

with (obj_fadeout_object)
	if (defined(state_bind) && state_bind == _state)
		instance_destroy();