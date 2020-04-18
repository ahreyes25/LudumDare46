/// @param fadeout_inst

var _fade = argument0;

if (!exists(_fade)) return;

timer_stop(_fade, _fade.timer_fade_out);