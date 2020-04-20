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
	/* FISH.OCTOPUS */		0.5,
	/* FISH.CRAB	*/		1.0,
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

global.lure_data[LURE.NONE, LP.NAME]				= undefined;
global.lure_data[LURE.NONE, LP.DESC]				= undefined;
global.lure_data[LURE.NONE, LP.INFO]				= undefined;
global.lure_data[LURE.NONE, LP.SPRITE]				= undefined;
global.lure_data[LURE.NONE, LP.COST_SELL]			= undefined;
global.lure_data[LURE.NONE, LP.COST_BUY]			= undefined;
global.lure_data[LURE.NONE, LP.CATCH_CHANCE]		= [
	/* NONE		*/			undefined,
	/* CLAM		*/			1.0,
	/* CLOWN	*/			0.7,
	/* CARP		*/			0.6,
	/* DIAMOND	*/			0.8,
	/* TONY		*/			0.75,
	/* SHARK	*/			0.8,
	/* MOAWK	*/			0.8,
	/* SINKER	*/			1.0,
	/* SHREDDER */			0.8,
	/* GUPPY	*/			0.9,
	/* CHEDDAR	*/			1.0,
	/* WHALE	*/			0.3,
	/* KOI		*/			0.4,
	/* SPIKY	*/			0.6,
	/* LIP		*/			0.3,
	/* TERROR	*/			0.15,
	/* BONES	*/			1.0,
	/* GLUB		*/			0.7,
	/* LOBSTER	*/			0.5,
	/* OCTO		*/			0.6,
	/* GIRAFFE	*/			0.3,
	/* GARY		*/			0.75,
	/* SHRIMP	*/			1.0,
	/* STAR		*/			0.5,
	/* SEEKER	*/			0.05,
	/* HEART	*/			0.08,
	/* METROID	*/			0.05,
	/* SKULL	*/			0.1,
	/* GHOST	*/			0.3,
	/* RIGOR	*/			0.1,
];

global.lure_total = array_height_2d(global.lure_data);













