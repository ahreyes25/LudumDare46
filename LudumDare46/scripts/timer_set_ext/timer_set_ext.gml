/// @script			timer_set_ext(owner, timer_index, duration, dir, set_all);
/// @example		timer_set_ext(id, 0, room_speed * 5, DIR.UP, true);
/// @description	set the time of a specified timer, with a given frame duration, in the direction specified, DIR.UP or DIR.DOWN, and whether or not to effect all active instances of that timer
/// @returns		boolean, whether or not the timer was successfully started

/// @param owner*		-- instance_id	-- optional		-- example:	id			-- owner of the timer
/// @param timer_index	-- integer		-- required		-- example:	0			-- index of the timer										
/// @param duration		-- integer		-- required		-- example:	60			-- owner of the timer
/// @param dir			-- DIR_ENUM		-- required		-- example:	DIR.DOWN	-- owner of the timer
/// @param set_all?		-- boolean		-- required		-- example: true		-- effect every instance of the timer that's running? if only 1 timer instance is allowed, this arg is disregarded

var _owner	= argument_count == 5 ? argument[0] : id;
var _index	= argument_count == 5 ? argument[1] : argument[0];
var _time	= argument_count == 5 ? argument[2] : argument[1];
var _dir	= argument_count == 5 ? argument[3] : argument[2];
var _all	= argument_count == 5 ? argument[4] : argument[3];

var _found	= false;
for (var i = 0; i < ds_list_size(_owner.active_timers); i++) {
	var _active_timer			= _owner.active_timers[| i];
	var _active_timer_data		= _active_timer[ACTIVE_TIMER_PROP.DATA];
	var _active_timer_active	= _active_timer[ACTIVE_TIMER_PROP.ACTIVE];
	var _active_timer_iter		= _active_timer[ACTIVE_TIMER_PROP.ITERATIONS];
	var _active_timer_index		= _active_timer_data[TIMER_PROP.INDEX];
	
	if (_active_timer_index == _index) {
		if (_dir == DIR.DOWN)
			_owner.active_timers[| i] = [_time, _dir, _time, _active_timer_data, _active_timer_active, _active_timer_iter];
		else
			_owner.active_timers[| i] = [0, _dir, _time, _active_timer_data, _active_timer_active, _active_timer_iter];
		_found = true;
		
		// Exit If We Only Set One Timer
		if (!_all)
			return true;
	}
}

// If No Timer Has Been Started With That Index, Start It
if (!_found)
	return timer_start_ext(_owner, _index, _time, _dir);
return false;