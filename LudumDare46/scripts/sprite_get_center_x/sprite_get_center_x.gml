/// @param sprite*

var _sprite = argument_count == 1 ? argument[0] : sprite_index;

return -sprite_get_xoffset(_sprite) + (sprite_get_width(_sprite) / 2);