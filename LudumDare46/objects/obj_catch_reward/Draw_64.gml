var _sw = surface_get_width(application_surface);
var _sh = surface_get_height(application_surface);
var _x  = _sw / 2;
var _y	= _sh / 2;
var _scale = 2;

draw_sprite_ext(sprite_index, 0, _x, _y, _scale, _scale, 0, global.tint_color, 1);
draw_sprite_ext(sprite, 0, _x, _y - sprite_get_height(sprite) * _scale, _scale, _scale, 0, global.tint_color, 1);

draw_set_halign(fa_center);
draw_text_transformed(_x, _y, name, _scale, _scale, 0);
draw_text_transformed(_x, _y + (20 * _scale), desc, 1, 1, 0);
draw_text_transformed(_x, _y + (45 * _scale), rarity, _scale, _scale, 0);
draw_set_halign(fa_left);