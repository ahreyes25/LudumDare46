outer_rot--;
inner_rot++;

// Wiggle Cursor According to Accuracy
x = mouse_x;
y = mouse_y; 

if (do_every_x_frame(irandom(shake_interval))) 
	miss_aim = !miss_aim;

if (miss_aim) {
	x = mouse_x + random(shake * percent(1 - accuracy)) * choose(-1, 1);
	y = mouse_y + random(shake * percent(1 - accuracy)) * choose(-1, 1);
}