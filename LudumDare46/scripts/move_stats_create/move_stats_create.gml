/// @description	Call this script in the Create Event of any object that plans on moving
///					using hspd and vspd. This will setup the starting movement values and flags.

/// @param starting_move_stats

var _move_stats = argument_count == 1 ? argument[0] : "player";

current_move_stats	= _move_stats;
touching_dirt		= true;
touching_grass		= false;
touching_grass_tall	= false;
touching_water		= false;
touching_water_deep	= false;
touching_sand		= false;
touching_ice		= false;
hspd				= 0;
vspd				= 0;
accel				= 0;
fric				= 0;
run_speed			= 0;
walk_speed			= 0;	
move_speed			= 0;