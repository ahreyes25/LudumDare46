
var _mx = device_mouse_x_to_gui(0);
return (
	_mx <= obj_ui_controller.outer_edge_width ||
	_mx >= surface_get_width(application_surface) - obj_ui_controller.outer_edge_width
);
