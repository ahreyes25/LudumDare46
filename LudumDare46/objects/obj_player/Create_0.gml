rod				= instance_create_layer(x, y, "Instances", obj_rod);
rod_type		= ROD.ROD_BASIC_1;
lure_type		= LURE.LURE_BASIC_1;
lure			= undefined;
rod.player		= id;
rod.type		= rod_type;
rod.lure_type	= lure_type;
meter			= undefined;

boat_scale		= 2;
boat_bob_iter	= 0;
boat_bob_speed	= 0.1;

wave_surface	= undefined;
wave_sprite		= undefined;