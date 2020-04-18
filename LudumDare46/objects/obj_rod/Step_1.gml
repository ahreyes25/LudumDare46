if (defined(player)) {
	if (!defined(accuracy))			accuracy		= global.rod_data[type, RP.ACCURACY];
	if (!defined(shake))			shake			= global.rod_data[type, RP.SHAKE];
	if (!defined(shake_interval))	shake_interval	= global.rod_data[type, RP.SHAKE_INTERVAL];
	if (!defined(sprite))			sprite			= global.rod_data[type, RP.SPRITE];
	if (!defined(launch_speed))		launch_speed	= global.rod_data[type, RP.LAUNCH_SPEED];
}

outer_rot--;
inner_rot++;

//x = mouse_x;
//y = mouse_y; 

if (do_every_x_frame(irandom(shake_interval))) 
	miss_aim = !miss_aim;