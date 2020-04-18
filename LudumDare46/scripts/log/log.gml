/// @param string
/// @param vars_array*

var _string = argument[0];
var _vars	= argument_count == 2 ? argument[1] : undefined;

var _conc_string = "";
if (defined(_vars) && is_array(_vars)) {
	for (var i = 0; i < array_length_1d(_vars); i++) {
		var _var = _vars[i];
		if (i != 0)
			_conc_string += (", " + string(_var));
		else
			_conc_string += string(_var);
	}
}
else if (defined(_vars))
	_conc_string += string(_vars);
	
if (_conc_string != "")
	_string += " [" + _conc_string + "]";

show_debug_message("LOG " + string(current_time) + " -- " + string(_string));
return _string;