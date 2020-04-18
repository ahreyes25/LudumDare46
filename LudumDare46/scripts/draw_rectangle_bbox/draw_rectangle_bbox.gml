/// @param obj*
/// @param outline
/// @param color
/// @param alpha

var _obj		= argument_count == 4 ? argument[0] : id;
var _outline	= argument_count == 4 ? argument[1] : argument[0];
var _color		= argument_count == 4 ? argument[2] : argument[1];
var _alpha		= argument_count == 4 ? argument[3] : argument[2];

draw_set_color(_color);
draw_set_alpha(_alpha);
draw_rectangle(_obj.bbox_left, _obj.bbox_top, _obj.bbox_right, _obj.bbox_bottom, _outline); 
draw_set_color(c_white);
draw_set_alpha(1.0);