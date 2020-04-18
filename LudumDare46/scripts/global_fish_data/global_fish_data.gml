enum FISH {
	NONE,
	FISH,
	OCTUPUS,
	CRAB,
}

enum FP {
	NAME,
	SPRITE,
	REGION,
	
	// Lure Props
	CHANCE_LURE_BASIC_1,
	
	// Rod Props
	ZONE_SIZE_ROD_BASIC_1,
	ZONE_SPEED_ROD_BASIC_1,
}

global.fish_data[FISH.FISH, FP.NAME]					= "Fish";
global.fish_data[FISH.FISH, FP.SPRITE]					= undefined;
global.fish_data[FISH.FISH, FP.REGION]					= REGION.FOREST;
global.fish_data[FISH.FISH, FP.CHANCE_LURE_BASIC_1]		= 1;	// 1 in 1000
global.fish_data[FISH.FISH, FP.ZONE_SIZE_ROD_BASIC_1]	= 30;
global.fish_data[FISH.FISH, FP.ZONE_SPEED_ROD_BASIC_1]	= 1;