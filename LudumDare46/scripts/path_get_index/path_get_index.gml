/// @arg path*

var _path = argument_count == 1 ? argument[0] : path;
return floor(path_position * path_get_length(_path));