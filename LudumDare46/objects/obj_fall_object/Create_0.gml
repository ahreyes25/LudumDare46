state_bind		= undefined;
fall_dist_max	= undefined;
rotation		= undefined;
scale			= undefined;
fade_speed		= undefined;
fade_wait		= undefined;
draw_shadow		= undefined;
depth_sorts		= undefined;

// Non Customizable Props
x_start			= x;
y_start			= y;
state			= "fall";
alpha			= 1;
angle			= 0;

slow_factor_base	= 1;
slow_factor			= slow_factor_base;

// Timers
timer_object_create();
timer_fade = 0;
timer_create(timer_fade, _timer_fall_object0);