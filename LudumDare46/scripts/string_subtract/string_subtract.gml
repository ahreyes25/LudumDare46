/// @param string
/// @param substring

var _string		= argument0;
var _substring	= argument1;
var _return_string	= "";

if (!string_contains(_string, _substring))
	return undefined;
	
var _pos = string_pos(_substring, _string);

for (var i = 1; i <= _pos - 1; i++)
	_return_string += string_char_at(_string, i);

// Check If Subtring Was In Middle Of The String
if (_pos != string_length(_string)) {
	for (var i = _pos + string_length(_substring); i <= string_length(_string); i++) 
		_return_string += string_char_at(_string, i);
}

return _return_string;