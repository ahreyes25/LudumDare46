enum FISH {
	NONE,
	FISH,
	OCTUPUS,
	CRAB,
}

enum FP {
	NAME,
	SPRITE,
	DESC,
	REGION,
	RARITY,
	INFO,
	COST_SELL,
	COST_BUY,
	
	// Rod Props
	ZONE_SIZE_ROD_BASIC_1,
	ZONE_SPEED_ROD_BASIC_1,
}

global.fish_data[FISH.FISH, FP.NAME]						= "Fish";
global.fish_data[FISH.FISH, FP.SPRITE]						= spr_fish_1;
global.fish_data[FISH.FISH, FP.DESC]						= "The Fishiest of Fish";
global.fish_data[FISH.FISH, FP.REGION]						= REGION.FOREST;
global.fish_data[FISH.FISH, FP.RARITY]						= "Common";
global.fish_data[FISH.FISH, FP.COST_SELL]					= 10;
global.fish_data[FISH.FISH, FP.COST_BUY]					= 10;
global.fish_data[FISH.FISH, FP.INFO]						= "This fish is the fishiest \nof all fish, quite fishy \nin all ways. Indeed!";
global.fish_data[FISH.FISH, FP.ZONE_SIZE_ROD_BASIC_1]		= 30;
global.fish_data[FISH.FISH, FP.ZONE_SPEED_ROD_BASIC_1]		= 1;

global.fish_data[FISH.OCTUPUS, FP.NAME]						= "Octopus";
global.fish_data[FISH.OCTUPUS, FP.SPRITE]					= spr_octopus_1;
global.fish_data[FISH.OCTUPUS, FP.DESC]						= "";
global.fish_data[FISH.OCTUPUS, FP.REGION]					= REGION.FOREST;
global.fish_data[FISH.OCTUPUS, FP.RARITY]					= "Rare";
global.fish_data[FISH.OCTUPUS, FP.COST_SELL]				= 1000;
global.fish_data[FISH.OCTUPUS, FP.COST_BUY]					= 1000;
global.fish_data[FISH.OCTUPUS, FP.INFO]						= "";
global.fish_data[FISH.OCTUPUS, FP.ZONE_SIZE_ROD_BASIC_1]	= 10;
global.fish_data[FISH.OCTUPUS, FP.ZONE_SPEED_ROD_BASIC_1]	= 2;

global.fish_data[FISH.CRAB, FP.NAME]						= "Crab";
global.fish_data[FISH.CRAB, FP.SPRITE]						= spr_crab_1;
global.fish_data[FISH.CRAB, FP.DESC]						= "";
global.fish_data[FISH.CRAB, FP.REGION]						= REGION.FOREST;
global.fish_data[FISH.CRAB, FP.RARITY]						= "Kind Of Rare";
global.fish_data[FISH.CRAB, FP.COST_SELL]					= 100;
global.fish_data[FISH.CRAB, FP.COST_BUY]					= 100;
global.fish_data[FISH.CRAB, FP.INFO]						= "";
global.fish_data[FISH.CRAB, FP.ZONE_SIZE_ROD_BASIC_1]		= 5;
global.fish_data[FISH.CRAB, FP.ZONE_SPEED_ROD_BASIC_1]		= 5;