enum P {
	NAME,
	FISH,	
	COST
}

global.region_data[REGION.FOREST, P.NAME] = "Forest";
global.region_data[REGION.FOREST, P.COST] = 0;
global.region_data[REGION.FOREST, P.FISH] = [
	FISH.CLAM,
	FISH.CARP,
	FISH.DIAMOND,
	FISH.TONY,
	FISH.MOAWK,
	FISH.SINKER,
	FISH.GUPPY,
	FISH.CHEDDAR,
	FISH.KOI,
	FISH.GIRAFFE,
	FISH.FISH,
	FISH.ALLIGATOR,
	FISH.REAL,
];

global.region_data[REGION.DESERT, P.NAME] = "Desert";
global.region_data[REGION.DESERT, P.COST] = 2000;
global.region_data[REGION.DESERT, P.FISH] = [
	FISH.MOAWK,
	FISH.SINKER,
	FISH.SHREDDER,
	FISH.GUPPY,
	FISH.CHEDDAR,
	FISH.TERROR,
	FISH.BONES,
	FISH.LOBSTER,
	FISH.GIRAFFE,
	FISH.STAR,
	FISH.SEEKER,
	FISH.HEART,
	FISH.SKULL,
	FISH.GHOST,
	FISH.FISH,
	FISH.CRAB,
	FISH.ALLIGATOR,
	FISH.REAL,
];

global.region_data[REGION.OCEAN, P.NAME] = "Ocean";
global.region_data[REGION.OCEAN, P.COST] = 10000;
global.region_data[REGION.OCEAN, P.FISH] = [
	FISH.CLAM,
	FISH.CLOWN,
	FISH.CARP,
	FISH.DIAMOND,
	FISH.TONY,
	FISH.SHARK,
	FISH.MOAWK,
	FISH.SINKER,
	FISH.SHREDDER,
	FISH.GUPPY,
	FISH.CHEDDAR,
	FISH.WHALE,
	FISH.KOI,
	FISH.SPIKY,
	FISH.LIP,
	FISH.TERROR,
	FISH.GLUB,
	FISH.LOBSTER,
	FISH.OCTO,
	FISH.GIRAFFE,
	FISH.GARY,
	FISH.SHRIMP,
	FISH.STAR,
	FISH.SEEKER,
	FISH.HEART,
	FISH.METROID,
	FISH.SKULL,
	FISH.GHOST,
	FISH.RIGOR,
	FISH.AERYS,
	FISH.FISH,
	FISH.OCTOPUS,
	FISH.CRAB,
	FISH.REAL,
];

global.region_data[REGION.GLACIER, P.NAME] = "Glacier";
global.region_data[REGION.GLACIER, P.COST] = 5000;
global.region_data[REGION.GLACIER, P.FISH] = [
	FISH.CLAM,
	FISH.CARP,
	FISH.DIAMOND,
	FISH.TONY,
	FISH.SHARK,
	FISH.MOAWK,
	FISH.SINKER,
	FISH.GUPPY,
	FISH.CHEDDAR,
	FISH.WHALE,
	FISH.SPIKY,
	FISH.LIP,
	FISH.STAR,
	FISH.FISH,
	FISH.CRAB,
	FISH.PENGUIN,
	FISH.REAL,
];

global.region_total = array_height_2d(global.region_data);