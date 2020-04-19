enum P {
	NAME,
	FISH,	
}

global.region_data[REGION.FOREST, P.NAME] = "Forest";
global.region_data[REGION.FOREST, P.FISH] = [
	FISH.FISH,
];

global.region_data[REGION.DESERT, P.NAME] = "Desert";
global.region_data[REGION.DESERT, P.FISH] = [
	FISH.FISH,
	FISH.CRAB
];

global.region_data[REGION.OCEAN, P.NAME] = "Ocean";
global.region_data[REGION.OCEAN, P.FISH] = [
	FISH.FISH,
	FISH.CRAB,
	FISH.OCTUPUS
];

global.region_data[REGION.GLACIER, P.NAME] = "Glacier";
global.region_data[REGION.GLACIER, P.FISH] = [
	FISH.FISH,
];

global.region_total = array_height_2d(global.region_data);