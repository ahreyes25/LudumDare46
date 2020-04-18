timer_object_create();

// General
state		= undefined;
owner		= undefined;
scale		= 1;
facing		= DIR.RIGHT;
name		= "";

// Sfx
sfx_emitter			= audio_emitter_create_custom();
slow_factor_base	= 1;
slow_factor			= slow_factor_base;