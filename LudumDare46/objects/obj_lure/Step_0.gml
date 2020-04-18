if (defined(target_x) && defined(target_y)) {
	if (path_get_number(path) == 0) {
		var _x1		= x + lengthdir_x(rod._len, rod._dir);
		var _y1		= y + lengthdir_y(rod._len, rod._dir);
		var _x2		= target_x;
		var _y2		= target_y;
		path_add_point(path, _x1, _y1, 100);
		path_add_point(path, _x2, _y2, 100);
		path_start(path, launch_speed, path_action_stop, false);
	}
}