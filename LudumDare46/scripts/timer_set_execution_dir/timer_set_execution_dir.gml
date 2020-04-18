/// @script			timer_set_execution_dir(owner, timer_index, execution_dir);
/// @example		timer_set_execution_dir(id, 0, DIR.DOWN);
/// @description	set the number of max iterations allowed before timer destroys itself
/// @returns		boolean, whether or not the value was successfully updated		

/// @param owner*			-- instance_id	-- optional		-- example:	id			-- owner of the timer
/// @param timer_index		-- integer		-- required		-- example:	0			-- index of the timer										
/// @param exec_dir			-- dir_enum		-- required		-- example: DIR.BOTH	-- timer completion direction on which to execute the script

var _owner		= argument_count == 3 ? argument[0] : id;
var _index		= argument_count == 3 ? argument[1] : argument[0];
var _exec_dir	= argument_count == 3 ? argument[2] : argument[1];

var _data		= _owner.timers[? string(_index)];
var _speed		= _data[TIMER_PROP.SPEED];
var _endaction	= _data[TIMER_PROP.ENDACTION];
var _script		= _data[TIMER_PROP.SCRIPT];
var _modulo		= _data[TIMER_PROP.MODULO]; 
var _instances	= _data[TIMER_PROP.INSTANCES];
var _iterations	= _data[TIMER_PROP.MAX_ITERATIONS]; 

_owner.timers[? string(_index)] = [
	_owner, _index, _speed, _script, _endaction, _modulo, _instances, _iterations, _exec_dir
];
return true;