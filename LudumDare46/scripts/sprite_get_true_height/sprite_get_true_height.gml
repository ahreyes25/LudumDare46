/// @param sprite_index*

var _sprite = (argument_count == 1) ? argument[0] : sprite_index;
var _height	= abs(sprite_get_bbox_top(_sprite) - sprite_get_bbox_bottom(_sprite));
return _height * abs(image_yscale);