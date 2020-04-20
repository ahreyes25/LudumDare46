/// @param lure_inst

with (argument0) {

	player.meter	= instance_create_layer(x, y, "Controllers", obj_meter);
	var _rod		= rod.type;
	var _fish		= fish_random(type);
	var _fish_name	= fish_name(_fish);
	
	switch (_rod) {
		default: 	
			player.meter.meter_speed = global.fish_data[_fish, FP.ZONE_SPEED_ROD_BASIC_1];		
			player.meter.goal_ticks	 = global.fish_data[_fish, FP.ZONE_SIZE_ROD_BASIC_1];	
			player.meter.max_bounces = global.rod_data[_rod, RP.DURABILITY];
			break;
	}
	player.meter.max_bounces = global.rod_data[_rod, RP.DURABILITY];
	player.meter.camera_x	= rod.camera_x;
	player.meter.camera_y	= rod.camera_y;
	player.meter.fish		= _fish;
	player.meter.player		= player;
	player.meter.lure		= id;
}