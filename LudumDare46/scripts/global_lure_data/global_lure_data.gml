enum LURE {
	NONE,
	LURE_BASIC_1,
	LURE_BASIC_2,
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
global.lure_data[LURE.LURE_BASIC_1, LP.COST_SELL]			= 0;	
global.lure_data[LURE.LURE_BASIC_1, LP.COST_BUY]			= 10;	
global.lure_data[LURE.LURE_BASIC_1, LP.CATCH_CHANCE]		= [
	/* NONE		*/			undefined,
	/* CLAM		*/			1.0,
	/* CLOWN	*/			0.4,
	/* CARP		*/			0.2,
	/* DIAMOND	*/			0.2,
	/* TONY		*/			0.3,
	/* SHARK	*/			0.1,
	/* MOAWK	*/			0.05,
	/* SINKER	*/			1.0,
	/* SHREDDER */			0.2,
	/* GUPPY	*/			0.5,
	/* CHEDDAR	*/			1.0,
	/* WHALE	*/			0.0,
	/* KOI		*/			0.07,
	/* SPIKY	*/			0.07,
	/* LIP		*/			0.0,
	/* TERROR	*/			0.05,
	/* BONES	*/			1.0,
	/* GLUB		*/			0.2,
	/* LOBSTER	*/			0.1,
	/* OCTO		*/			0.1,
	/* GIRAFFE	*/			0.2,
	/* GARY		*/			0.2,
	/* SHRIMP	*/			1.0,
	/* STAR		*/			0.15,
	/* SEEKER	*/			0.0,
	/* HEART	*/			0.0,
	/* METROID	*/			0.0,
	/* SKULL	*/			0.0,
	/* GHOST	*/			0.1,
	/* RIGOR	*/			0.0,
];
				
global.lure_data[LURE.LURE_BASIC_2, LP.NAME]				= "Basic Lure 2";		
global.lure_data[LURE.LURE_BASIC_2, LP.DESC]				= "A hook, nothing more..";		
global.lure_data[LURE.LURE_BASIC_2, LP.INFO]				= "I once got 3 of these stuck\nin my big toe...\nat the same time! ha";		
global.lure_data[LURE.LURE_BASIC_2, LP.SPRITE]				= spr_lure_basic_1;	
global.lure_data[LURE.LURE_BASIC_2, LP.COST_SELL]			= 0;	
global.lure_data[LURE.LURE_BASIC_2, LP.COST_BUY]			= 10;	
global.lure_data[LURE.LURE_BASIC_2, LP.CATCH_CHANCE]		= [
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

global.lure_data[LURE.FANCY, LP.NAME]						= "Fancy Lure";
global.lure_data[LURE.FANCY, LP.DESC]						= "This lure let's other fishers know; you have class.";
global.lure_data[LURE.FANCY, LP.INFO]						= "Crafted of only the finest materials. Probably by hand.";
global.lure_data[LURE.FANCY, LP.SPRITE]						= spr_lure_1;
global.lure_data[LURE.FANCY, LP.COST_SELL]					= 15;
global.lure_data[LURE.FANCY, LP.COST_BUY]					= 50;
global.lure_data[LURE.FANCY, LP.CATCH_CHANCE]				= [
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

global.lure_data[LURE.FANCIER, LP.NAME]						= "Fancier Lure";
global.lure_data[LURE.FANCIER, LP.DESC]						= "A major upgrade in Fancy!";
global.lure_data[LURE.FANCIER, LP.INFO]						= "Crafted of only the finest materials. Definitely by hand.";
global.lure_data[LURE.FANCIER, LP.SPRITE]					= spr_lure_2;
global.lure_data[LURE.FANCIER, LP.COST_SELL]				= 35;
global.lure_data[LURE.FANCIER, LP.COST_BUY]					= 75;
global.lure_data[LURE.FANCIER, LP.CATCH_CHANCE]				= [
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

global.lure_data[LURE.FANCIEST, LP.NAME]						= "Fanciest Lure";
global.lure_data[LURE.FANCIEST, LP.DESC]						= "Maximum Fancy.";
global.lure_data[LURE.FANCIEST, LP.INFO]						= "Crafted of only the finest materials. Not possible to be made by hand.";
global.lure_data[LURE.FANCIEST, LP.SPRITE]						= spr_lure_3;
global.lure_data[LURE.FANCIEST, LP.COST_SELL]					= 65;
global.lure_data[LURE.FANCIEST, LP.COST_BUY]					= 115;
global.lure_data[LURE.FANCIEST, LP.CATCH_CHANCE]				= [
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

global.lure_data[LURE.FEATHERED, LP.NAME]						= "Feathered Lure";
global.lure_data[LURE.FEATHERED, LP.DESC]						= "A delicate Feather- for a delicate cast.";
global.lure_data[LURE.FEATHERED, LP.INFO]						= "The feathers used on this lure come from a rare bird, \none that lives far from these lands.";
global.lure_data[LURE.FEATHERED, LP.SPRITE]						= spr_lure_4;
global.lure_data[LURE.FEATHERED, LP.COST_SELL]					= 25;
global.lure_data[LURE.FEATHERED, LP.COST_BUY]					= 150;
global.lure_data[LURE.FEATHERED, LP.CATCH_CHANCE]				= [
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

global.lure_data[LURE.POINTED, LP.NAME]						= "Pointed Lure";
global.lure_data[LURE.POINTED, LP.DESC]						= "One Point- One View";
global.lure_data[LURE.POINTED, LP.INFO]						= "The extra point serves to attract rarer fish. Maybe.";
global.lure_data[LURE.POINTED, LP.SPRITE]					= spr_lure_5;
global.lure_data[LURE.POINTED, LP.COST_SELL]				= 25;
global.lure_data[LURE.POINTED, LP.COST_BUY]					= 175;
global.lure_data[LURE.POINTED, LP.CATCH_CHANCE]				= [
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

global.lure_data[LURE.TWINED, LP.NAME]						= "Twined Lure";
global.lure_data[LURE.TWINED, LP.DESC]						= "A twined rap counterbalances this lure.";
global.lure_data[LURE.TWINED, LP.INFO]						= "This comes from a secretive clan of ancient fishers, high in the mountains. Four Twenty high.";
global.lure_data[LURE.TWINED, LP.SPRITE]					= spr_lure_6;
global.lure_data[LURE.TWINED, LP.COST_SELL]					= 04;
global.lure_data[LURE.TWINED, LP.COST_BUY]					= 20;
global.lure_data[LURE.TWINED, LP.CATCH_CHANCE]				= [
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

global.lure_data[LURE.LOLLIPOP_1, LP.NAME]						= "Lollipop Lure";
global.lure_data[LURE.LOLLIPOP_1, LP.DESC]						= "A Delightful Treat";
global.lure_data[LURE.LOLLIPOP_1, LP.INFO]						= "You believe this could attract fish with a sweet tooth.";
global.lure_data[LURE.LOLLIPOP_1, LP.SPRITE]					= spr_lure_7;
global.lure_data[LURE.LOLLIPOP_1, LP.COST_SELL]					= 25;
global.lure_data[LURE.LOLLIPOP_1, LP.COST_BUY]					= 225;
global.lure_data[LURE.LOLLIPOP_1, LP.CATCH_CHANCE]				= [
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

global.lure_data[LURE.LOLLIPOP_2, LP.NAME]						= "Lollipop Lure 2";
global.lure_data[LURE.LOLLIPOP_2, LP.DESC]						= "A Delightful Treat";
global.lure_data[LURE.LOLLIPOP_2, LP.INFO]						= "You believe this could attract fish with a sweet tooth.";
global.lure_data[LURE.LOLLIPOP_2, LP.SPRITE]					= spr_lure_8;
global.lure_data[LURE.LOLLIPOP_2, LP.COST_SELL]					= 25;
global.lure_data[LURE.LOLLIPOP_2, LP.COST_BUY]					= 225;
global.lure_data[LURE.LOLLIPOP_2, LP.CATCH_CHANCE]				= [
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

global.lure_data[LURE.LOLLIPOP_3, LP.NAME]						= "Lollipop Lure 3";
global.lure_data[LURE.LOLLIPOP_3, LP.DESC]						= "A Delightful Treat";
global.lure_data[LURE.LOLLIPOP_3, LP.INFO]						= "You believe this could attract fish with a sweet tooth.";
global.lure_data[LURE.LOLLIPOP_3, LP.SPRITE]					= spr_lure_9;
global.lure_data[LURE.LOLLIPOP_3, LP.COST_SELL]					= 25;
global.lure_data[LURE.LOLLIPOP_3, LP.COST_BUY]					= 225;
global.lure_data[LURE.LOLLIPOP_3, LP.CATCH_CHANCE]				= [
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

global.lure_data[LURE.FLARED, LP.NAME]						= "Flared lure";
global.lure_data[LURE.FLARED, LP.DESC]						= "Flared Tip for Surface Balance";
global.lure_data[LURE.FLARED, LP.INFO]						= "This lure is likely to attract Uncommon and Rare fish of unique traits.";
global.lure_data[LURE.FLARED, LP.SPRITE]					= spr_lure_10;
global.lure_data[LURE.FLARED, LP.COST_SELL]					= 25;
global.lure_data[LURE.FLARED, LP.COST_BUY]					= 260;
global.lure_data[LURE.FLARED, LP.CATCH_CHANCE]				= [
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

global.lure_data[LURE.DOUBLE, LP.NAME]						= "Double-Angled Lure";
global.lure_data[LURE.DOUBLE, LP.DESC]						= "Able to catch fish from many directions.";
global.lure_data[LURE.DOUBLE, LP.INFO]						= "Though unconventional- this lure can help catch two fish at once! \nAt least... that's the theory.";
global.lure_data[LURE.DOUBLE, LP.SPRITE]					= spr_lure_11;
global.lure_data[LURE.DOUBLE, LP.COST_SELL]					= 110;
global.lure_data[LURE.DOUBLE, LP.COST_BUY]					= 300;
global.lure_data[LURE.DOUBLE, LP.CATCH_CHANCE]				= [
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

global.lure_data[LURE.CHAINED, LP.NAME]						= "Chained Lure";
global.lure_data[LURE.CHAINED, LP.DESC]						= "Chained for easier drag";
global.lure_data[LURE.CHAINED, LP.INFO]						= "This lure is able to drag heavier fish- it is much less likely to break!";
global.lure_data[LURE.CHAINED, LP.SPRITE]					= spr_lure_12;
global.lure_data[LURE.CHAINED, LP.COST_SELL]				= 110;
global.lure_data[LURE.CHAINED, LP.COST_BUY]					= 360;
global.lure_data[LURE.CHAINED, LP.CATCH_CHANCE]				= [
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

global.lure_data[LURE.RING, LP.NAME]						= "Simple Ring Hook";
global.lure_data[LURE.RING, LP.DESC]						= "A Classic Design";
global.lure_data[LURE.RING, LP.INFO]						= "Used by the fishers of yore- you can't go wrong with this fine lure!";
global.lure_data[LURE.RING, LP.SPRITE]						= spr_lure_13;
global.lure_data[LURE.RING, LP.COST_SELL]					= 150;
global.lure_data[LURE.RING, LP.COST_BUY]					= 450;
global.lure_data[LURE.RING, LP.CATCH_CHANCE]				= [
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

global.lure_data[LURE.COINED, LP.NAME]						= "Coined Double-Tip";
global.lure_data[LURE.COINED, LP.DESC]						= "A shiny bauble!";
global.lure_data[LURE.COINED, LP.INFO]						= "The coin attached is supposed to attract... special fish.";
global.lure_data[LURE.COINED, LP.SPRITE]					= spr_lure_14;
global.lure_data[LURE.COINED, LP.COST_SELL]					= 225;
global.lure_data[LURE.COINED, LP.COST_BUY]					= 550;
global.lure_data[LURE.COINED, LP.CATCH_CHANCE]				= [
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

global.lure_data[LURE.J_1, LP.NAME]						= "Frazzle J Hook 1";
global.lure_data[LURE.J_1, LP.DESC]						= "Frazzle Jazzle this hook is gonna Snazzle!";
global.lure_data[LURE.J_1, LP.INFO]						= "Underwater signals are captured by this lure. \nMaybe you can catch a ghost!";
global.lure_data[LURE.J_1, LP.SPRITE]					= spr_lure_15;
global.lure_data[LURE.J_1, LP.COST_SELL]				= 200;
global.lure_data[LURE.J_1, LP.COST_BUY]					= 600;
global.lure_data[LURE.J_1, LP.CATCH_CHANCE]				= [
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

global.lure_data[LURE.J_2, LP.NAME]						= "Frazzle J Hook 2";
global.lure_data[LURE.J_2, LP.DESC]						= "Frazzle Jazzle this hook is gonna Snazzle!";
global.lure_data[LURE.J_2, LP.INFO]						= "Underwater signals are captured by this lure. \nMaybe you can catch a heart!";
global.lure_data[LURE.J_2, LP.SPRITE]					= spr_lure_16;
global.lure_data[LURE.J_2, LP.COST_SELL]				= 200;
global.lure_data[LURE.J_2, LP.COST_BUY]					= 500;
global.lure_data[LURE.J_2, LP.CATCH_CHANCE]				= [
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

global.lure_data[LURE.J_3, LP.NAME]						= "Frazzle J Hook 3";
global.lure_data[LURE.J_3, LP.DESC]						= "Frazzle Jazzle this hook is gonna Snazzle";
global.lure_data[LURE.J_3, LP.INFO]						= "Underwater signals are captured by this lure. \nMaybe you can catch a walker!";
global.lure_data[LURE.J_3, LP.SPRITE]					= spr_lure_17;
global.lure_data[LURE.J_3, LP.COST_SELL]				= 200;
global.lure_data[LURE.J_3, LP.COST_BUY]					= 600;
global.lure_data[LURE.J_3, LP.CATCH_CHANCE]				= [
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

global.lure_data[LURE.J_4, LP.NAME]						= "Frazzle J Hook 4";
global.lure_data[LURE.J_4, LP.DESC]						= "Frazzle Jazzle this hook is gonna Snazzle";
global.lure_data[LURE.J_4, LP.INFO]						= "Underwater signals are captured by this lure. \nMaybe you can catch... something else!";
global.lure_data[LURE.J_4, LP.SPRITE]					= spr_lure_18;
global.lure_data[LURE.J_4, LP.COST_SELL]				= 200;
global.lure_data[LURE.J_4, LP.COST_BUY]					= 600;
global.lure_data[LURE.J_4, LP.CATCH_CHANCE]				= [
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

global.lure_data[LURE.BLADE, LP.NAME]						= "Switchblade Lure";
global.lure_data[LURE.BLADE, LP.DESC]						= "An Unconventional Design";
global.lure_data[LURE.BLADE, LP.INFO]						= "Though non standard, you believe this lure might have special drawing properties.";
global.lure_data[LURE.BLADE, LP.SPRITE]						= spr_lure_19;
global.lure_data[LURE.BLADE, LP.COST_SELL]					= 250;
global.lure_data[LURE.BLADE, LP.COST_BUY]					= 750;
global.lure_data[LURE.BLADE, LP.CATCH_CHANCE]				= [
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

global.lure_data[LURE.HOOK, LP.NAME]						= "Hook Lure";
global.lure_data[LURE.HOOK, LP.DESC]						= "Just a Hook.";
global.lure_data[LURE.HOOK, LP.INFO]						= "It Works.";
global.lure_data[LURE.HOOK, LP.SPRITE]						= spr_lure_20;
global.lure_data[LURE.HOOK, LP.COST_SELL]					= 500;
global.lure_data[LURE.HOOK, LP.COST_BUY]					= 1500;
global.lure_data[LURE.HOOK, LP.CATCH_CHANCE]				= [
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













