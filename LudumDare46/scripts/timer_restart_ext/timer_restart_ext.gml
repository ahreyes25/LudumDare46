/// @script			timer_restart(owner, timer_index, restart_all);
/// @example		timer_restart(id, 1, true);
/// @description	restarts a given timer back to its starting value. if the count dir is DIR.UP, this sets the timer back to 0. if the count dir is DIR.DOWN, this sets the timer back to its initial value. This does not reset the number of iterations
/// @returns		boolean, whether or not the given timer was successfully restarted

/// @param owner*		-- instance_id	-- optional		-- example:	id		-- owner of the timer
/// @param timer_index	-- integer		-- required		-- example:	0		-- index of the timer										
/// @param restart_all?	-- boolean		-- required		-- example: true	-- effect every instance of the timer that's running? if only 1 timer instance is allowed, this arg is disregarded

var _owner	= argument_count == 3 ? argument[0] : id;
var _index	= argument_count == 3 ? argument[1] : argument[0];
var _all	= argument_count == 3 ? argument[2] : argument[1];

for (var i = 0; i < ds_list_size(_owner.active_timers); i++) {
	var _active_timer		= _owner.active_timers[| i];
	var _timer_data			= _active_timer	[ACTIVE_TIMER_PROP.DATA];
	var _timer_dir			= _active_timer	[ACTIVE_TIMER_PROP.DIR];
	var _timer_start_time	= _active_timer	[ACTIVE_TIMER_PROP.START_TIME];
	var _timer_active		= _active_timer [ACTIVE_TIMER_PROP.ACTIVE];
	var _timer_iteration	= _active_timer [ACTIVE_TIMER_PROP.ITERATIONS];
	var _timer_index		= _timer_data	[TIMER_PROP.INDEX];
	
	if (_timer_index == _index) {
		if (_timer_dir == DIR.UP)
			ds_list_replace(_owner.active_timers, i, [0, _timer_dir, _timer_start_time, _timer_data, _timer_active, _timer_iteration]);
		else
			ds_list_replace(_owner.active_timers, i, [_timer_start_time, _timer_dir, _timer_start_time, _timer_data, _timer_active, _timer_iteration]);
	}
		
	if (!_all)
		return true;
}
return true;