#region Enums
enum LANGUAGE		{ ENGLISH }	// correspond to language strings array index
enum DIFFICULTY		{ TUTORIAL, EASY, MEDIUM, HARD }
enum DIR			{ NONE, LEFT = -1, RIGHT = 1, UP, DOWN, BOTH }
enum PID			{ P1, P2 }
enum COLOR_MODE		{ NORMAL }
enum _				{ X, Y, DIR, DEPTH }
enum SWITCH			{ ON, OFF, MID }
enum SPRITE			{ INDEX, SPEED }
enum QUAD			{ TOP_LEFT, TOP_RIGHT, BOTTOM_RIGHT, BOTTOM_LEFT }
enum DIALOGUE		{ MAIN, QUEST, LEVEL }
enum REGION			{ FOREST, DESERT, GLACIER, OCEAN }
#endregion

global.paused				= false;
global.slow_factor			= 1;
global.save_filename		= "save_data_1.buf";

// User Settings
global.screen_shake_mult	= 1.0;
#macro SHAKE_MULT			global.screen_shake_mult
global.screen_flash_mult	= 1.0;
#macro FLASH_MULT			global.screen_flash_mult
global.sound_mult			= 1.0;
global.music_mult			= 0.0;
global.font					= -1;
global.font_size			= 12;

global.region				= REGION.FOREST;
global.color_green			= make_color_rgb(174, 205, 145);
global.color_tan			= make_color_rgb(240, 210, 180);
global.color_blue			= make_color_rgb(136, 172, 237);
global.color_white			= make_color_rgb(203, 219, 252);
global.tint_color			= global.color_green;

// Audio
audio_falloff_set_model(audio_falloff_linear_distance);
audio_master_gain(global.sound_mult);
audio_listener_orientation(0, 1, 0, 0, 0, 1);
global.audio_emitters				= ds_list_create();
global.audio_emitter				= audio_emitter_create();
global.audio_emitter_music			= audio_emitter_create();
global.audio_emitter_music_muted	= audio_emitter_create();
#macro SFX_EMITTER					global.audio_emitter
#macro SFX_EMITTER_MUSIC			global.audio_emitter_music
#macro SFX_EMITTER_MUSIC_MUTED		global.audio_emitter_music_muted
audio_emitter_gain(SFX_EMITTER_MUSIC, 1);
audio_emitter_gain(SFX_EMITTER_MUSIC_MUTED, 0);

// Particles
global.part_system = part_system_create();
#macro PART_SYSTEM global.part_system

// Other
global.current_time_frame	= 0;
#macro CURRENT_TIME_FRAME	global.current_time_frame
global.mouse_xprevious		= mouse_x;
#macro MOUSE_YPREVIOUS		global.mouse_yprevious
global.mouse_yprevious		= mouse_y;
#macro MOUSE_XPREVIOUS		global.mouse_xprevious