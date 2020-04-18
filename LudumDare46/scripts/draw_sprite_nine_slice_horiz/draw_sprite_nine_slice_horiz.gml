/// @param sprite_index
/// @param image_index
/// @param x1
/// @param y
/// @param x2
/// @param alpha

// Arguments
var _sprite			= argument0;
var _image_index	= argument1;
var _x1				= argument2;
var _y				= argument3;
var _x2				= argument4;
var _alpha			= argument5;
var _slice_width	= sprite_get_width(_sprite)  / 3;
var _width			= abs(_x2 - _x1);
var _height			= sprite_get_height(_sprite);

// Left 1/3
draw_sprite_part_ext(_sprite, _image_index, 0, 0, _slice_width, _height, _x1, _y, 1, 1, c_white, _alpha);

// Middle 1/3
draw_sprite_part_ext(_sprite, _image_index, _slice_width, 0, _slice_width, _height, _x1 + _slice_width, _y, (_width - _slice_width * 2) / _slice_width, 1, c_white, _alpha);

// Right 1/3
draw_sprite_part_ext(_sprite, _image_index, _slice_width * 2, 0, _slice_width, _height, _x2 - _slice_width, _y, 1, 1, c_white, _alpha);