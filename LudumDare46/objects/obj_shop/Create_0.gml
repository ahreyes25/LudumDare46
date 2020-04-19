show			= false;
show_mini		= false;
scale			= 2;
cell_width		= 64 * scale;
cell_height		= 64 * scale;
shop			= ds_list_create();
index			= 0;
index_mini		= 0;
scroll_index	= 0;
start_x			= obj_merchant.xcurr - sprite_get_width(spr_merchant) * obj_merchant.scale / 2 - cell_width;
start_y			= 10;
surface			= surface_create(cell_width, 1);

ds_list_add(shop, ["rod", ROD.ROD_BASIC_1]);
ds_list_add(shop, ["lure", LURE.LURE_BASIC_1]);
for (var i = 1; i < global.fish_total; i++)
	ds_list_add(shop, ["fish", i]);