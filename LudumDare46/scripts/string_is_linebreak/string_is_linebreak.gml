/// @param char

var _line_breaks = [
	" ", ",", "-", ".", "?", "!", "|"
];

for (var i = 0; i < array_length_1d(_line_breaks); i++) {
	if (argument0 == _line_breaks[i])
		return true;
}
return false;