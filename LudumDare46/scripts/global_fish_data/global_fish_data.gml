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
	
	// Rod Props
	ZONE_SIZE_ROD_BASIC_1,
	ZONE_SPEED_ROD_BASIC_1,
}

global.fish_data[FISH.FISH, FP.NAME]						= "Fish";
global.fish_data[FISH.FISH, FP.SPRITE]						= undefined;
global.fish_data[FISH.FISH, FP.REGION]						= REGION.FOREST;
global.fish_data[FISH.FISH, FP.ZONE_SIZE_ROD_BASIC_1]		= 30;
global.fish_data[FISH.FISH, FP.ZONE_SPEED_ROD_BASIC_1]		= 1;

global.fish_data[FISH.OCTUPUS, FP.NAME]						= "Octopus";
global.fish_data[FISH.OCTUPUS, FP.SPRITE]					= undefined;
global.fish_data[FISH.OCTUPUS, FP.REGION]					= REGION.FOREST;
global.fish_data[FISH.OCTUPUS, FP.ZONE_SIZE_ROD_BASIC_1]	= 10;
global.fish_data[FISH.OCTUPUS, FP.ZONE_SPEED_ROD_BASIC_1]	= 2;

global.fish_data[FISH.CRAB, FP.NAME]						= "Crab";
global.fish_data[FISH.CRAB, FP.SPRITE]						= undefined;
global.fish_data[FISH.CRAB, FP.REGION]						= REGION.FOREST;
global.fish_data[FISH.CRAB, FP.ZONE_SIZE_ROD_BASIC_1]		= 5;
global.fish_data[FISH.CRAB, FP.ZONE_SPEED_ROD_BASIC_1]		= 5;