/// @description	Check if an fadeout_object currently exists that is associated
///					to the state passed into this script.

/// @param state

var _state = argument0;

with (obj_fadeout_object)
	if (defined(state_bind) && state_bind == _state)
		return true;
return false;