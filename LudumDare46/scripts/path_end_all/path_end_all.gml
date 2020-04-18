/// @param obj*

var _obj = (argument_count == 1) ? argument[0] : id;

// Clear & End Path
with (_obj) {
	path_end();

	if (variable_instance_exists(id, "path"))
		path_clear_points(path);
		
	path_position = 0;
}