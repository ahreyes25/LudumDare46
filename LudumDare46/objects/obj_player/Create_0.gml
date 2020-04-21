rod				= instance_create_layer(x, y, "Instances", obj_rod);
rod_type		= obj_game_controller.player_rod_type;
lure_type		= obj_game_controller.player_lure_type;
lure			= undefined;
rod.player		= id;
rod.type		= rod_type;
rod.lure_type	= lure_type;
meter			= undefined;

boat_scale		= 2;
boat_bob_iter	= 0;
boat_bob_speed	= 0.1;

happy			= false;
sad				= false;
emoji_fade		= 1;