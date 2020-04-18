image_speed		= 1.0;
image_spd_base	= image_speed;

alpha			= undefined;
fade_speed		= undefined;
owner			= undefined;
state_bind		= undefined;
delay			= 1;
delayed			= false;
loop			= true;

stick			= undefined;
dif_x			= undefined;
dif_y			= undefined;
depth_dif		= undefined;

color_replace	= false;
u_color			= shader_get_uniform(shdr_solid_color, "u_color");
u_alpha			= shader_get_uniform(shdr_solid_color, "u_alpha");
color			= undefined;

stick			= undefined;
dif_x			= undefined;
dif_y			= undefined;
depth_dif		= undefined;

slow_factor_base	= 1;
slow_factor			= slow_factor_base;

// Timers
timer_object_create();
timer_fade_out = 0;
timer_create(timer_fade_out, undefined);