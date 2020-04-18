/// @script			timer_set_script(owner, timer_index, script);
/// @example		timer_set_script(id, 0, scr_player_timer1);
/// @description	set the script property of the timer, which is run after the timer completes
/// @returns		boolean, whether or not the value was successfully updated		

/// @param owner*		-- instance_id	-- optional		-- example:	id					-- owner of the timer
/// @param timer_index	-- integer		-- required		-- example:	0					-- index of the timer										
/// @param script		-- script_id	-- required		-- example: scr_player_timer0	-- script that contains the code to execute once the timer has completed running]

var _owner	= argument_count == 3 ? argument[0] : id;
var _index	= argument_count == 3 ? argument[1] : argument[0];
var _script	= argument_count == 3 ? argument[2] : argument[1];

var _data		= _owner.timers[? string(_index)];
var _speed		= _data[TIMER_PROP.SPEED];
var _endaction	= _data[TIMER_PROP.ENDACTION];
var _modulo		= _data[TIMER_PROP.MODULO];
var _instances	= _data[TIMER_PROP.INSTANCES]; 
var _iterations	= _data[TIMER_PROP.MAX_ITERATIONS]; 
var _exec_dir	= _data[TIMER_PROP.EXECUTION_DIR]; 

_owner.timers[? string(_index)] = [
	_owner, _index, _speed, _script, _endaction, _modulo, _instances, _iterations, _exec_dir
];
return true;