/// @description	Get an fadeout_object that exists with the same as the state passed into this script.

/// @param state

var _state = argument0;

with (obj_fadeout_object)
	if (defined(state_bind) && state_bind == _state)
		return id;
return undefined;