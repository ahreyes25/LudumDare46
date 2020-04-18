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
}

enum LURE {
	NONE,
	LURE_BASIC_1,
}

enum LP {
	UNLOCK_CHANCE,
	NAME,
	SPRITE
}

global.rod_data[ROD.ROD_BASIC_1, RP.UNLOCK_CHANCE]	= 1;				// chance that this rod will be unlocked
global.rod_data[ROD.ROD_BASIC_1, RP.SPRITE]			= spr_rod_basic_1;	
global.rod_data[ROD.ROD_BASIC_1, RP.NAME]			= "Basic Rod";		
global.rod_data[ROD.ROD_BASIC_1, RP.ACCURACY]		= 0.1;				// chances that a wiggle will happen
global.rod_data[ROD.ROD_BASIC_1, RP.SHAKE]			= 30;				// how much it will wiggle
global.rod_data[ROD.ROD_BASIC_1, RP.SHAKE_INTERVAL]	= 30;				// how often it will wiggle
global.rod_data[ROD.ROD_BASIC_1, RP.LAUNCH_SPEED]	= 1;				// how fast lure will launch

global.lure_data[LURE.LURE_BASIC_1, LP.UNLOCK_CHANCE]	= 1;				
global.lure_data[LURE.LURE_BASIC_1, LP.SPRITE]			= spr_lure_basic_1;	
global.lure_data[LURE.LURE_BASIC_1, LP.NAME]			= "Basic Lure";		