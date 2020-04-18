/// @script			timer_set_speed(owner, timer_index, timer_speed);
/// @example		timer_set_speed(id, 0, 2);
/// @description	set the speed property of the timer
/// @returns		boolean, whether or not the value was successfully updated

/// @param owner*		-- instance_id	-- optional		-- example:	id		-- owner of the timer
/// @param timer_index	-- integer		-- required		-- example:	0		-- index of the timer										
/// @param timer_speed	-- integer		-- required		-- example:	1		-- how fast the timer counts down							

var _owner	= argument_count == 3 ? argument[0] : id;
var _index	= argument_count == 3 ? argument[1] : argument[0];
var _speed	= argument_count == 3 ? argument[2] : argument[1];

var _data		= _owner.timers[? string(_index)];
var _script		= _data[TIMER_PROP.SCRIPT];
var _endaction	= _data[TIMER_PROP.ENDACTION];
var _modulo		= _data[TIMER_PROP.MODULO];
var _instances	= _data[TIMER_PROP.INSTANCES]; 
var _iterations	= _data[TIMER_PROP.MAX_ITERATIONS]; 
var _exec_dir	= _data[TIMER_PROP.EXECUTION_DIR]; 

_owner.timers[? string(_index)] = [
	_owner, _index, abs(_speed), _script, _endaction, _modulo, _instances, _iterations, _exec_dir
];
return true;