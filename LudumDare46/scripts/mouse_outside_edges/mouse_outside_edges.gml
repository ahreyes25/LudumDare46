var _mx = device_mouse_x_to_gui(0);
var _sw = surface_get_width(application_surface);

return _mx <= obj_ui_controller.outer_edge_width || _mx >= _sw - obj_ui_controller.outer_edge_width;