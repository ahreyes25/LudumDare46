// Debug Menu
menu_index	= 0;
resolutions	= [
	[1440, 810],
	"Fullscreen"
];
menu_length			= array_length_1d(resolutions);
base_width			= display_get_width();
base_height			= display_get_height();
width				= base_width;		
height				= base_height;		
aspect_ratio		= width / height;
update_res			= true;
init_load			= false;

outer_edge_width	= 200;
inner_edge_width	= 200;

bg_surface			= surface_create(surface_get_width(application_surface), surface_get_height(application_surface));