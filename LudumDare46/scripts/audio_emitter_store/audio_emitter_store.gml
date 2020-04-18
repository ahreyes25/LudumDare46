/// @param emitter_id
/// @param owner

var _emit	= argument[0];
var _owner	= argument[1];
ds_list_add(global.audio_emitters, [_emit, _owner]);