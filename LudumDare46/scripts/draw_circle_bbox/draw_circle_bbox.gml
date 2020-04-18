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

var _radius = min(sprite_get_true_width(_obj.mask_index), sprite_get_true_height(_obj.mask_index)) / 2;

draw_circle(_obj.x, _obj.y, _radius, _outline); 
draw_set_color(c_white);
draw_set_alpha(1.0);