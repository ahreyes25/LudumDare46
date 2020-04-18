/// @param string

var _string = argument0;

for (var i = 1; i <= string_length(_string); i++) {
	if (string_char_at(_string, i) == "|") {
		var _mod = "";
		
		for (var j = i + 1; j <= string_length(_string); j++) {
			if (string_char_at(_string, j) == "|")
				break;
			_mod += string_char_at(_string, j);
		}
		
		_string = string_delete(_string, i, string_length(_mod) + 2);
	}
}
return _string;