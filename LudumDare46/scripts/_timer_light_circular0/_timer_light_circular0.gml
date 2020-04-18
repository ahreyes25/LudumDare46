/// @description Change Scale
scale_change_start		= x_scale;
scale_change_target		= base_scale + scale_change_direction * random(scale_change_max);
scale_change_direction *= -1;
scale_change_timer		= 0;
timer_set(timer_change_scale, (scale_change_speed + random(scale_change_speed)) / slow_factor);