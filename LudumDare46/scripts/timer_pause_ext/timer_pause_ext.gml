/// @script			timer_pause_ext(owner, timer_index, pause_all);
/// @example		timer_pause_ext(id, 0, true);
/// @description	stop a timers countdown process while maintaining its current time value
/// @returns		boolean, whether or not the timer was successfully paused

/// @param owner*		-- instance_id	-- optional		-- example:	id		-- owner of the timer
/// @param timer_index	-- integer		-- required		-- example:	0		-- index of the timer										
/// @param pause_all?	-- boolean		-- required		-- example: true	-- effect every instance of the timer that's running? if only 1 timer instance is allowed, this arg is disregarded

var _owner	= argument_count == 3 ? argument[0] : id;
var _index	= argument_count == 3 ? argument[1] : argument[0];
var _all	= argument_count == 3 ? argument[2] : argument[1];

for (var i = 0; i < ds_list_size(_owner.active_timers); i++) {
	var _active_timer		= _owner.active_timers[| i];
	var _timer_data			= _active_timer	[ACTIVE_TIMER_PROP.DATA];
	var _timer_time			= _active_timer	[ACTIVE_TIMER_PROP.TIME];
	var _timer_dir			= _active_timer	[ACTIVE_TIMER_PROP.DIR];
	var _timer_start_time	= _active_timer	[ACTIVE_TIMER_PROP.START_TIME];
	var _timer_index		= _timer_data	[TIMER_PROP.INDEX];
	
	if (_timer_index == _index)
		ds_list_replace(_owner.active_timers, i, [_timer_time, _timer_dir, _timer_start_time, _timer_data, false]);
		
	if (!_all)
		return true;
}
return true;