type			= LURE.LURE_BASIC_1;
sprite			= global.lure_data[type, LP.SPRITE];
sprite_index	= sprite;
target_x		= undefined;
target_y		= undefined;
desired_x		= undefined;
desired_y		= undefined;
launch_speed	= undefined;
rod				= undefined;
bubbles			= undefined;
start_x			= x;
start_y			= y;
player			= undefined;
state			= "throw";

target_image_speed = 0.1;
target_image_index = 0;

path = path_add();
path_set_kind(path, true);
path_set_closed(path, 0);

bob_iter		= 0;
bob_iter_speed	= 0.1;
bob_image_index	= 0;
bob_image_speed	= 0.05;