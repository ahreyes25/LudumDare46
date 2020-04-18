/// @param string

var _string			= argument0;
var _return_string	= "";
var _passed_sub		= false;

for (var i = string_length(_string); i >= 1; i--) {
	
	var _char = string_char_at(_string, i);
	
	if (string_is_linebreak(_char) && i != string_length(_string))
		_passed_sub = true;
	
	if (_passed_sub)
		_return_string += _char;
}
return string_reverse(_return_string);