#region Resolution & HUD
//menu_index	= 0;
//resolutions	= [
//	[1440, 810],
//	"Fullscreen"
//];
//menu_length			= array_length_1d(resolutions);
//base_width			= display_get_width();
//base_height			= display_get_height();
//width				= base_width;		
//height				= base_height;		
//aspect_ratio		= width / height;
//update_res			= true;
//init_load			= false;
//
outer_edge_width	= 100;
inner_edge_width	= 200;

bg_surface			= surface_create(surface_get_width(application_surface), surface_get_height(application_surface));
#endregion
centered = false;

arrow_iter = irandom(100);
arrow_iter_speed = 0.1;

wave_surface	= undefined;
wave_sprite		= undefined;
boat_scale		= 2;
boat_bob_iter	= 0;
boat_bob_speed	= 0.1;

target_wave_y	= 0;
wave_y			= 0;
boat_x			= 0;
boat_y			= 0;
boat_r			= 0;