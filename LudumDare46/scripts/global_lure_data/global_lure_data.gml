enum LURE {
	NONE,
	LURE_BASIC_1,
}

enum LP {
	UNLOCK_CHANCE,
	NAME,
	SPRITE,
	DESC,
	INFO,
	COST_BUY,
	COST_SELL,
	CATCH_CHANCE
}

global.lure_data[LURE.LURE_BASIC_1, LP.UNLOCK_CHANCE]		= 1;				
global.lure_data[LURE.LURE_BASIC_1, LP.NAME]				= "Basic Lure";		
global.lure_data[LURE.LURE_BASIC_1, LP.DESC]				= "A hook, nothing more..";		
global.lure_data[LURE.LURE_BASIC_1, LP.INFO]				= "I once got 3 of these stuck\nin my big toe...\nat the same time! ha";		
global.lure_data[LURE.LURE_BASIC_1, LP.SPRITE]				= spr_lure_basic_1;	
global.lure_data[LURE.LURE_BASIC_1, LP.COST_SELL]			= 0;	
global.lure_data[LURE.LURE_BASIC_1, LP.COST_BUY]			= 10;	
global.lure_data[LURE.LURE_BASIC_1, LP.CATCH_CHANCE]		= [
	/* FISH.NONE	*/		undefined,
	/* FISH.FISH	*/		1.0,
	/* FISH.OCTOPUS */		0.5,
	/* FISH.CRAB	*/		0.5,
];














