/// @script			timer_destroy_ext(owner, timer_index, destroy_all);
/// @example		timer_destroy_ext(obj_enemy, 2, true);
/// @description	stops the given active timer, removes it from the active timer list, and deletes it from the timer map. A destroyed timer can no longer be started again
/// @returns		boolean, whether or not the given timer was successfully destroyed

/// @param owner*		-- instance_id	-- optional		-- example:	id		-- owner of the timer
/// @param timer_index	-- integer		-- required		-- example:	0		-- index of the timer										
/// @param destroy_all?	-- boolean		-- required		-- example: true	-- effect every instance of the timer that's running? if only 1 timer instance is allowed, this arg is disregarded

var _owner	= argument_count == 3 ? argument[0] : id;
var _index	= argument_count == 3 ? argument[1] : argument[0];
var _all	= argument_count == 3 ? argument[2] : argument[1];

for (var i = 0; i < ds_list_size(_owner.active_timers); i++) {
	var _active_timer	= _owner.active_timers[| i];
	var _timer_data		= _active_timer	[ACTIVE_TIMER_PROP.DATA];
	var _timer_index	= _timer_data	[TIMER_PROP.INDEX];
	
	if (_timer_index == _index) {
		ds_list_delete(_owner.active_timers, i);
		i--;
		
		if (!_all)
			break;
	}
}
ds_map_delete(_owner.timers, string(_index));
return true;