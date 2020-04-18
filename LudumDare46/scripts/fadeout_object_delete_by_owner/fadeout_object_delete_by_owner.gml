/// @description	Delete any fadeout_object that exists with an associated state that is
///					the same as the state passed into this script.
/// @param owner*

var _owner = argument_count == 1 ? argument[0] : id;

with (obj_fadeout_object)
	if (owner == _owner)
		instance_destroy();