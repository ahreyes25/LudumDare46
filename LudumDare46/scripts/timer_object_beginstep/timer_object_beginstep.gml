/// @script			timer_object_step(id);
/// @example		timer_object_step(obj_player);
/// @description	call this script in the step event of the object instance that will utilize the custom timer functionality
/// @returns		NA

/// @param id*		-- instance_id	-- optional		-- example:	id		-- owner of the timer										

var _obj = argument_count == 1 ? argument[0] : id;

if (!exists(_obj)) return undefined;

// Update All Timers
for (var i = 0; i < ds_list_size(_obj.active_timers); i++) {
	var _active_timer		= _obj.active_timers[| i];
	var _timer_time			= _active_timer	[ACTIVE_TIMER_PROP.TIME];
	var _timer_dir			= _active_timer	[ACTIVE_TIMER_PROP.DIR];
	var _timer_time_start	= _active_timer	[ACTIVE_TIMER_PROP.START_TIME];
	var _timer_data			= _active_timer	[ACTIVE_TIMER_PROP.DATA];
	var _timer_active		= _active_timer	[ACTIVE_TIMER_PROP.ACTIVE];
	var _timer_iteration	= _active_timer	[ACTIVE_TIMER_PROP.ITERATIONS];
	var _timer_speed		= _timer_data	[TIMER_PROP.SPEED];
	var _timer_endaction	= _timer_data	[TIMER_PROP.ENDACTION];
	var _timer_index		= _timer_data	[TIMER_PROP.INDEX];
	var _timer_mod			= _timer_data	[TIMER_PROP.MODULO];
	var _max_iterations		= _timer_data	[TIMER_PROP.MAX_ITERATIONS];
	var _exec_dir			= _timer_data	[TIMER_PROP.EXECUTION_DIR];
	
	// Update Timer Time
	if (_timer_active && _timer_time > -1) {
		
		var _endaction = false;
		if (_timer_dir == DIR.UP) {
			if (_timer_time >= _timer_time_start) {
				_timer_time = _timer_time_start;
				_endaction	= true;
				
				if (_exec_dir == DIR.UP || _exec_dir == DIR.BOTH)
					_timer_iteration++;
			}
			else
				_timer_time += _timer_speed * _obj.slow_factor;
		}
		else {
			if (_timer_time <= 0) {
				_timer_time = 0;
				_endaction	= true;
				
				if (_exec_dir == DIR.DOWN || _exec_dir == DIR.BOTH)
					_timer_iteration++;
			}
			else 
				_timer_time -= _timer_speed * _obj.slow_factor;
		}
	
		// Update Current Time
		ds_list_replace(_obj.active_timers, i,  [_timer_time, _timer_dir, _timer_time_start, _timer_data, _timer_active, _timer_iteration]);
	
		// Run Endaction
		if (_endaction) {
			
			// Run Script
			if ((_timer_dir == _exec_dir || _exec_dir == DIR.BOTH) && _timer_iteration mod _timer_mod == 0) {
				var _data	= _obj.timers[? string(_timer_index)];
				var _script = _data[TIMER_PROP.SCRIPT];
				if (_script != undefined && _script != noone && script_exists(_script)) {
					script_execute(_script);
					
					// Check If We Still Exist After Script Execution In The Event of instance_destroy();
					if (!exists(id))
						return;
					
					// Check For Max Iterations to Be Exceeded -- Destroy Timer If So
					if (floor(_timer_iteration / _timer_mod) >= _max_iterations && _max_iterations > -1) {
						ds_list_delete(_obj.active_timers, i);
						i--;
						return;
					}
				}
			}
			
			// End Action
			switch (_timer_endaction) {
				case TIMER_ENDACTION.STOP:
					ds_list_delete(_obj.active_timers, i);
					i--;
					break;
				
				case TIMER_ENDACTION.REVERSE:
					var _new_dir = (_timer_dir == DIR.DOWN) ? DIR.UP : DIR.DOWN;
					ds_list_replace(_obj.active_timers, i,  [_timer_time, _new_dir, _timer_time_start, _timer_data, _timer_active, _timer_iteration]);
					break;
				
				case TIMER_ENDACTION.LOOP:
					if (_timer_dir == DIR.DOWN)
						ds_list_replace(_obj.active_timers, i,  [_timer_time_start, _timer_dir, _timer_time_start, _timer_data, _timer_active, _timer_iteration]);
					else
						ds_list_replace(_obj.active_timers, i,  [0, _timer_dir, _timer_time_start, _timer_data, _timer_active, _timer_iteration]);
					break;
				
				case TIMER_ENDACTION.DESTROY:
					ds_list_delete(_obj.active_timers, i);
					i--;
					if (i == ds_list_size(_obj.active_timers)) {
						var _index = _timer_data[TIMER_PROP.INDEX];
						ds_map_delete(_obj.timers, string(_index));
					}
					break;
			}
		}
	}
	// Delete Timer If Manually Set to -1
	else if (_timer_time == -1) {
		ds_list_delete(_obj.active_timers, i);
		i--;
	}
}