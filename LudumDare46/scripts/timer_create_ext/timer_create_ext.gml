/// @script			timer_create_ext(owner, timer_index, timer_speed, script, endaction, modulo, instances);
/// @example		timer_create_ext(id, 0, 120, scr_player_timer0, TIMER_ENDACTION.STOP, 1, 1);
/// @description	create a new timer with defined properties, that is stored in our map. This does not start the timer in any way
/// @returns		array of timer properties

/// @param owner*			-- instance_id	-- optional		-- example:	id						-- owner of the timer										
/// @param timer_index		-- integer		-- required		-- example:	0						-- index of the timer										
/// @param timer_speed		-- integer		-- required		-- example:	1						-- how fast the timer counts down							
/// @param script			-- script_id	-- required		-- example:	scr_player_timer0		-- what script should run when the timer finishes			
/// @param endaction		-- enum			-- required		-- example:	TIMER_ENDACTION.STOP	-- what the timer should do when it finishes				
/// @param modulo			-- integer		-- required		-- example:	1						-- run the script only every x times the timer completes	
/// @param instances		-- integer		-- required		-- example: 1						-- number of copies of timer that can be ran simultaneously
/// @param max_iterations	-- integer		-- required		-- example: 10						-- number of times timer will execute before destroying itself, -1 for infinite iterations
/// @param execution_dir	-- dir_enum		-- required		-- example: DIR.BOTH				-- when to execute the callback script. on upwards completion, downwards completion, or both. 
///																								-- NOTE: If timer never reaches completion dir specified, then script will not execute.
///																								-- Suggested default = DIR.DOWN

var _owner		= argument_count == 9 ? argument[0] : id;
var _index		= argument_count == 9 ? argument[1] : argument[0];
var _speed		= argument_count == 9 ? argument[2] : argument[1];
var _script		= argument_count == 9 ? argument[3] : argument[2];
var _endaction	= argument_count == 9 ? argument[4] : argument[3];
var _modulo		= argument_count == 9 ? argument[5] : argument[4];
var _instances	= argument_count == 9 ? argument[6] : argument[5];
var _max_iters	= argument_count == 9 ? argument[7] : argument[6];
var _exec_dir	= argument_count == 9 ? argument[8] : argument[7];

if (ds_map_exists(_owner.timers, string(_index))) {
	show_debug_message("ERROR in script: timer_create() -- timer with index: " + string(_index) + " already exists. Please use a unique index when creating a timer.");
	return undefined;
}

var _timer = [_owner, _index, abs(_speed), _script, _endaction, _modulo, _instances, _max_iters, _exec_dir];
_owner.timers[? string(_index)] = _timer;
return _timer;