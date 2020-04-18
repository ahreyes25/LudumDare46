/// @script			timer_get_dir(owner, timer_index);
/// @example		timer_get_dir(id, 0);
/// @description	return the dir of the active timer
/// @returns		dir_enum, the current dir of the timer, or returns undefined, if the timer is not running

/// @param owner*		-- instance_id	-- optional		-- example:	id		-- owner of the timer
/// @param timer_index	-- integer		-- required		-- example:	0		-- index of the timer										

var _owner	= argument_count == 2 ? argument[0] : id;
var _index	= argument_count == 2 ? argument[1] : argument[0];

for (var i = 0; i < ds_list_size(_owner.active_timers); i++) {
	var _active_timer	= _owner.active_timers[| i];
	var _timer_data		= _active_timer[ACTIVE_TIMER_PROP.DATA];
	var _timer_dir		= _active_timer[ACTIVE_TIMER_PROP.DIR];
	var _timer_index	= _timer_data[TIMER_PROP.INDEX];
	
	if (_timer_index == _index)
		return _timer_dir;
}
return undefined;