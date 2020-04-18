/// @script			timer_set_endaction(owner, timer_index, endaction_enum);
/// @example		timer_set_endaction(id, 0, TIMER_ENDACTION.REVERSE);
/// @description	set the speed property of the timer
/// @returns		boolean, whether or not the value was successfully updated		

/// @param owner*		-- instance_id	-- optional		-- example:	id						-- owner of the timer
/// @param timer_index	-- integer		-- required		-- example:	0						-- index of the timer										
/// @param endaction	-- enum			-- required		-- example:	TIMER_ENDACTION.STOP	-- what the timer should do when it finishes				

var _owner	= argument_count == 3 ? argument[0] : id;
var _index	= argument_count == 3 ? argument[1] : argument[0];
var _end	= argument_count == 3 ? argument[2] : argument[1];

var _data		= _owner.timers[? string(_index)];
var _speed		= _data[TIMER_PROP.SPEED];
var _script		= _data[TIMER_PROP.SCRIPT];
var _modulo		= _data[TIMER_PROP.MODULO];
var _instances	= _data[TIMER_PROP.INSTANCES]; 
var _iterations	= _data[TIMER_PROP.MAX_ITERATIONS]; 
var _exec_dir	= _data[TIMER_PROP.EXECUTION_DIR]; 

_owner.timers[? string(_index)] = [
	_owner, _index, _speed, _script, _end, _modulo, _instances, _iterations, _exec_dir
];
return true;