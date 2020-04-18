/// @param owner*

var _owner = argument_count == 1 ? argument[0] : id;

var _emitter = audio_emitter_create();
audio_emitter_store(_emitter, _owner);
return _emitter;