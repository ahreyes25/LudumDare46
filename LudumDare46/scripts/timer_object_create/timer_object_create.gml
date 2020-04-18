/// @script			timer_object_create(id);
/// @example		timer_object_create(obj_player);
/// @description	call this script in the create event of the object instance that will utilize the custom timer functionality
/// @returns		NA

/// @param id*		-- instance_id	-- optional		-- example:	id		-- owner of the timer										

var _obj = argument_count == 1 ? argument[0] : id;

_obj.timers			= ds_map_create();
_obj.active_timers	= ds_list_create();