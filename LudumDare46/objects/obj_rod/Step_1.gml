outer_rot--;
inner_rot++;

if (defined(anchor_x) && defined(anchor_y)) {
	_len	= point_distance( x, y, anchor_x, anchor_y);
	_dir	= point_direction(x, y, anchor_x, anchor_y);
	_len_x	= lengthdir_x(_len * 2, _dir);
	_len_y	= lengthdir_y(_len * 2, _dir);
	_len_x2	= lengthdir_x(_len * 3, _dir);
	_len_y2	= lengthdir_y(_len * 3, _dir);
}

// Wiggle Cursor According to Accuracy
x = mouse_x;
y = mouse_y; 

if (do_every_x_frame(irandom(shake_interval))) 
	miss_aim = !miss_aim;

if (miss_aim) {
	x = mouse_x + random(shake * percent(1 - accuracy)) * choose(-1, 1);
	y = mouse_y + random(shake * percent(1 - accuracy)) * choose(-1, 1);
}