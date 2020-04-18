/// @param sprite_index*

var _sprite = (argument_count == 1) ? argument[0] : sprite_index;
var _width	= abs(sprite_get_bbox_left(_sprite) - sprite_get_bbox_right(_sprite));
return _width * abs(image_xscale);