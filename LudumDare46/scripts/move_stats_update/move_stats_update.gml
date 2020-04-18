/// @description	Call this script in the Begin Step of any object that plans on moving
///					using hspd and vspd. This will update the movement values.

/// @param move_form*

var _form = argument_count == 1 ? argument[0] : current_move_stats;
current_move_stats = _form;

if (object_get_parent(object_index) == obj_player_parent || object_get_parent(object_index) == obj_movable_parent)
	var _move_stats = global.move_stats[? current_move_stats];
else if (object_get_parent(object_index) == obj_enemy_parent)
	var _move_stats = global.move_stats[? name];
else
	return;

accel		= _move_stats[STAT.ACCEL,		LAND.DIRT];
fric		= _move_stats[STAT.FRIC,		LAND.DIRT];
run_speed	= _move_stats[STAT.RUN_SPEED,	LAND.DIRT];
walk_speed	= _move_stats[STAT.WALK_SPEED,	LAND.DIRT];
roll_speed	= _move_stats[STAT.ROLL_SPEED,	LAND.DIRT];
roll_dist	= _move_stats[STAT.ROLL_DIST,	LAND.DIRT];