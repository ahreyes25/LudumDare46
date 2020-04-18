/// @param lure_inst

with (argument0) {

	owner.meter	= instance_create_layer(x, y, "Controllers", obj_meter);
	var _lure	= type;
	var _rod	= rod.type;
	var _fish	= fish_random(_lure);
	var _fish_name = fish_name(_fish);
	switch (_rod) {
		case ROD.ROD_BASIC_1: 	
			owner.meter.meter_speed = global.fish_data[_fish, FP.ZONE_SPEED_ROD_BASIC_1];		
			owner.meter.goal_ticks	= global.fish_data[_fish, FP.ZONE_SIZE_ROD_BASIC_1];		
			break;
	}
	owner.meter.max_bounces = global.rod_data[_rod, RP.DURABILITY];
	owner.meter.camera_x	= rod.camera_x;
	owner.meter.camera_y	= rod.camera_y;
	owner.meter.fish		= _fish;
}