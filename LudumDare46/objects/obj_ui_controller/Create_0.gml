// Debug Menu
debugging	= false;
menu_index	= 0;
resolutions	= [
	// iphones
	[828,	1792],	// iphone xr
	[1242,	2688],	// iphone xs max
	[1125,	2436],	// iphone x / iphone xs
	[1080,	1920],	// iphone 8 plus
	[750,	1334],	// iphone 8
	[1080,	1920],	// iphone 7 plus
	[750,	1334],	// iphone 7
	
	// ipads
	[2048, 2732],	// ipad pro
	[1536, 2048],	// ipad 3rd & 4th gen
	
	// android
	[1440, 2560],
	[1440, 2960],
	[1200, 1920],
	[800, 1280],
	[1700, 2560],
	"Fullscreen"
];
menu_length	= array_length_1d(resolutions);

// Screen Resolution
base_width		= display_get_width();
base_height		= display_get_height();
width			= base_width;		
height			= base_height;		
aspect_ratio	= width / height;
update_res		= true;
init_load		= true;