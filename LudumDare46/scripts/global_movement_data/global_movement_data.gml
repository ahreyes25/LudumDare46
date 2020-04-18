#region Enums
enum STAT 
{
	ROLL_SPEED,
	ROLL_DIST,
	WALK_SPEED,
	RUN_SPEED,
	MOVE_SPEED,
	ACCEL,
	FRIC
}

enum LAND 
{
	DIRT, 
}
#endregion
#region Inanimate Objects
global.move_stats_human[STAT.ROLL_SPEED,	LAND.DIRT]		= 6;
global.move_stats_human[STAT.ROLL_DIST,		LAND.DIRT]		= 400;
global.move_stats_human[STAT.WALK_SPEED,	LAND.DIRT]		= 3;
global.move_stats_human[STAT.RUN_SPEED,		LAND.DIRT]		= 6;
global.move_stats_human[STAT.ACCEL,			LAND.DIRT]		= 1.0;
global.move_stats_human[STAT.FRIC,			LAND.DIRT]		= 0.6;
#endregion

global.move_stats				= ds_map_create();
global.move_stats[? "player"]	= global.move_stats_human;