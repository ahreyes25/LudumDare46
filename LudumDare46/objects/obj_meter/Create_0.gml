ticks			= 100;
pixel_per_tick	= 5;
scale			= 2;
width			= (sprite_get_width(spr_meter_fill) + 16) * scale;
height			= ticks * pixel_per_tick;

player			= undefined;
meter_speed		= undefined;
goal_ticks		= undefined;
goal_offset		= undefined;
max_bounces		= undefined;
fish			= undefined;
lure			= undefined;

state			= "";

arrow_tick_pos	= 0;
move_dir		= DIR.UP;
bounces			= 0;

camera_x		= undefined;
camera_y		= undefined;

surface			= surface_create(width + 20 + 80, height + 8);
sprite			= undefined;
rot				= 180;
rot_target		= 0;
alpha			= 0;
alpha_target	= 1;
scale			= 0;
scale_target	= 1.1;
surf_x			= display_get_gui_width() / 2 - width / 2;
surf_y			= display_get_gui_height() - (display_get_gui_height() - height * scale_target) / 2;

alarm[0]		= 60;

sfx_play(sfx_meter_powerup);