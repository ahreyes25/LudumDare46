/// @description	Any object that uses the pulse_color shader needs to call this script in the step event.
/// @param id*

var _obj = (argument_count == 1) ? argument[0] : id

if (exists(_obj) && _obj.pulsating) {
	if (_obj.shader_pulse_alpha < 1)
		_obj.shader_pulse_alpha += _obj.shader_pulse_speed * slow_factor;
	else
		_obj.shader_pulse_alpha = 0;
}