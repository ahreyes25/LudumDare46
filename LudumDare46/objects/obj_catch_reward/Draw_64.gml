var _sw = surface_get_width(application_surface);
var _sh = surface_get_height(application_surface);
var _x  = _sw / 2;
var _y	= _sh / 2;
var _scale = 2;

draw_sprite_ext(sprite_index, 0, _x, _y, _scale, _scale, 0, global.tint_color, 1);
draw_sprite_ext(sprite, 0, _x, _y - sprite_get_height(sprite) * _scale, _scale, _scale, 0, global.tint_color, 1);

draw_set_halign(fa_center);
draw_text_transformed(_x, _y - 30, name, 1, 1, 0);

// Line Wrap Description
var _string			= "";
var _string_size	= 0;
var _trim_amount	= 0;
for (var i = 1; i <= string_length(desc); i++) {
	if (_string_size > (sprite_get_width(sprite_index) * _scale) - (string_width("A") * 6)) {
		for (var j = string_length(_string); j >= 1; j--) {
			var _char = string_char_at(_string, j);
			_trim_amount++;
			i--;
			if (_char == " ") {
				_string = string_delete(_string, string_length(_string) - _trim_amount + 1, _trim_amount);
				break;	
			}
		}
		_string += "\n";		
		_string_size = 0;
	}
	_string += string_char_at(desc, i);
	_string_size += string_width("A");
}
draw_text_transformed(_x, _y + 10, _string, 1, 1, 0);

draw_text_transformed(_x, _y + 120 , "weight: " + string(weight) + " lbs", 1, 1, 0);
draw_text_transformed(_x, _y + 140 , "length: " + string(length) + " ft", 1, 1, 0);
draw_text_transformed(_x, _y + 200 , rarity, 1, 1, 0);
draw_set_halign(fa_left);