/// @script			timer_create(timer_index, script);
/// @example		timer_create(0, scr_player_timer0);
/// @description	create a new timer with defined properties, that is stored in our map. This does not start the timer in any way
/// @returns		array of timer properties

/// @param timer_index		-- integer		-- required		-- example:	0						-- index of the timer										
/// @param script			-- script_id	-- required		-- example:	scr_player_timer0		-- what script should run when the timer finishes			

var _index		= argument[0];
var _script		= argument[1];
var _owner		= id;
var _speed		= 1;
var _endaction	= TIMER_ENDACTION.STOP;
var _modulo		= 1;
var _instances	= 1;
var _max_iters	= -1;
var _exec_dir	= DIR.DOWN

if (ds_map_exists(_owner.timers, string(_index))) {
	show_debug_message("ERROR in script: timer_create() -- timer with index: " + string(_index) + " already exists. Please use a unique index when creating a timer.");
	return undefined;
}

var _timer = [_owner, _index, abs(_speed), _script, _endaction, _modulo, _instances, _max_iters, _exec_dir];
_owner.timers[? string(_index)] = _timer;
return _timer;