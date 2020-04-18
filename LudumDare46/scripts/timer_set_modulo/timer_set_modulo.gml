/// @script			timer_set_modulo(owner, timer_index, modulo);
/// @example		timer_set_module(id, 0, 2);
/// @description	set the modulo property of the timer, this means the script will only execute every x iterations
/// @returns		boolean, whether or not the value was successfully updated		

/// @param owner*		-- instance_id	-- optional		-- example:	id		-- owner of the timer
/// @param timer_index	-- integer		-- required		-- example:	0		-- index of the timer										
/// @param modulo		-- integer		-- required		-- example:	1		-- run the script only every x times the timer completes	

var _owner	= argument_count == 3 ? argument[0] : id;
var _index	= argument_count == 3 ? argument[1] : argument[0];
var _modulo	= argument_count == 3 ? argument[2] : argument[1];

var _data		= _owner.timers[? string(_index)];
var _speed		= _data[TIMER_PROP.SPEED];
var _endaction	= _data[TIMER_PROP.ENDACTION];
var _script		= _data[TIMER_PROP.SCRIPT];
var _instances	= _data[TIMER_PROP.INSTANCES]; 
var _iterations	= _data[TIMER_PROP.MAX_ITERATIONS]; 
var _exec_dir	= _data[TIMER_PROP.EXECUTION_DIR]; 

_owner.timers[? string(_index)] = [
	_owner, _index, _speed, _script, _endaction, _modulo, _instances, _iterations, _exec_dir
];
return true;