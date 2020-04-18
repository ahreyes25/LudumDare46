/// @param audio_emitter

var _emitter = argument0;

for (var i = 0; i < ds_list_size(global.audio_emitters); i++)
	ds_list_delete(global.audio_emitters, ds_list_find_index(global.audio_emitters, _emitter));
	
audio_emitter_free(_emitter);