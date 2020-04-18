var _aw = sprite_get_width(spr_arrow_down);
var _ah = sprite_get_height(spr_arrow_down);
var _mx = window_mouse_get_x();
var _my = window_mouse_get_y();
return (
	_mx <= obj_ui_controller.outer_edge_width + obj_ui_controller.inner_edge_width + _aw ||
	_mx >= surface_get_width(application_surface) - obj_ui_controller.outer_edge_width - obj_ui_controller.inner_edge_width - _aw ||
	_my <= _ah ||
	_my >= surface_get_height(application_surface) - _ah
);
