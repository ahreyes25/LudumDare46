scale	= 3;
x_start = surface_get_width(application_surface) * 2;
xtarget = surface_get_width(application_surface) * 0.75;
xcurr	= x_start;
ycurr	= surface_get_height(application_surface) / 2;
state	= "hide";
phrase	= undefined;
bought_count	= 0;
sold_count		= 0;
released_count	= 0;
learned_about	= 0;

item_name		= undefined;
item_cost_sell	= undefined;
item_cost_buy	= undefined;
item_info		= undefined;
item_type		= undefined;

shop_text	= "What can I get for ya?";
map_text	= "";
dono_text	= "";