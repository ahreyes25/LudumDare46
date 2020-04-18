// General
state				= "flying";
image_speed			= 0;
slow_factor_base	= 1;
slow_factor			= slow_factor_base;

// Flying & Falling
dir				= random(360);
dir_x			= lengthdir_x(irandom_range(1, 3), dir);
dir_y			= lengthdir_y(1, dir);
fall_time		= irandom_range(3, 10);
launch_time		= irandom_range(5, 5);
sit_time		= 600;
drop			= false;

angle			= random(360);
angle_spd		= random_range(-5, 5);
angle_spd_dmp	= 0.05;

// Fade
alpha			= 1;
fade_speed		= 0.01;
delay			= random_range(100, 300);

// Timers
timer_object_create();
timer_flying	= 0;
timer_falling	= 1;
timer_sitting	= 2;
timer_fading	= 3;
timer_create(timer_flying,	undefined);
timer_create(timer_falling,	undefined);
timer_create(timer_sitting,	undefined);
timer_create(timer_fading,	_timer_physics_bit3);
timer_start(timer_flying, launch_time / slow_factor);
timer_start(timer_fading, delay / slow_factor);