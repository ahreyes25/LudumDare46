enum LURE {
	NONE,
	LURE_BASIC_1,
}

enum LP {
	UNLOCK_CHANCE,
	NAME,
	SPRITE,
	DESC,
	CATCH_CHANCE
}

global.lure_data[LURE.LURE_BASIC_1, LP.UNLOCK_CHANCE]		= 1;				
global.lure_data[LURE.LURE_BASIC_1, LP.NAME]				= "Basic Lure";		
global.lure_data[LURE.LURE_BASIC_1, LP.DESC]				= "";		
global.lure_data[LURE.LURE_BASIC_1, LP.SPRITE]				= spr_lure_basic_1;	
global.lure_data[LURE.LURE_BASIC_1, LP.CATCH_CHANCE]		= [
	/* FISH.NONE	*/		undefined,
	/* FISH.FISH	*/		1.0,
	/* FISH.OCTOPUS */		0.5,
	/* FISH.CRAB	*/		0.5,
];














