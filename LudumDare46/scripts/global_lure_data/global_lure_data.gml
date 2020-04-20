enum LURE {
	NONE,
	LURE_BASIC_1,
	LURE_BASIC_2,
}

enum LP {
	NAME,
	SPRITE,
	DESC,
	INFO,
	COST_BUY,
	COST_SELL,
	CATCH_CHANCE
}

#region No Lure
global.lure_data[LURE.NONE, LP.NAME]				= undefined;
global.lure_data[LURE.NONE, LP.DESC]				= undefined;
global.lure_data[LURE.NONE, LP.INFO]				= undefined;
global.lure_data[LURE.NONE, LP.SPRITE]				= undefined;
global.lure_data[LURE.NONE, LP.COST_SELL]			= undefined;
global.lure_data[LURE.NONE, LP.COST_BUY]			= undefined;
global.lure_data[LURE.NONE, LP.CATCH_CHANCE]		= undefined;
#endregion
				
global.lure_data[LURE.LURE_BASIC_1, LP.NAME]				= "Basic Lure";		
global.lure_data[LURE.LURE_BASIC_1, LP.DESC]				= "A hook, nothing more..";		
global.lure_data[LURE.LURE_BASIC_1, LP.INFO]				= "I once got 3 of these stuck\nin my big toe...\nat the same time! ha";		
global.lure_data[LURE.LURE_BASIC_1, LP.SPRITE]				= spr_lure_basic_1;	
global.lure_data[LURE.LURE_BASIC_1, LP.COST_SELL]			= 0;	
global.lure_data[LURE.LURE_BASIC_1, LP.COST_BUY]			= 10;	
global.lure_data[LURE.LURE_BASIC_1, LP.CATCH_CHANCE]		= [
	/* FISH.NONE	*/		undefined,
	/* FISH.FISH	*/		1.0,
	/* FISH.OCTOPUS */		0.1,
	/* FISH.CRAB	*/		0.5,
];
				
global.lure_data[LURE.LURE_BASIC_2, LP.NAME]				= "Basic Lure 2";		
global.lure_data[LURE.LURE_BASIC_2, LP.DESC]				= "A hook, nothing more..";		
global.lure_data[LURE.LURE_BASIC_2, LP.INFO]				= "I once got 3 of these stuck\nin my big toe...\nat the same time! ha";		
global.lure_data[LURE.LURE_BASIC_2, LP.SPRITE]				= spr_lure_basic_1;	
global.lure_data[LURE.LURE_BASIC_2, LP.COST_SELL]			= 0;	
global.lure_data[LURE.LURE_BASIC_2, LP.COST_BUY]			= 10;	
global.lure_data[LURE.LURE_BASIC_2, LP.CATCH_CHANCE]		= [
	/* FISH.NONE	*/		undefined,
	/* FISH.FISH	*/		0.1,
	/* FISH.OCTOPUS */		1.0,
	/* FISH.CRAB	*/		0.1,
];

global.lure_total = array_height_2d(global.lure_data);













