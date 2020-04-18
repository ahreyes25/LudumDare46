/// @param string
/// @param char

var _string = argument0;
var _char	= argument1;

for (var i = 1; i <= string_length(_string); i++) {
	var _curr_char = string_char_at(_string, i);
	
	if (_curr_char == _char) {
		_string = string_delete(_string, i, 1);
		i--;
	}
}
return _string;