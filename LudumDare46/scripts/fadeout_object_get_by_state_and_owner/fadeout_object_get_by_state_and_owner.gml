/// @description	Get an fadeout_object that exists with the same as the state passed into this script.

/// @param state
/// @param owner

var _state = argument0;
var _owner = argument1;

with (obj_fadeout_object)
	if (defined(state_bind) && state_bind == _state && owner == _owner)
		return id;
return undefined;