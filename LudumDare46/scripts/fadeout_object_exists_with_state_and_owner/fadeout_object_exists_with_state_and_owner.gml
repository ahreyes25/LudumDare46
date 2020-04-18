/// @description	Check if an fadeout_object currently exists that is associated
///					to the state passed into this script.

/// @param state
/// @param owner

var _state = argument0;
var _owner = argument1;

with (obj_fadeout_object)
	if (defined(state_bind) && state_bind == _state && owner == _owner)
		return true;
return false;