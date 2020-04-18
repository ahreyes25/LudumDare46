enum ROD {
	NONE,
	ROD_BASIC_1,
}

enum RP {
	UNLOCK_CHANCE,
	NAME,
	SPRITE,
	ACCURACY,
	SHAKE,
	SHAKE_INTERVAL,
	LAUNCH_SPEED,
	DURABILITY,
}

global.rod_data[ROD.ROD_BASIC_1, RP.UNLOCK_CHANCE]	= 1;				// chance that this rod will be unlocked
global.rod_data[ROD.ROD_BASIC_1, RP.SPRITE]			= spr_rod_basic_1;	
global.rod_data[ROD.ROD_BASIC_1, RP.NAME]			= "Basic Rod";		
global.rod_data[ROD.ROD_BASIC_1, RP.ACCURACY]		= 0.1;				// chances that a wiggle will happen
global.rod_data[ROD.ROD_BASIC_1, RP.SHAKE]			= 30;				// how much it will wiggle
global.rod_data[ROD.ROD_BASIC_1, RP.SHAKE_INTERVAL]	= 30;				// how often it will wiggle
global.rod_data[ROD.ROD_BASIC_1, RP.LAUNCH_SPEED]	= 8;				// how fast lure will launch
global.rod_data[ROD.ROD_BASIC_1, RP.DURABILITY]		= 1;				// how many bounces allowed

