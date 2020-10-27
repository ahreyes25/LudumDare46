fish	= undefined;
name	= undefined;
sprite	= undefined;
rarity	= undefined;
desc	= undefined;
weight	= random(2500);
length	= random(35);
surface = surface_create(sprite_width * 2, sprite_height * 2);

state			= "";
flashed			= false;
xscale			= -1;
xscale_target	= 1;

var _sw = surface_get_width(application_surface);
var _sh = surface_get_height(application_surface);
surf_x			= _sw / 2;
surf_y			= _sh / 2;

camera_set_zoom_factor(5);

alarm[1] = 60 * 1;