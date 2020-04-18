/// @param string

var _string = argument0;
var _string_reverse = "";

for (var i = string_length(_string); i >= 1; i--)
	_string_reverse += string_char_at(_string, i);
	
return _string_reverse;