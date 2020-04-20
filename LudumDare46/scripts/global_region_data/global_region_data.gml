enum P {
	NAME,
	FISH,	
	COST
}

global.region_data[REGION.FOREST, P.NAME] = "Forest";
global.region_data[REGION.FOREST, P.COST] = 0;
global.region_data[REGION.FOREST, P.FISH] = [
	FISH.FISH,
];

global.region_data[REGION.DESERT, P.NAME] = "Desert";
global.region_data[REGION.DESERT, P.COST] = 2000;
global.region_data[REGION.DESERT, P.FISH] = [
	FISH.FISH,
	FISH.CRAB
];

global.region_data[REGION.OCEAN, P.NAME] = "Ocean";
global.region_data[REGION.OCEAN, P.COST] = 10000;
global.region_data[REGION.OCEAN, P.FISH] = [
	FISH.FISH,
	FISH.CRAB,
	FISH.OCTUPUS
];

global.region_data[REGION.GLACIER, P.NAME] = "Glacier";
global.region_data[REGION.GLACIER, P.COST] = 5000;
global.region_data[REGION.GLACIER, P.FISH] = [
	FISH.FISH,
];

global.region_total = array_height_2d(global.region_data);