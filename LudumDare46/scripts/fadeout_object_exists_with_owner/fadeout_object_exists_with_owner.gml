/// @description	Check if an fadeout_object currently exists that is associated
///					to the state passed into this script.

/// @param owner

var _owner = argument0;

with (obj_fadeout_object)
	if (owner == _owner)
		return true;
return false;