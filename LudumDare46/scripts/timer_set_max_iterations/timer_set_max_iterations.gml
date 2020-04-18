/// @script			timer_set_max_iterations(owner, timer_index, max_iterations);
/// @example		timer_set_max_iterations(id, 0, -1);
/// @description	set the number of max iterations allowed before timer destroys itself
/// @returns		boolean, whether or not the value was successfully updated		

/// @param owner*			-- instance_id	-- optional		-- example:	id		-- owner of the timer
/// @param timer_index		-- integer		-- required		-- example:	0		-- index of the timer										
/// @param max_iterations	-- integer		-- required		-- example: 1		-- number of iterations timer will execute before destroying. -1 for infinite executions

var _owner		= argument_count == 3 ? argument[0] : id;
var _index		= argument_count == 3 ? argument[1] : argument[0];
var _iterations	= argument_count == 3 ? argument[2] : argument[1];

var _data		= _owner.timers[? string(_index)];
var _speed		= _data[TIMER_PROP.SPEED];
var _endaction	= _data[TIMER_PROP.ENDACTION];
var _script		= _data[TIMER_PROP.SCRIPT];
var _modulo		= _data[TIMER_PROP.MODULO]; 
var _instances	= _data[TIMER_PROP.INSTANCES];
var _exec_dir	= _data[TIMER_PROP.EXECUTION_DIR]; 

_owner.timers[? string(_index)] = [
	_owner, _index, _speed, _script, _endaction, _modulo, _instances, _iterations, _exec_dir
];
return true;