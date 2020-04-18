/// @script			timer_object_destroy(id);
/// @example		timer_object_destroy(obj_player);
/// @description	call this script in the destroy event of the object instance that will utilize the custom timer functionality
/// @returns		NA

/// @param id*		-- instance_id	-- optional		-- example:	id		-- owner of the timer										

var _obj = argument_count == 1 ? argument[0] : id;

ds_map_destroy(_obj.timers);
ds_list_destroy(_obj.active_timers);