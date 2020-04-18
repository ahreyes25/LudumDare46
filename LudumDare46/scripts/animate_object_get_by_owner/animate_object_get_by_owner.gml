/// @description	Get an animate_object that exists with the same as the state passed into this script.

/// @param owner

var _owner = argument0;

with (obj_animate_object)
	if (owner == _owner)
		return id;
return undefined;