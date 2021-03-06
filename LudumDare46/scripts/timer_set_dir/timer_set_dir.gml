/// @script			timer_set_dir(owner, timer_index, dir, set_all);
/// @example		timer_set_dir(id, 0, DIR.UP, false);
/// @description	set the direction value of a timer instance, or all timer instances
/// @returns		boolean, whether or not the timer was successfully updated

/// @param owner*		-- instance_id	-- optional		-- example:	id			-- owner of the timer
/// @param timer_index	-- integer		-- required		-- example:	0			-- index of the timer										
/// @param dir			-- DIR_ENUM		-- required		-- example:	DIR.DOWN	-- owner of the timer
/// @param set_all?		-- boolean		-- required		-- example: true		-- effect every instance of the timer that's running? if only 1 timer instance is allowed, this arg is disregarded

var _owner	= argument_count == 4 ? argument[0] : id;
var _index	= argument_count == 4 ? argument[1] : argument[0];
var _dir	= argument_count == 4 ? argument[3] : argument[2];
var _all	= argument_count == 4 ? argument[4] : argument[3];

for (var i = 0; i < ds_list_size(_owner.active_timers); i++) {
	var _active_timer				= _owner.active_timers[| i];
	var _active_timer_time			= _active_timer[ACTIVE_TIMER_PROP.TIME];
	var _active_timer_start_time	= _active_timer[ACTIVE_TIMER_PROP.START_TIME];
	var _active_timer_data			= _active_timer[ACTIVE_TIMER_PROP.DATA];
	var _active_timer_active		= _active_timer[ACTIVE_TIMER_PROP.ACTIVE];
	var _active_timer_iter			= _active_timer[ACTIVE_TIMER_PROP.ITERATIONS];
	var _active_timer_index			= _active_timer_data[TIMER_PROP.INDEX];
	
	if (_active_timer_index == _index) {
		_owner.active_timers[| i] = [_active_timer_time, _dir, _active_timer_start_time, _active_timer_data, _active_timer_active, _active_timer_iter];
		
		// Exit If We Only Set One Timer
		if (!_all)
			return true;
	}
}
return true;