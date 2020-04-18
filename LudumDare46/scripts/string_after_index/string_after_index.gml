/// Return Substring After Index
/// @param string
/// @param index

var _string			= argument0;
var _index			= argument1;
var _return_string	= "";

if (_index <= 0 || _index > string_length(_string))
	return undefined;

for (var i = _index + 1; i <= string_length(_string); i++)
	_return_string += string_char_at(_string, i);	
	
return _return_string;