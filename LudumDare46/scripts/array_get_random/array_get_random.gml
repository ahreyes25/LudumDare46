/// @param array

var _array = argument0;

if (is_array(_array)) 
	return _array[irandom(array_length_1d(_array) - 1)];
else
	return undefined;