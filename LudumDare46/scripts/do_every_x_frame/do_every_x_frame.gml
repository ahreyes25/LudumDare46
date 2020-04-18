/// @param interval

var _interval	= argument[0];

return _interval != 0 ? CURRENT_TIME_FRAME mod _interval == 0 : false;