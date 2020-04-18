/// @script			timer_get_dir_all(owner, timer_index, list);
/// @example		timer_get_dir_all(id, 0, _my_list);
/// @description	gets the dir of all active timer instances and puts them in a ds_list
/// @returns		boolean, whether at least one value was successfully stored in the ds_list

/// @param owner*		-- instance_id	-- optional		-- example:	id				-- owner of the timer
/// @param timer_index	-- integer		-- required		-- example:	0				-- index of the timer										
/// @param list			-- ds_list()	-- required		-- example: var _my_list	-- list to store multiple collected values in

var _owner	= argument_count == 3 ? argument[0] : id;
var _index	= argument_count == 3 ? argument[1] : argument[0];
var _list	= argument_count == 3 ? argument[2] : argument[1];

for (var i = 0; i < ds_list_size(_owner.active_timers); i++) {
	var _active_timer	= _owner.active_timers[| i];
	var _timer_data		= _active_timer[ACTIVE_TIMER_PROP.DATA];
	var _timer_dir		= _active_timer[ACTIVE_TIMER_PROP.DIR];
	var _timer_index	= _timer_data[TIMER_PROP.INDEX];
	
	if (_timer_index == _index)
		ds_list_add(_list, _timer_dir);
}
return ds_list_size(_list) > 0;