enum LURE {
	NONE,
	LURE_BASIC_1,
	FANCY,
	FANCIER,
	FANCIEST,
	FEATHERED,
	POINTED,
	TWINED,
	LOLLIPOP_1,
	LOLLIPOP_2,
	LOLLIPOP_3,
	FLARED,
	DOUBLE,
	CHAINED,
	RING,
	COINED,
	J_1,
	J_2,
	J_3,
	J_4,
	BLADE,
	HOOK,
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
global.lure_data[LURE.LURE_BASIC_1, LP.COST_SELL]			= 100 / obj_game_controller.multiplier;	
global.lure_data[LURE.LURE_BASIC_1, LP.COST_BUY]			= 100 / obj_game_controller.multiplier;	
global.lure_data[LURE.LURE_BASIC_1, LP.CATCH_CHANCE]		= [
	/* NONE		*/						undefined,
	/* CLAM		*/						1.0,
	/* CLOWN	*/						0.4,
	/* CARP		*/						0.2,
	/* DIAMOND	*/						0.2,
	/* TONY		LOLLIPOP 3		*/		0.3,
	/* SHARK	FRAZZLE 4		*/		0.1,
	/* MOAWK	LOLLIPOP 1		*/		0.05,
	/* SINKER	*/						1.0,
	/* SHREDDER POINTED			*/		0.2,
	/* GUPPY	LOLLIPOP 2		*/		0.5,
	/* CHEDDAR	*/						1.0,
	/* WHALE	SWITCHBLADE		*/		0.0,
	/* KOI		LOLLIPOP 1		*/		0.07,
	/* SPIKY	POINTED			*/		0.07,
	/* LIP		FRAZZLE 2		*/		0.0,
	/* TERROR	FEATHERED		*/		0.05,
	/* BONES	*/						1.0,
	/* GLUB		FRAZZLE 1		*/		0.2,
	/* LOBSTER	COINED			*/		0.1,
	/* OCTO		LOLLIPOP 2		*/		0.1,
	/* GIRAFFE	TWINED			*/		0.2,
	/* GARY		LOLLIPOP 3		*/		0.05,
	/* SHRIMP	*/						1.0,
	/* STAR		TWINED			*/		0.15,
	/* SEEKER	FEATHERED		*/		0.0,
	/* HEART	CHAINED			*/		0.0,
	/* METROID	FLARED			*/		0.0,
	/* SKULL	SIMPLE RING		*/		0.0,
	/* GHOST	FRAZZLE 3		*/		0.2,
	/* RIGOR	DOUBLE-ANGLED	*/		0.0,
	/* AERYS					*/		0.0,
	/* REAL						*/		0.0,
	/* FISH						*/		0.25,
	/* OCTOPUS					*/		0.25,
	/* CRAB						*/		0.25,
	/* ALLIGATOR				*/		0.05,
	/* PENGUIN					*/		0.01,
	/* AERYS					*/		0.0,
];

global.lure_data[LURE.FANCY, LP.NAME]						= "Fancy Lure";
global.lure_data[LURE.FANCY, LP.DESC]						= "This lure let's other fishers know; you have class.";
global.lure_data[LURE.FANCY, LP.INFO]						= "Crafted of only the \nfinest materials. \nProbably by hand.";
global.lure_data[LURE.FANCY, LP.SPRITE]						= spr_lure_1;
global.lure_data[LURE.FANCY, LP.COST_SELL]					= 50 / obj_game_controller.multiplier;
global.lure_data[LURE.FANCY, LP.COST_BUY]					= 50 / obj_game_controller.multiplier;
global.lure_data[LURE.FANCY, LP.CATCH_CHANCE]				= [
	/* NONE		*/						undefined,
	/* CLAM		*/						1.0,
	/* CLOWN	*/						0.5,
	/* CARP		*/						0.3,
	/* DIAMOND	*/						0.3,
	/* TONY		LOLLIPOP 3		*/		0.4,
	/* SHARK	FRAZZLE 4		*/		0.2,
	/* MOAWK	LOLLIPOP 1		*/		0.1,
	/* SINKER	*/						1.0,
	/* SHREDDER POINTED			*/		0.3,
	/* GUPPY	LOLLIPOP 2		*/		0.55,
	/* CHEDDAR	*/						1.0,
	/* WHALE	SWITCHBLADE		*/		0.1,
	/* KOI		LOLLIPOP 1		*/		0.1,
	/* SPIKY	POINTED			*/		0.1,
	/* LIP		FRAZZLE 2		*/		0.05,
	/* TERROR	FEATHERED		*/		0.1,
	/* BONES	*/						1.0,
	/* GLUB		FRAZZLE 1		*/		0.3,
	/* LOBSTER	COINED			*/		0.2,
	/* OCTO		LOLLIPOP 2		*/		0.2,
	/* GIRAFFE	TWINED			*/		0.3,
	/* GARY		LOLLIPOP 3		*/		0.3,
	/* SHRIMP	*/						1.0,
	/* STAR		TWINED			*/		0.2,
	/* SEEKER	FEATHERED		*/		0.0,
	/* HEART	CHAINED			*/		0.0,
	/* METROID	FLARED			*/		0.0,
	/* SKULL	SIMPLE RING		*/		0.0,
	/* GHOST	FRAZZLE 3		*/		0.2,
	/* RIGOR	DOUBLE-ANGLED	*/		0.0,
	/* AERYS					*/		0.0,
	/* REAL						*/		0.0,
	/* FISH						*/		0.25,
	/* OCTOPUS					*/		0.25,
	/* CRAB						*/		0.25,
	/* ALLIGATOR				*/		0.07,
	/* PENGUIN					*/		0.60,
];

global.lure_data[LURE.FANCIER, LP.NAME]						= "Fancier Lure";
global.lure_data[LURE.FANCIER, LP.DESC]						= "A major upgrade in Fancy!";
global.lure_data[LURE.FANCIER, LP.INFO]						= "Crafted of only the \nfinest materials. \nDefinitely by hand.";
global.lure_data[LURE.FANCIER, LP.SPRITE]					= spr_lure_2;
global.lure_data[LURE.FANCIER, LP.COST_SELL]				= 75 / obj_game_controller.multiplier;
global.lure_data[LURE.FANCIER, LP.COST_BUY]					= 75 / obj_game_controller.multiplier;
global.lure_data[LURE.FANCIER, LP.CATCH_CHANCE]				= [
	/* NONE		*/						undefined,
	/* CLAM		*/						1.0,
	/* CLOWN	*/						0.55,
	/* CARP		*/						0.35,
	/* DIAMOND	*/						0.35,
	/* TONY		LOLLIPOP 3		*/		0.45,
	/* SHARK	FRAZZLE 4		*/		0.25,
	/* MOAWK	LOLLIPOP 1		*/		0.15,
	/* SINKER	*/						1.0,
	/* SHREDDER POINTED			*/		0.35,
	/* GUPPY	LOLLIPOP 2		*/		0.6,
	/* CHEDDAR	*/						1.0,
	/* WHALE	SWITCHBLADE		*/		0.15,
	/* KOI		LOLLIPOP 1		*/		0.15,
	/* SPIKY	POINTED			*/		0.15,
	/* LIP		FRAZZLE 2		*/		0.1,
	/* TERROR	FEATHERED		*/		0.15,
	/* BONES	*/						1.0,
	/* GLUB		FRAZZLE 1		*/		0.35,
	/* LOBSTER	COINED			*/		0.25,
	/* OCTO		LOLLIPOP 2		*/		0.25,
	/* GIRAFFE	TWINED			*/		0.35,
	/* GARY		LOLLIPOP 3		*/		0.35,
	/* SHRIMP	*/						1.0,
	/* STAR		TWINED			*/		0.25,
	/* SEEKER	FEATHERED		*/		0.01,
	/* HEART	CHAINED			*/		0.01,
	/* METROID	FLARED			*/		0.01,
	/* SKULL	SIMPLE RING		*/		0.01,
	/* GHOST	FRAZZLE 3		*/		0.25,
	/* RIGOR	DOUBLE-ANGLED	*/		0.01,
	/* AERYS					*/		0.0,
	/* REAL						*/		0.0,
	/* FISH						*/		0.25,
	/* OCTOPUS					*/		0.25,
	/* CRAB						*/		0.25,
	/* ALLIGATOR				*/		0.09,
	/* PENGUIN					*/		0.65,
];

global.lure_data[LURE.FANCIEST, LP.NAME]						= "Fanciest Lure";
global.lure_data[LURE.FANCIEST, LP.DESC]						= "Maximum Fancy.";
global.lure_data[LURE.FANCIEST, LP.INFO]						= "Crafted of only the \nfinest materials. \nNot possible to be \nmade by hand.";
global.lure_data[LURE.FANCIEST, LP.SPRITE]						= spr_lure_3;
global.lure_data[LURE.FANCIEST, LP.COST_SELL]					= 115 / obj_game_controller.multiplier;
global.lure_data[LURE.FANCIEST, LP.COST_BUY]					= 115 / obj_game_controller.multiplier;
global.lure_data[LURE.FANCIEST, LP.CATCH_CHANCE]				= [
	/* NONE		*/						undefined,
	/* CLAM		*/						1.0,
	/* CLOWN	*/						0.55,
	/* CARP		*/						0.35,
	/* DIAMOND	*/						0.35,
	/* TONY		LOLLIPOP 3		*/		0.45,
	/* SHARK	FRAZZLE 4		*/		0.25,
	/* MOAWK	LOLLIPOP 1		*/		0.15,
	/* SINKER	*/						1.0,
	/* SHREDDER POINTED			*/		0.35,
	/* GUPPY	LOLLIPOP 2		*/		0.6,
	/* CHEDDAR	*/						1.0,
	/* WHALE	SWITCHBLADE		*/		0.15,
	/* KOI		LOLLIPOP 1		*/		0.15,
	/* SPIKY	POINTED			*/		0.15,
	/* LIP		FRAZZLE 2		*/		0.1,
	/* TERROR	FEATHERED		*/		0.15,
	/* BONES	*/						1.0,
	/* GLUB		FRAZZLE 1		*/		0.35,
	/* LOBSTER	COINED			*/		0.25,
	/* OCTO		LOLLIPOP 2		*/		0.25,
	/* GIRAFFE	TWINED			*/		0.35,
	/* GARY		LOLLIPOP 3		*/		0.35,
	/* SHRIMP	*/						1.0,
	/* STAR		TWINED			*/		0.25,
	/* SEEKER	FEATHERED		*/		0.05,
	/* HEART	CHAINED			*/		0.05,
	/* METROID	FLARED			*/		0.05,
	/* SKULL	SIMPLE RING		*/		0.05,
	/* GHOST	FRAZZLE 3		*/		0.3,
	/* RIGOR	DOUBLE-ANGLED	*/		0.05,
	/* AERYS					*/		0.0,
	/* REAL						*/		0.0,
	/* FISH						*/		0.25,
	/* OCTOPUS					*/		0.25,
	/* CRAB						*/		0.25,
	/* ALLIGATOR				*/		0.10,
	/* PENGUIN					*/		0.70,
];

global.lure_data[LURE.FEATHERED, LP.NAME]						= "Feathered Lure";
global.lure_data[LURE.FEATHERED, LP.DESC]						= "A delicate Feather- for a delicate cast.";
global.lure_data[LURE.FEATHERED, LP.INFO]						= "The feathers used \non this lure come from \na rare bird, \none that lives far \nfrom these lands.";
global.lure_data[LURE.FEATHERED, LP.SPRITE]						= spr_lure_4;
global.lure_data[LURE.FEATHERED, LP.COST_SELL]					= 150 / obj_game_controller.multiplier;
global.lure_data[LURE.FEATHERED, LP.COST_BUY]					= 150 / obj_game_controller.multiplier;
global.lure_data[LURE.FEATHERED, LP.CATCH_CHANCE]				= [
	/* NONE		*/						undefined,
	/* CLAM		*/						1.0,
	/* CLOWN	*/						0.55,
	/* CARP		*/						0.35,
	/* DIAMOND	*/						0.35,
	/* TONY		LOLLIPOP 3		*/		0.45,
	/* SHARK	FRAZZLE 4		*/		0.25,
	/* MOAWK	LOLLIPOP 1		*/		0.15,
	/* SINKER	*/						1.0,
	/* SHREDDER POINTED			*/		0.35,
	/* GUPPY	LOLLIPOP 2		*/		0.6,
	/* CHEDDAR	*/						1.0,
	/* WHALE	SWITCHBLADE		*/		0.15,
	/* KOI		LOLLIPOP 1		*/		0.15,
	/* SPIKY	POINTED			*/		0.15,
	/* LIP		FRAZZLE 2		*/		0.1,
	/* TERROR	FEATHERED		*/		0.5,
	/* BONES	*/						1.0,
	/* GLUB		FRAZZLE 1		*/		0.35,
	/* LOBSTER	COINED			*/		0.25,
	/* OCTO		LOLLIPOP 2		*/		0.25,
	/* GIRAFFE	TWINED			*/		0.35,
	/* GARY		LOLLIPOP 3		*/		0.35,
	/* SHRIMP	*/						1.0,
	/* STAR		TWINED			*/		0.25,
	/* SEEKER	FEATHERED		*/		0.5,
	/* HEART	CHAINED			*/		0.05,
	/* METROID	FLARED			*/		0.05,
	/* SKULL	SIMPLE RING		*/		0.05,
	/* GHOST	FRAZZLE 3		*/		0.3,
	/* RIGOR	DOUBLE-ANGLED	*/		0.05,
	/* AERYS					*/		0.0,
	/* REAL						*/		0.0,
	/* FISH						*/		0.25,
	/* OCTOPUS					*/		0.25,
	/* CRAB						*/		0.25,
	/* ALLIGATOR				*/		0.00,
	/* PENGUIN					*/		1.00,
];

global.lure_data[LURE.POINTED, LP.NAME]						= "Pointed Lure";
global.lure_data[LURE.POINTED, LP.DESC]						= "One Point- One View";
global.lure_data[LURE.POINTED, LP.INFO]						= "The extra point serves \nto attract rarer fish. \nMaybe...?\nOr was that my mom?";
global.lure_data[LURE.POINTED, LP.SPRITE]					= spr_lure_5;
global.lure_data[LURE.POINTED, LP.COST_SELL]				= 175 / obj_game_controller.multiplier;
global.lure_data[LURE.POINTED, LP.COST_BUY]					= 175 / obj_game_controller.multiplier;
global.lure_data[LURE.POINTED, LP.CATCH_CHANCE]				= [
	/* NONE		*/						undefined,
	/* CLAM		*/						1.0,
	/* CLOWN	*/						0.55,
	/* CARP		*/						0.35,
	/* DIAMOND	*/						0.35,
	/* TONY		LOLLIPOP 3		*/		0.45,
	/* SHARK	FRAZZLE 4		*/		0.25,
	/* MOAWK	LOLLIPOP 1		*/		0.15,
	/* SINKER	*/						1.0,
	/* SHREDDER POINTED			*/		0.85,
	/* GUPPY	LOLLIPOP 2		*/		0.6,
	/* CHEDDAR	*/						1.0,
	/* WHALE	SWITCHBLADE		*/		0.15,
	/* KOI		LOLLIPOP 1		*/		0.15,
	/* SPIKY	POINTED			*/		0.5,
	/* LIP		FRAZZLE 2		*/		0.1,
	/* TERROR	FEATHERED		*/		0.25,
	/* BONES	*/						1.0,
	/* GLUB		FRAZZLE 1		*/		0.35,
	/* LOBSTER	COINED			*/		0.25,
	/* OCTO		LOLLIPOP 2		*/		0.25,
	/* GIRAFFE	TWINED			*/		0.35,
	/* GARY		LOLLIPOP 3		*/		0.35,
	/* SHRIMP	*/						1.0,
	/* STAR		TWINED			*/		0.25,
	/* SEEKER	FEATHERED		*/		0.05,
	/* HEART	CHAINED			*/		0.05,
	/* METROID	FLARED			*/		0.05,
	/* SKULL	SIMPLE RING		*/		0.05,
	/* GHOST	FRAZZLE 3		*/		0.3,
	/* RIGOR	DOUBLE-ANGLED	*/		0.05,
	/* AERYS					*/		0.0,
	/* REAL						*/		0.0,
	/* FISH						*/		0.25,
	/* OCTOPUS					*/		0.25,
	/* CRAB						*/		0.25,
	/* ALLIGATOR				*/		0.60,
	/* PENGUIN					*/		0.00,
];

global.lure_data[LURE.TWINED, LP.NAME]						= "Twined Lure";
global.lure_data[LURE.TWINED, LP.DESC]						= "A twined rap counterbalances this lure.";
global.lure_data[LURE.TWINED, LP.INFO]						= "This comes from a \nsecretive clan of \nancient fishers, high \nin the mountains. \nFour Twenty high.";
global.lure_data[LURE.TWINED, LP.SPRITE]					= spr_lure_6;
global.lure_data[LURE.TWINED, LP.COST_SELL]					= 20 / obj_game_controller.multiplier;
global.lure_data[LURE.TWINED, LP.COST_BUY]					= 20 / obj_game_controller.multiplier;
global.lure_data[LURE.TWINED, LP.CATCH_CHANCE]				= [
	/* NONE		*/						undefined,
	/* CLAM		*/						1.0,
	/* CLOWN	*/						0.55,
	/* CARP		*/						0.35,
	/* DIAMOND	*/						0.35,
	/* TONY		LOLLIPOP 3		*/		0.45,
	/* SHARK	FRAZZLE 4		*/		0.25,
	/* MOAWK	LOLLIPOP 1		*/		0.15,
	/* SINKER	*/						1.0,
	/* SHREDDER POINTED			*/		0.25,
	/* GUPPY	LOLLIPOP 2		*/		0.6,
	/* CHEDDAR	*/						1.0,
	/* WHALE	SWITCHBLADE		*/		0.15,
	/* KOI		LOLLIPOP 1		*/		0.15,
	/* SPIKY	POINTED			*/		0.2,
	/* LIP		FRAZZLE 2		*/		0.1,
	/* TERROR	FEATHERED		*/		0.25,
	/* BONES	*/						1.0,
	/* GLUB		FRAZZLE 1		*/		0.35,
	/* LOBSTER	COINED			*/		0.25,
	/* OCTO		LOLLIPOP 2		*/		0.25,
	/* GIRAFFE	TWINED			*/		0.85,
	/* GARY		LOLLIPOP 3		*/		0.35,
	/* SHRIMP	*/						1.0,
	/* STAR		TWINED			*/		0.25,
	/* SEEKER	FEATHERED		*/		0.05,
	/* HEART	CHAINED			*/		0.05,
	/* METROID	FLARED			*/		0.05,
	/* SKULL	SIMPLE RING		*/		0.05,
	/* GHOST	FRAZZLE 3		*/		0.3,
	/* RIGOR	DOUBLE-ANGLED	*/		0.05,
	/* AERYS					*/		0.0,
	/* REAL						*/		0.0,
	/* FISH						*/		0.25,
	/* OCTOPUS					*/		0.25,
	/* CRAB						*/		0.25,
	/* ALLIGATOR				*/		0.00,
	/* PENGUIN					*/		0.05,
];

global.lure_data[LURE.LOLLIPOP_1, LP.NAME]						= "Lollipop Lure 1";
global.lure_data[LURE.LOLLIPOP_1, LP.DESC]						= "A Delightful Treat";
global.lure_data[LURE.LOLLIPOP_1, LP.INFO]						= "You believe this \ncould attract fish \nwith a sweet tooth.";
global.lure_data[LURE.LOLLIPOP_1, LP.SPRITE]					= spr_lure_7;
global.lure_data[LURE.LOLLIPOP_1, LP.COST_SELL]					= 225 / obj_game_controller.multiplier;
global.lure_data[LURE.LOLLIPOP_1, LP.COST_BUY]					= 225 / obj_game_controller.multiplier;
global.lure_data[LURE.LOLLIPOP_1, LP.CATCH_CHANCE]				= [
	/* NONE		*/						undefined,
	/* CLAM		*/						1.0,
	/* CLOWN	*/						0.55,
	/* CARP		*/						0.35,
	/* DIAMOND	*/						0.35,
	/* TONY		LOLLIPOP 3		*/		0.45,
	/* SHARK	FRAZZLE 4		*/		0.25,
	/* MOAWK	LOLLIPOP 1		*/		0.85,
	/* SINKER	*/						1.0,
	/* SHREDDER POINTED			*/		0.25,
	/* GUPPY	LOLLIPOP 2		*/		0.6,
	/* CHEDDAR	*/						1.0,
	/* WHALE	SWITCHBLADE		*/		0.15,
	/* KOI		LOLLIPOP 1		*/		0.85,
	/* SPIKY	POINTED			*/		0.2,
	/* LIP		FRAZZLE 2		*/		0.1,
	/* TERROR	FEATHERED		*/		0.25,
	/* BONES	*/						1.0,
	/* GLUB		FRAZZLE 1		*/		0.35,
	/* LOBSTER	COINED			*/		0.25,
	/* OCTO		LOLLIPOP 2		*/		0.25,
	/* GIRAFFE	TWINED			*/		0.25,
	/* GARY		LOLLIPOP 3		*/		0.35,
	/* SHRIMP	*/						1.0,
	/* STAR		TWINED			*/		0.05,
	/* SEEKER	FEATHERED		*/		0.05,
	/* HEART	CHAINED			*/		0.05,
	/* METROID	FLARED			*/		0.05,
	/* SKULL	SIMPLE RING		*/		0.05,
	/* GHOST	FRAZZLE 3		*/		0.3,
	/* RIGOR	DOUBLE-ANGLED	*/		0.05,
	/* AERYS					*/		0.0,
	/* REAL						*/		0.0,
	/* FISH						*/		0.25,
	/* OCTOPUS					*/		0.25,
	/* CRAB						*/		0.25,
	/* ALLIGATOR				*/		0.00,
	/* PENGUIN					*/		0.00,
];

global.lure_data[LURE.LOLLIPOP_2, LP.NAME]						= "Lollipop Lure 2";
global.lure_data[LURE.LOLLIPOP_2, LP.DESC]						= "A Delightful Treat";
global.lure_data[LURE.LOLLIPOP_2, LP.INFO]						= "You believe this \ncould attract fish \nwith a sweeter tooth.";
global.lure_data[LURE.LOLLIPOP_2, LP.SPRITE]					= spr_lure_8;
global.lure_data[LURE.LOLLIPOP_2, LP.COST_SELL]					= 225 / obj_game_controller.multiplier;
global.lure_data[LURE.LOLLIPOP_2, LP.COST_BUY]					= 225 / obj_game_controller.multiplier;
global.lure_data[LURE.LOLLIPOP_2, LP.CATCH_CHANCE]				= [
	/* NONE		*/						undefined,
	/* CLAM		*/						1.0,
	/* CLOWN	*/						0.55,
	/* CARP		*/						0.35,
	/* DIAMOND	*/						0.35,
	/* TONY		LOLLIPOP 3		*/		0.45,
	/* SHARK	FRAZZLE 4		*/		0.25,
	/* MOAWK	LOLLIPOP 1		*/		0.25,
	/* SINKER	*/						1.0,
	/* SHREDDER POINTED			*/		0.25,
	/* GUPPY	LOLLIPOP 2		*/		1.0,
	/* CHEDDAR	*/						1.0,
	/* WHALE	SWITCHBLADE		*/		0.15,
	/* KOI		LOLLIPOP 1		*/		0.25,
	/* SPIKY	POINTED			*/		0.2,
	/* LIP		FRAZZLE 2		*/		0.1,
	/* TERROR	FEATHERED		*/		0.25,
	/* BONES	*/						1.0,
	/* GLUB		FRAZZLE 1		*/		0.35,
	/* LOBSTER	COINED			*/		0.25,
	/* OCTO		LOLLIPOP 2		*/		0.25,
	/* GIRAFFE	TWINED			*/		0.25,
	/* GARY		LOLLIPOP 3		*/		0.35,
	/* SHRIMP	*/						1.0,
	/* STAR		TWINED			*/		0.05,
	/* SEEKER	FEATHERED		*/		0.05,
	/* HEART	CHAINED			*/		0.05,
	/* METROID	FLARED			*/		0.05,
	/* SKULL	SIMPLE RING		*/		0.05,
	/* GHOST	FRAZZLE 3		*/		0.3,
	/* RIGOR	DOUBLE-ANGLED	*/		0.05,
	/* AERYS					*/		0.0,
	/* REAL						*/		0.0,
	/* FISH						*/		0.25,
	/* OCTOPUS					*/		0.25,
	/* CRAB						*/		0.25,
	/* ALLIGATOR				*/		0.00,
	/* PENGUIN					*/		0.00,
];

global.lure_data[LURE.LOLLIPOP_3, LP.NAME]						= "Lollipop Lure 3";
global.lure_data[LURE.LOLLIPOP_3, LP.DESC]						= "A Delightful Treat";
global.lure_data[LURE.LOLLIPOP_3, LP.INFO]						= "You believe this \ncould attract fish \nwith the sweetest tooth.";
global.lure_data[LURE.LOLLIPOP_3, LP.SPRITE]					= spr_lure_9;
global.lure_data[LURE.LOLLIPOP_3, LP.COST_SELL]					= 225 / obj_game_controller.multiplier;
global.lure_data[LURE.LOLLIPOP_3, LP.COST_BUY]					= 225 / obj_game_controller.multiplier;
global.lure_data[LURE.LOLLIPOP_3, LP.CATCH_CHANCE]				= [
	/* NONE		*/						undefined,
	/* CLAM		*/						1.0,
	/* CLOWN	*/						0.55,
	/* CARP		*/						0.35,
	/* DIAMOND	*/						0.35,
	/* TONY		LOLLIPOP 3		*/		0.85,
	/* SHARK	FRAZZLE 4		*/		0.25,
	/* MOAWK	LOLLIPOP 1		*/		0.25,
	/* SINKER	*/						1.0,
	/* SHREDDER POINTED			*/		0.25,
	/* GUPPY	LOLLIPOP 2		*/		0.25,
	/* CHEDDAR	*/						1.0,
	/* WHALE	SWITCHBLADE		*/		0.15,
	/* KOI		LOLLIPOP 1		*/		0.25,
	/* SPIKY	POINTED			*/		0.2,
	/* LIP		FRAZZLE 2		*/		0.1,
	/* TERROR	FEATHERED		*/		0.25,
	/* BONES	*/						1.0,
	/* GLUB		FRAZZLE 1		*/		0.35,
	/* LOBSTER	COINED			*/		0.25,
	/* OCTO		LOLLIPOP 2		*/		0.15,
	/* GIRAFFE	TWINED			*/		0.25,
	/* GARY		LOLLIPOP 3		*/		0.85,
	/* SHRIMP	*/						1.0,
	/* STAR		TWINED			*/		0.05,
	/* SEEKER	FEATHERED		*/		0.05,
	/* HEART	CHAINED			*/		0.05,
	/* METROID	FLARED			*/		0.05,
	/* SKULL	SIMPLE RING		*/		0.05,
	/* GHOST	FRAZZLE 3		*/		0.3,
	/* RIGOR	DOUBLE-ANGLED	*/		0.05,
	/* AERYS					*/		0.0,
	/* REAL						*/		0.0,
	/* FISH						*/		0.25,
	/* OCTOPUS					*/		0.25,
	/* CRAB						*/		0.25,
	/* ALLIGATOR				*/		0.00,
	/* PENGUIN					*/		0.00,
];

global.lure_data[LURE.FLARED, LP.NAME]						= "Flared lure";
global.lure_data[LURE.FLARED, LP.DESC]						= "Flared Tip for Surface Balance";
global.lure_data[LURE.FLARED, LP.INFO]						= "This lure is likely \nto attract Uncommon and \nRare fish of unique traits.";
global.lure_data[LURE.FLARED, LP.SPRITE]					= spr_lure_10;
global.lure_data[LURE.FLARED, LP.COST_SELL]					= 225 / obj_game_controller.multiplier;
global.lure_data[LURE.FLARED, LP.COST_BUY]					= 260 / obj_game_controller.multiplier;
global.lure_data[LURE.FLARED, LP.CATCH_CHANCE]				= [
	/* NONE		*/						undefined,
	/* CLAM		*/						1.0,
	/* CLOWN	*/						0.55,
	/* CARP		*/						0.35,
	/* DIAMOND	*/						0.35,
	/* TONY		LOLLIPOP 3		*/		0.35,
	/* SHARK	FRAZZLE 4		*/		0.25,
	/* MOAWK	LOLLIPOP 1		*/		0.25,
	/* SINKER	*/						1.0,
	/* SHREDDER POINTED			*/		0.25,
	/* GUPPY	LOLLIPOP 2		*/		0.25,
	/* CHEDDAR	*/						1.0,
	/* WHALE	SWITCHBLADE		*/		0.15,
	/* KOI		LOLLIPOP 1		*/		0.25,
	/* SPIKY	POINTED			*/		0.2,
	/* LIP		FRAZZLE 2		*/		0.1,
	/* TERROR	FEATHERED		*/		0.25,
	/* BONES	*/						1.0,
	/* GLUB		FRAZZLE 1		*/		0.35,
	/* LOBSTER	COINED			*/		0.25,
	/* OCTO		LOLLIPOP 2		*/		0.15,
	/* GIRAFFE	TWINED			*/		0.25,
	/* GARY		LOLLIPOP 3		*/		0.35,
	/* SHRIMP	*/						1.0,
	/* STAR		TWINED			*/		0.05,
	/* SEEKER	FEATHERED		*/		0.05,
	/* HEART	CHAINED			*/		0.05,
	/* METROID	FLARED			*/		0.80,
	/* SKULL	SIMPLE RING		*/		0.05,
	/* GHOST	FRAZZLE 3		*/		0.3,
	/* RIGOR	DOUBLE-ANGLED	*/		0.05,
	/* AERYS					*/		0.0,
	/* REAL						*/		0.0,
	/* FISH						*/		0.25,
	/* OCTOPUS					*/		0.25,
	/* CRAB						*/		0.25,
	/* ALLIGATOR				*/		0.80,
	/* PENGUIN					*/		0.20,
];

global.lure_data[LURE.DOUBLE, LP.NAME]						= "Double-Angled Lure";
global.lure_data[LURE.DOUBLE, LP.DESC]						= "Able to catch fish from many directions.";
global.lure_data[LURE.DOUBLE, LP.INFO]						= "Though unconventional- \nthis lure can help \ncatch two fish at once! \nAt least... \nso they say...";
global.lure_data[LURE.DOUBLE, LP.SPRITE]					= spr_lure_11;
global.lure_data[LURE.DOUBLE, LP.COST_SELL]					= 300 / obj_game_controller.multiplier;
global.lure_data[LURE.DOUBLE, LP.COST_BUY]					= 300 / obj_game_controller.multiplier;
global.lure_data[LURE.DOUBLE, LP.CATCH_CHANCE]				= [
	/* NONE		*/						undefined,
	/* CLAM		*/						1.0,
	/* CLOWN	*/						0.55,
	/* CARP		*/						0.35,
	/* DIAMOND	*/						0.35,
	/* TONY		LOLLIPOP 3		*/		0.35,
	/* SHARK	FRAZZLE 4		*/		0.25,
	/* MOAWK	LOLLIPOP 1		*/		0.25,
	/* SINKER	*/						1.0,
	/* SHREDDER POINTED			*/		0.25,
	/* GUPPY	LOLLIPOP 2		*/		0.25,
	/* CHEDDAR	*/						1.0,
	/* WHALE	SWITCHBLADE		*/		0.15,
	/* KOI		LOLLIPOP 1		*/		0.25,
	/* SPIKY	POINTED			*/		0.2,
	/* LIP		FRAZZLE 2		*/		0.1,
	/* TERROR	FEATHERED		*/		0.25,
	/* BONES	*/						1.0,
	/* GLUB		FRAZZLE 1		*/		0.35,
	/* LOBSTER	COINED			*/		0.25,
	/* OCTO		LOLLIPOP 2		*/		0.15,
	/* GIRAFFE	TWINED			*/		0.25,
	/* GARY		LOLLIPOP 3		*/		0.35,
	/* SHRIMP	*/						1.0,
	/* STAR		TWINED			*/		0.05,
	/* SEEKER	FEATHERED		*/		0.05,
	/* HEART	CHAINED			*/		0.05,
	/* METROID	FLARED			*/		0.05,
	/* SKULL	SIMPLE RING		*/		0.05,
	/* GHOST	FRAZZLE 3		*/		0.3,
	/* RIGOR	DOUBLE-ANGLED	*/		0.75,
	/* AERYS					*/		0.0,
	/* REAL						*/		0.0,
	/* FISH						*/		0.25,
	/* OCTOPUS					*/		0.25,
	/* CRAB						*/		0.25,
	/* ALLIGATOR				*/		0.00,
	/* PENGUIN					*/		0.09,
];

global.lure_data[LURE.CHAINED, LP.NAME]						= "Chained Lure";
global.lure_data[LURE.CHAINED, LP.DESC]						= "Chained for easier drag";
global.lure_data[LURE.CHAINED, LP.INFO]						= "This lure is able \nto drag heavier fish- \nit is much less likely \nto break!";
global.lure_data[LURE.CHAINED, LP.SPRITE]					= spr_lure_12;
global.lure_data[LURE.CHAINED, LP.COST_SELL]				= 360 / obj_game_controller.multiplier;
global.lure_data[LURE.CHAINED, LP.COST_BUY]					= 360 / obj_game_controller.multiplier;
global.lure_data[LURE.CHAINED, LP.CATCH_CHANCE]				= [
	/* NONE		*/						undefined,
	/* CLAM		*/						1.0,
	/* CLOWN	*/						0.55,
	/* CARP		*/						0.35,
	/* DIAMOND	*/						0.35,
	/* TONY		LOLLIPOP 3		*/		0.35,
	/* SHARK	FRAZZLE 4		*/		0.25,
	/* MOAWK	LOLLIPOP 1		*/		0.25,
	/* SINKER	*/						1.0,
	/* SHREDDER POINTED			*/		0.25,
	/* GUPPY	LOLLIPOP 2		*/		0.25,
	/* CHEDDAR	*/						1.0,
	/* WHALE	SWITCHBLADE		*/		0.15,
	/* KOI		LOLLIPOP 1		*/		0.25,
	/* SPIKY	POINTED			*/		0.2,
	/* LIP		FRAZZLE 2		*/		0.1,
	/* TERROR	FEATHERED		*/		0.25,
	/* BONES	*/						1.0,
	/* GLUB		FRAZZLE 1		*/		0.35,
	/* LOBSTER	COINED			*/		0.25,
	/* OCTO		LOLLIPOP 2		*/		0.15,
	/* GIRAFFE	TWINED			*/		0.25,
	/* GARY		LOLLIPOP 3		*/		0.35,
	/* SHRIMP	*/						1.0,
	/* STAR		TWINED			*/		0.05,
	/* SEEKER	FEATHERED		*/		0.05,
	/* HEART	CHAINED			*/		0.75,
	/* METROID	FLARED			*/		0.05,
	/* SKULL	SIMPLE RING		*/		0.05,
	/* GHOST	FRAZZLE 3		*/		0.3,
	/* RIGOR	DOUBLE-ANGLED	*/		0.05,
	/* AERYS					*/		0.0,
	/* REAL						*/		0.0,
	/* FISH						*/		0.25,
	/* OCTOPUS					*/		0.25,
	/* CRAB						*/		0.25,
	/* ALLIGATOR				*/		1.00,
	/* PENGUIN					*/		0.00,
];

global.lure_data[LURE.RING, LP.NAME]						= "Simple Ring Hook";
global.lure_data[LURE.RING, LP.DESC]						= "A Classic Design";
global.lure_data[LURE.RING, LP.INFO]						= "Used by the fishers \nof yore- you can't \ngo wrong with this \nfine lure!";
global.lure_data[LURE.RING, LP.SPRITE]						= spr_lure_13;
global.lure_data[LURE.RING, LP.COST_SELL]					= 450 / obj_game_controller.multiplier;
global.lure_data[LURE.RING, LP.COST_BUY]					= 450 / obj_game_controller.multiplier;
global.lure_data[LURE.RING, LP.CATCH_CHANCE]				= [
	/* NONE		*/						undefined,
	/* CLAM		*/						1.0,
	/* CLOWN	*/						0.55,
	/* CARP		*/						0.35,
	/* DIAMOND	*/						0.35,
	/* TONY		LOLLIPOP 3		*/		0.35,
	/* SHARK	FRAZZLE 4		*/		0.25,
	/* MOAWK	LOLLIPOP 1		*/		0.25,
	/* SINKER	*/						1.0,
	/* SHREDDER POINTED			*/		0.25,
	/* GUPPY	LOLLIPOP 2		*/		0.25,
	/* CHEDDAR	*/						1.0,
	/* WHALE	SWITCHBLADE		*/		0.15,
	/* KOI		LOLLIPOP 1		*/		0.25,
	/* SPIKY	POINTED			*/		0.2,
	/* LIP		FRAZZLE 2		*/		0.1,
	/* TERROR	FEATHERED		*/		0.25,
	/* BONES	*/						1.0,
	/* GLUB		FRAZZLE 1		*/		0.35,
	/* LOBSTER	COINED			*/		0.25,
	/* OCTO		LOLLIPOP 2		*/		0.15,
	/* GIRAFFE	TWINED			*/		0.25,
	/* GARY		LOLLIPOP 3		*/		0.35,
	/* SHRIMP	*/						1.0,
	/* STAR		TWINED			*/		0.05,
	/* SEEKER	FEATHERED		*/		0.05,
	/* HEART	CHAINED			*/		0.05,
	/* METROID	FLARED			*/		0.05,
	/* SKULL	SIMPLE RING		*/		0.75,
	/* GHOST	FRAZZLE 3		*/		0.3,
	/* RIGOR	DOUBLE-ANGLED	*/		0.05,
	/* AERYS					*/		0.0,
	/* REAL						*/		0.0,
	/* FISH						*/		0.25,
	/* OCTOPUS					*/		0.25,
	/* CRAB						*/		0.25,
	/* ALLIGATOR				*/		0.01,
	/* PENGUIN					*/		0.30,
];

global.lure_data[LURE.COINED, LP.NAME]						= "Coined Double-Tip";
global.lure_data[LURE.COINED, LP.DESC]						= "A shiny bauble!";
global.lure_data[LURE.COINED, LP.INFO]						= "The coin attached \nis supposed to attract... \nspecial fish.";
global.lure_data[LURE.COINED, LP.SPRITE]					= spr_lure_14;
global.lure_data[LURE.COINED, LP.COST_SELL]					= 550 / obj_game_controller.multiplier;
global.lure_data[LURE.COINED, LP.COST_BUY]					= 550 / obj_game_controller.multiplier;
global.lure_data[LURE.COINED, LP.CATCH_CHANCE]				= [
	/* NONE		*/						undefined,
	/* CLAM		*/						1.0,
	/* CLOWN	*/						0.55,
	/* CARP		*/						0.35,
	/* DIAMOND	*/						0.35,
	/* TONY		LOLLIPOP 3		*/		0.35,
	/* SHARK	FRAZZLE 4		*/		0.25,
	/* MOAWK	LOLLIPOP 1		*/		0.25,
	/* SINKER	*/						1.0,
	/* SHREDDER POINTED			*/		0.25,
	/* GUPPY	LOLLIPOP 2		*/		0.25,
	/* CHEDDAR	*/						1.0,
	/* WHALE	SWITCHBLADE		*/		0.15,
	/* KOI		LOLLIPOP 1		*/		0.25,
	/* SPIKY	POINTED			*/		0.2,
	/* LIP		FRAZZLE 2		*/		0.1,
	/* TERROR	FEATHERED		*/		0.25,
	/* BONES	*/						1.0,
	/* GLUB		FRAZZLE 1		*/		0.35,
	/* LOBSTER	COINED			*/		0.75,
	/* OCTO		LOLLIPOP 2		*/		0.15,
	/* GIRAFFE	TWINED			*/		0.25,
	/* GARY		LOLLIPOP 3		*/		0.35,
	/* SHRIMP	*/						1.0,
	/* STAR		TWINED			*/		0.05,
	/* SEEKER	FEATHERED		*/		0.05,
	/* HEART	CHAINED			*/		0.05,
	/* METROID	FLARED			*/		0.05,
	/* SKULL	SIMPLE RING		*/		0.05,
	/* GHOST	FRAZZLE 3		*/		0.3,
	/* RIGOR	DOUBLE-ANGLED	*/		0.05,
	/* AERYS					*/		0.0,
	/* REAL						*/		0.0,
	/* FISH						*/		0.25,
	/* OCTOPUS					*/		0.25,
	/* CRAB						*/		0.25,
	/* ALLIGATOR				*/		0.25,
	/* PENGUIN					*/		0.30,
];

global.lure_data[LURE.J_1, LP.NAME]						= "Frazzle J Hook 1";
global.lure_data[LURE.J_1, LP.DESC]						= "Frazzle Jazzle this hook is gonna Snazzle!";
global.lure_data[LURE.J_1, LP.INFO]						= "Underwater signals are \ncaptured by this lure. \nMaybe you can catch a ghost!";
global.lure_data[LURE.J_1, LP.SPRITE]					= spr_lure_15;
global.lure_data[LURE.J_1, LP.COST_SELL]				= 600 / obj_game_controller.multiplier;
global.lure_data[LURE.J_1, LP.COST_BUY]					= 600 / obj_game_controller.multiplier;
global.lure_data[LURE.J_1, LP.CATCH_CHANCE]				= [
	/* NONE		*/						undefined,
	/* CLAM		*/						1.0,
	/* CLOWN	*/						0.55,
	/* CARP		*/						0.35,
	/* DIAMOND	*/						0.35,
	/* TONY		LOLLIPOP 3		*/		0.35,
	/* SHARK	FRAZZLE 4		*/		0.25,
	/* MOAWK	LOLLIPOP 1		*/		0.25,
	/* SINKER	*/						1.0,
	/* SHREDDER POINTED			*/		0.25,
	/* GUPPY	LOLLIPOP 2		*/		0.25,
	/* CHEDDAR	*/						1.0,
	/* WHALE	SWITCHBLADE		*/		0.15,
	/* KOI		LOLLIPOP 1		*/		0.25,
	/* SPIKY	POINTED			*/		0.2,
	/* LIP		FRAZZLE 2		*/		0.1,
	/* TERROR	FEATHERED		*/		0.25,
	/* BONES	*/						1.0,
	/* GLUB		FRAZZLE 1		*/		0.85,
	/* LOBSTER	COINED			*/		0.25,
	/* OCTO		LOLLIPOP 2		*/		0.15,
	/* GIRAFFE	TWINED			*/		0.25,
	/* GARY		LOLLIPOP 3		*/		0.35,
	/* SHRIMP	*/						1.0,
	/* STAR		TWINED			*/		0.05,
	/* SEEKER	FEATHERED		*/		0.05,
	/* HEART	CHAINED			*/		0.05,
	/* METROID	FLARED			*/		0.05,
	/* SKULL	SIMPLE RING		*/		0.05,
	/* GHOST	FRAZZLE 3		*/		0.3,
	/* RIGOR	DOUBLE-ANGLED	*/		0.05,
	/* AERYS					*/		0.0,
	/* REAL						*/		0.0,
	/* FISH						*/		0.25,
	/* OCTOPUS					*/		0.25,
	/* CRAB						*/		0.25,
	/* ALLIGATOR				*/		0.00,
	/* PENGUIN					*/		0.35,
];

global.lure_data[LURE.J_2, LP.NAME]						= "Frazzle J Hook 2";
global.lure_data[LURE.J_2, LP.DESC]						= "Frazzle Jazzle this hook is gonna Snazzle!";
global.lure_data[LURE.J_2, LP.INFO]						= "Underwater signals are \ncaptured by this lure. \nMaybe you can catch a heart!";
global.lure_data[LURE.J_2, LP.SPRITE]					= spr_lure_16;
global.lure_data[LURE.J_2, LP.COST_SELL]				= 500 / obj_game_controller.multiplier;
global.lure_data[LURE.J_2, LP.COST_BUY]					= 500 / obj_game_controller.multiplier;
global.lure_data[LURE.J_2, LP.CATCH_CHANCE]				= [
	/* NONE		*/						undefined,
	/* CLAM		*/						1.0,
	/* CLOWN	*/						0.55,
	/* CARP		*/						0.35,
	/* DIAMOND	*/						0.35,
	/* TONY		LOLLIPOP 3		*/		0.35,
	/* SHARK	FRAZZLE 4		*/		0.25,
	/* MOAWK	LOLLIPOP 1		*/		0.25,
	/* SINKER	*/						1.0,
	/* SHREDDER POINTED			*/		0.25,
	/* GUPPY	LOLLIPOP 2		*/		0.25,
	/* CHEDDAR	*/						1.0,
	/* WHALE	SWITCHBLADE		*/		0.15,
	/* KOI		LOLLIPOP 1		*/		0.25,
	/* SPIKY	POINTED			*/		0.2,
	/* LIP		FRAZZLE 2		*/		0.6,
	/* TERROR	FEATHERED		*/		0.25,
	/* BONES	*/						1.0,
	/* GLUB		FRAZZLE 1		*/		0.25,
	/* LOBSTER	COINED			*/		0.25,
	/* OCTO		LOLLIPOP 2		*/		0.15,
	/* GIRAFFE	TWINED			*/		0.25,
	/* GARY		LOLLIPOP 3		*/		0.35,
	/* SHRIMP	*/						1.0,
	/* STAR		TWINED			*/		0.05,
	/* SEEKER	FEATHERED		*/		0.05,
	/* HEART	CHAINED			*/		0.05,
	/* METROID	FLARED			*/		0.05,
	/* SKULL	SIMPLE RING		*/		0.05,
	/* GHOST	FRAZZLE 3		*/		0.3,
	/* RIGOR	DOUBLE-ANGLED	*/		0.05,
	/* AERYS					*/		0.0,
	/* REAL						*/		0.0,
	/* FISH						*/		0.25,
	/* OCTOPUS					*/		0.25,
	/* CRAB						*/		0.25,
	/* ALLIGATOR				*/		0.04,
	/* PENGUIN					*/		0.40,
];

global.lure_data[LURE.J_3, LP.NAME]						= "Frazzle J Hook 3";
global.lure_data[LURE.J_3, LP.DESC]						= "Frazzle Jazzle this hook is gonna Snazzle";
global.lure_data[LURE.J_3, LP.INFO]						= "Underwater signals are \ncaptured by this lure. \nMaybe you can catch a walker!";
global.lure_data[LURE.J_3, LP.SPRITE]					= spr_lure_17;
global.lure_data[LURE.J_3, LP.COST_SELL]				= 600 / obj_game_controller.multiplier;
global.lure_data[LURE.J_3, LP.COST_BUY]					= 600 / obj_game_controller.multiplier;
global.lure_data[LURE.J_3, LP.CATCH_CHANCE]				= [
	/* NONE		*/						undefined,
	/* CLAM		*/						1.0,
	/* CLOWN	*/						0.55,
	/* CARP		*/						0.35,
	/* DIAMOND	*/						0.35,
	/* TONY		LOLLIPOP 3		*/		0.35,
	/* SHARK	FRAZZLE 4		*/		0.25,
	/* MOAWK	LOLLIPOP 1		*/		0.25,
	/* SINKER	*/						1.0,
	/* SHREDDER POINTED			*/		0.25,
	/* GUPPY	LOLLIPOP 2		*/		0.25,
	/* CHEDDAR	*/						1.0,
	/* WHALE	SWITCHBLADE		*/		0.15,
	/* KOI		LOLLIPOP 1		*/		0.25,
	/* SPIKY	POINTED			*/		0.2,
	/* LIP		FRAZZLE 2		*/		0.2,
	/* TERROR	FEATHERED		*/		0.25,
	/* BONES	*/						1.0,
	/* GLUB		FRAZZLE 1		*/		0.25,
	/* LOBSTER	COINED			*/		0.25,
	/* OCTO		LOLLIPOP 2		*/		0.15,
	/* GIRAFFE	TWINED			*/		0.25,
	/* GARY		LOLLIPOP 3		*/		0.35,
	/* SHRIMP	*/						1.0,
	/* STAR		TWINED			*/		0.05,
	/* SEEKER	FEATHERED		*/		0.05,
	/* HEART	CHAINED			*/		0.05,
	/* METROID	FLARED			*/		0.05,
	/* SKULL	SIMPLE RING		*/		0.05,
	/* GHOST	FRAZZLE 3		*/		0.8,
	/* RIGOR	DOUBLE-ANGLED	*/		0.05,
	/* AERYS					*/		0.0,
	/* REAL						*/		0.0,
	/* FISH						*/		0.25,
	/* OCTOPUS					*/		0.25,
	/* CRAB						*/		0.25,
	/* ALLIGATOR				*/		0.08,
	/* PENGUIN					*/		0.45,
];

global.lure_data[LURE.J_4, LP.NAME]						= "Frazzle J Hook 4";
global.lure_data[LURE.J_4, LP.DESC]						= "Frazzle Jazzle this hook is gonna Snazzle";
global.lure_data[LURE.J_4, LP.INFO]						= "Underwater signals are \ncaptured by this lure. \nMaybe you can catch... \nsomething else!";
global.lure_data[LURE.J_4, LP.SPRITE]					= spr_lure_18;
global.lure_data[LURE.J_4, LP.COST_SELL]				= 600 / obj_game_controller.multiplier;
global.lure_data[LURE.J_4, LP.COST_BUY]					= 600 / obj_game_controller.multiplier;
global.lure_data[LURE.J_4, LP.CATCH_CHANCE]				= [
	/* NONE		*/						undefined,
	/* CLAM		*/						1.0,
	/* CLOWN	*/						0.55,
	/* CARP		*/						0.35,
	/* DIAMOND	*/						0.35,
	/* TONY		LOLLIPOP 3		*/		0.35,
	/* SHARK	FRAZZLE 4		*/		1.0,
	/* MOAWK	LOLLIPOP 1		*/		0.25,
	/* SINKER	*/						1.0,
	/* SHREDDER POINTED			*/		0.25,
	/* GUPPY	LOLLIPOP 2		*/		0.25,
	/* CHEDDAR	*/						1.0,
	/* WHALE	SWITCHBLADE		*/		0.15,
	/* KOI		LOLLIPOP 1		*/		0.25,
	/* SPIKY	POINTED			*/		0.2,
	/* LIP		FRAZZLE 2		*/		0.2,
	/* TERROR	FEATHERED		*/		0.25,
	/* BONES	*/						1.0,
	/* GLUB		FRAZZLE 1		*/		0.25,
	/* LOBSTER	COINED			*/		0.25,
	/* OCTO		LOLLIPOP 2		*/		0.15,
	/* GIRAFFE	TWINED			*/		0.25,
	/* GARY		LOLLIPOP 3		*/		0.35,
	/* SHRIMP	*/						1.0,
	/* STAR		TWINED			*/		0.05,
	/* SEEKER	FEATHERED		*/		0.05,
	/* HEART	CHAINED			*/		0.05,
	/* METROID	FLARED			*/		0.05,
	/* SKULL	SIMPLE RING		*/		0.05,
	/* GHOST	FRAZZLE 3		*/		0.3,
	/* RIGOR	DOUBLE-ANGLED	*/		0.05,
	/* AERYS					*/		0.0,
	/* REAL						*/		0.0,
	/* FISH						*/		0.25,
	/* OCTOPUS					*/		0.25,
	/* CRAB						*/		0.25,
	/* ALLIGATOR				*/		0.10,
	/* PENGUIN					*/		0.50,
];

global.lure_data[LURE.BLADE, LP.NAME]						= "Switchblade Lure";
global.lure_data[LURE.BLADE, LP.DESC]						= "An Unconventional Design";
global.lure_data[LURE.BLADE, LP.INFO]						= "Though non standard, \nyou believe this lure \nmight have special... \ndrawing properties.";
global.lure_data[LURE.BLADE, LP.SPRITE]						= spr_lure_19;
global.lure_data[LURE.BLADE, LP.COST_SELL]					= 750 / obj_game_controller.multiplier;
global.lure_data[LURE.BLADE, LP.COST_BUY]					= 750 / obj_game_controller.multiplier;
global.lure_data[LURE.BLADE, LP.CATCH_CHANCE]				= [
	/* NONE		*/						undefined,
	/* CLAM		*/						1.0,
	/* CLOWN	*/						0.55,
	/* CARP		*/						0.35,
	/* DIAMOND	*/						0.35,
	/* TONY		LOLLIPOP 3		*/		0.35,
	/* SHARK	FRAZZLE 4		*/		0.5,
	/* MOAWK	LOLLIPOP 1		*/		0.25,
	/* SINKER	*/						1.0,
	/* SHREDDER POINTED			*/		0.25,
	/* GUPPY	LOLLIPOP 2		*/		0.25,
	/* CHEDDAR	*/						1.0,
	/* WHALE	SWITCHBLADE		*/		1.0,
	/* KOI		LOLLIPOP 1		*/		0.25,
	/* SPIKY	POINTED			*/		0.2,
	/* LIP		FRAZZLE 2		*/		0.2,
	/* TERROR	FEATHERED		*/		0.25,
	/* BONES	*/						1.0,
	/* GLUB		FRAZZLE 1		*/		0.25,
	/* LOBSTER	COINED			*/		0.25,
	/* OCTO		LOLLIPOP 2		*/		0.15,
	/* GIRAFFE	TWINED			*/		0.25,
	/* GARY		LOLLIPOP 3		*/		0.35,
	/* SHRIMP	*/						1.0,
	/* STAR		TWINED			*/		0.05,
	/* SEEKER	FEATHERED		*/		0.05,
	/* HEART	CHAINED			*/		0.05,
	/* METROID	FLARED			*/		0.05,
	/* SKULL	SIMPLE RING		*/		0.05,
	/* GHOST	FRAZZLE 3		*/		0.3,
	/* RIGOR	DOUBLE-ANGLED	*/		0.05,
	/* AERYS					*/		0.0,
	/* REAL						*/		0.0,
	/* FISH						*/		0.25,
	/* OCTOPUS					*/		0.25,
	/* CRAB						*/		0.25,
	/* ALLIGATOR				*/		0.90,
	/* PENGUIN					*/		0.00,
];

global.lure_data[LURE.HOOK, LP.NAME]						= "Hook Lure";
global.lure_data[LURE.HOOK, LP.DESC]						= "Just a Hook.";
global.lure_data[LURE.HOOK, LP.INFO]						= "It just works.";
global.lure_data[LURE.HOOK, LP.SPRITE]						= spr_lure_20;
global.lure_data[LURE.HOOK, LP.COST_SELL]					= 5000 / obj_game_controller.multiplier;
global.lure_data[LURE.HOOK, LP.COST_BUY]					= 5000 / obj_game_controller.multiplier;
global.lure_data[LURE.HOOK, LP.CATCH_CHANCE]				= [
	/* NONE		*/						undefined,
	/* CLAM		*/						0.0,
	/* CLOWN	*/						0.0,
	/* CARP		*/						0.0,
	/* DIAMOND	*/						0.0,
	/* TONY		LOLLIPOP 3		*/		0.0,
	/* SHARK	FRAZZLE 4		*/		0.0,
	/* MOAWK	LOLLIPOP 1		*/		0.0,
	/* SINKER	*/						0.0,
	/* SHREDDER POINTED			*/		0.0,
	/* GUPPY	LOLLIPOP 2		*/		0.0,
	/* CHEDDAR	*/						0.0,
	/* WHALE	SWITCHBLADE		*/		0.0,
	/* KOI		LOLLIPOP 1		*/		0.0,
	/* SPIKY	POINTED			*/		0.0,
	/* LIP		FRAZZLE 2		*/		1.0,
	/* TERROR	FEATHERED		*/		0.0,
	/* BONES	*/						0.0,
	/* GLUB		FRAZZLE 1		*/		0.0,
	/* LOBSTER	COINED			*/		1.0,
	/* OCTO		LOLLIPOP 2		*/		0.0,
	/* GIRAFFE	TWINED			*/		0.0,
	/* GARY		LOLLIPOP 3		*/		0.0,
	/* SHRIMP	*/						0.0,
	/* STAR		TWINED			*/		0.0,
	/* SEEKER	FEATHERED		*/		0.0,
	/* HEART	CHAINED			*/		0.0,
	/* METROID	FLARED			*/		0.0,
	/* SKULL	SIMPLE RING		*/		0.0,
	/* GHOST	FRAZZLE 3		*/		0.0,
	/* RIGOR	DOUBLE-ANGLED	*/		0.0,
	/* AERYS					*/		0.2,
	/* REAL						*/		0.2,
	/* FISH						*/		0.0,
	/* OCTOPUS					*/		1.0,
	/* CRAB						*/		0.0,
	/* ALLIGATOR				*/		0.0,
	/* PENGUIN					*/		0.0,
];

global.lure_total = array_height_2d(global.lure_data);













