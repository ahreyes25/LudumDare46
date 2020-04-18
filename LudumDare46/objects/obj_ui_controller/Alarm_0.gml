window_center();

if (menu_index == menu_length - 1)
	window_set_fullscreen(!window_get_fullscreen());
else {
	var _res	= resolutions[menu_index];
	var _width	= _res[0];
	var _height	= _res[1];
	window_set_resolution(_width, _height);
}