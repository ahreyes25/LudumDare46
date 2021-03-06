/// @param sprite_index
/// @param image_index
/// @param x1
/// @param y1
/// @param x2
/// @param y2
/// @param alpha

// Arguments
var _sprite			= argument0;
var _image_index	= argument1;
var _x1				= argument2;
var _y1				= argument3;
var _x2				= argument4;
var _y2				= argument5;
var _alpha			= argument6;

var _slice_width  = sprite_get_width(_sprite)  / 3;
var _slice_height = sprite_get_height(_sprite) / 3;

if (sprite_get_width(_sprite) % 3 != 0 || sprite_get_height(_sprite) % 3 != 0)
	show_debug_message("WARNING: Sprite is not a multiple of 3.");

var _width  = abs(_x2 - _x1);
var _height = abs(_y2 - _y1);

// Top Left
draw_sprite_part_ext(_sprite, _image_index, 0, 0, _slice_width, _slice_height, _x1, _y1, 1, 1, c_white, _alpha);

// Top Middle
draw_sprite_part_ext(_sprite, _image_index, _slice_width, 0, _slice_width, _slice_height, _x1 + _slice_width, _y1, (_width - _slice_width * 2) / _slice_width, 1, c_white, _alpha);

// Top Right
draw_sprite_part_ext(_sprite, _image_index, _slice_width * 2, 0, _slice_width, _slice_height, _x2 - _slice_width, _y1, 1, 1, c_white, _alpha);

// Middle Left
draw_sprite_part_ext(_sprite, _image_index, 0, _slice_height, _slice_width, _slice_height, _x1, _y1 + _slice_height, 1, (_height - _slice_height * 2) / _slice_height, c_white, _alpha);

// Middle Middle
draw_sprite_part_ext(_sprite, _image_index, _slice_width, _slice_height, _slice_width, _slice_height, _x1 + _slice_width, _y1 + _slice_height, (_width - _slice_width * 2) / _slice_width, (_height - _slice_height * 2) / _slice_height, c_white, _alpha);

// Middle Right
draw_sprite_part_ext(_sprite, _image_index, _slice_width * 2, _slice_height, _slice_width, _slice_height, _x2 - _slice_width, _y1 + _slice_height, 1, (_height - _slice_height * 2) / _slice_height, c_white, _alpha);

// Bottom Left
draw_sprite_part_ext(_sprite, _image_index, 0, _slice_height * 2, _slice_width, _slice_height * 2, _x1, _y2 - _slice_height, 1, 1, c_white, _alpha);

// Bottom Middle
draw_sprite_part_ext(_sprite, _image_index, _slice_width, _slice_height * 2, _slice_width, _slice_height, _x1 + _slice_width, _y2 - _slice_height, (_width - _slice_width * 2) / _slice_width, 1, c_white, _alpha);

// Bottom Right
draw_sprite_part_ext(_sprite, _image_index, _slice_width * 2, _slice_height * 2, _slice_width, _slice_height, _x2 - _slice_width, _y2 - _slice_height, 1, 1, c_white, _alpha);