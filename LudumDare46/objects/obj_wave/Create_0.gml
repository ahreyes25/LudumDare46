bob_iter = random(1000);
bob_iter_speed = 0.1;

if (place_meeting(x, y, obj_wave) || place_meeting(x, y, obj_fish_hidden))
	instance_destroy();