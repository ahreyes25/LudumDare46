/// @param sound
/// @param loop*

var _loop = argument_count == 2 ? argument[1] : false;

if (!sfx_is_playing_array(argument[0]))
	return sfx_play_array(SFX_EMITTER, argument[0], _loop);