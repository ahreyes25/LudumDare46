/// @script			timer_start_ext(owner, timer_index, duration, dir);
/// @example		timer_start_ext(id, 0, 120, DIR.DOWN);
/// @description	start a specified timer, with a given frame duration, in the direction specified, DIR.UP or DIR.DOWN
/// @returns		boolean, whether or not the timer was successfully started

/// @param owner*		-- instance_id	-- optional		-- example:	id			-- owner of the timer
/// @param timer_index	-- integer		-- required		-- example:	0			-- index of the timer										
/// @param duration		-- integer		-- required		-- example:	60			-- owner of the timer
/// @param dir			-- DIR_ENUM		-- required		-- example:	DIR.DOWN	-- owner of the timer

var _owner	= argument_count == 4 ? argument[0] : id;
var _index	= argument_count == 4 ? argument[1] : argument[0];
var _time	= argument_count == 4 ? argument[2] : argument[1];
var _dir	= argument_count == 4 ? argument[3] : argument[2];

// First Check That We Can Run 1 Or More Copies Of The Timer
var _timer_data	= _owner.timers[? string(_index)];
var _instances	= _timer_data[TIMER_PROP.INSTANCES];

// Count Timer Instances Currently Active
var _count = 0;
for (var i = 0; i < ds_list_size(_owner.active_timers); i++) {
	var _active_timer		= _owner.active_timers[| i];
	var _active_timer_data	= _active_timer[ACTIVE_TIMER_PROP.DATA];
	var _active_timer_index = _active_timer_data[TIMER_PROP.INDEX];
	if (_active_timer_index == _index)
		_count++;
}

// We Have Space To Run A New Instance Of The Timer
if (_count < _instances) {
	if (_dir == DIR.DOWN)
		ds_list_add(_owner.active_timers, [_time, _dir, _time, _timer_data, true, 0]);
	else
		ds_list_add(_owner.active_timers, [0, _dir, _time, _timer_data, true, 0]);
	return true;
}
return false;