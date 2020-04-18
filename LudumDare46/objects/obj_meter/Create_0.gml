ticks			= 100;
pixel_per_tick	= 5;
scale			= 2;
width			= (sprite_get_width(spr_meter_fill) + 16) * scale;
height			= ticks * pixel_per_tick;

player			= undefined;
meter_speed		= undefined;
goal_ticks		= undefined;
max_bounces		= undefined;
fish			= undefined;
lure			= undefined;

arrow_tick_pos	= 0;
move_dir		= DIR.UP;
bounces			= 0;

camera_x		= undefined;
camera_y		= undefined;

surface			= surface_create(width + 20, height);
sprite			= undefined;