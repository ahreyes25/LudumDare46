/// @param interval
/// @param slomo_instance*

var _interval	= argument[0];
var _instance	= argument_count == 2 ? argument[1] : undefined;

if (defined(_instance))
	return (CURRENT_TIME_FRAME mod _interval / _instance.slow_factor == 0 && slow_factor > 0);
else
	return (CURRENT_TIME_FRAME mod _interval / slow_factor == 0 && slow_factor > 0);