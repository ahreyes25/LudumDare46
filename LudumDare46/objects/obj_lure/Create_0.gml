type			= LURE.LURE_BASIC_1;
sprite			= global.lure_data[type, LP.SPRITE];
sprite_index	= sprite;
target_x		= undefined;
target_y		= undefined;
launch_speed	= undefined;
rod				= undefined;

path = path_add();
path_set_kind(path, true);
path_set_closed(path, 0);