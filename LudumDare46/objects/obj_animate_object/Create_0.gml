image_index		= 0;
image_spd_base	= 0;
image_xscale	= 1;

max_iters		= 0;
current_iters	= 0;
owner			= undefined;
state_bind		= undefined;
delay			= undefined;

stick			= undefined;
dif_x			= undefined;
dif_y			= undefined;
depth_dif		= undefined;

draw_script		= undefined;	// set this to override draw event

slow_factor_base	= 1;
slow_factor			= slow_factor_base;

// Timers
timer_object_create();
timer_delay = 0;
timer_create(timer_delay, undefined);