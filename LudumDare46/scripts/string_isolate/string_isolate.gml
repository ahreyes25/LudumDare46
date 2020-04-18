/// Return The Substring That Contains The Given Index
/// @param string
/// @param index

var _string = argument0;
var _index	= argument1;

if (_index > string_length(_string) || _index <= 0)
	return undefined;
	
var _prefix = undefined;
var _suffix	= undefined;

// Get End Pointer
for (var i = _index; i <= string_length(_string); i++) {
	if (string_is_linebreak(string_char_at(_string, i))) {
		_suffix = i;
		break;	
	}
}
if (!defined(_suffix))
	_suffix = string_length(_string);

// Get Start Pointer
for (var i = _index; i >= 1; i--) {
	if (string_is_linebreak(string_char_at(_string, i))) {
		_prefix = i;
		break;
	}
}
if (!defined(_prefix))
	_prefix = 1;

// Get String Between Two Pointers
var _return_string = "";
for (var i = _prefix; i <= _suffix; i++) {
	_return_string += string_char_at(_string, i);	
}

return _return_string;