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

global.lure_data[LURE.NONE, LP.NAME]						= "Fancy Lure";
global.lure_data[LURE.NONE, LP.DESC]						= "This lure let's other fishers know; you have class.";
global.lure_data[LURE.NONE, LP.INFO]						= "Crafted of only the finest materials. Probably by hand.";
global.lure_data[LURE.NONE, LP.SPRITE]						= spr_lure_1;
global.lure_data[LURE.NONE, LP.COST_SELL]					= 15;
global.lure_data[LURE.NONE, LP.COST_BUY]					= 50;
global.lure_data[LURE.NONE, LP.CATCH_CHANCE]				= [
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

global.lure_data[LURE.NONE, LP.NAME]						= "Fancier Lure";
global.lure_data[LURE.NONE, LP.DESC]						= "A major upgrade in Fancy!";
global.lure_data[LURE.NONE, LP.INFO]						= "Crafted of only the finest materials. Definitely by hand.";
global.lure_data[LURE.NONE, LP.SPRITE]						= spr_lure_2;
global.lure_data[LURE.NONE, LP.COST_SELL]					= 35;
global.lure_data[LURE.NONE, LP.COST_BUY]					= 75;
global.lure_data[LURE.NONE, LP.CATCH_CHANCE]				= [
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

global.lure_data[LURE.NONE, LP.NAME]						= "Fanciest Lure";
global.lure_data[LURE.NONE, LP.DESC]						= "Maximum Fancy.";
global.lure_data[LURE.NONE, LP.INFO]						= "Crafted of only the finest materials. Not possible to be made by hand.";
global.lure_data[LURE.NONE, LP.SPRITE]						= spr_lure_3;
global.lure_data[LURE.NONE, LP.COST_SELL]					= 65;
global.lure_data[LURE.NONE, LP.COST_BUY]					= 115;
global.lure_data[LURE.NONE, LP.CATCH_CHANCE]				= [
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

global.lure_data[LURE.NONE, LP.NAME]						= "Feathered Lure";
global.lure_data[LURE.NONE, LP.DESC]						= "A delicate Feather- for a delicate cast.";
global.lure_data[LURE.NONE, LP.INFO]						= "The feathers used on this lure come from a rare bird, \none that lives far from these lands.";
global.lure_data[LURE.NONE, LP.SPRITE]						= spr_lure_4;
global.lure_data[LURE.NONE, LP.COST_SELL]					= 25;
global.lure_data[LURE.NONE, LP.COST_BUY]					= 150;
global.lure_data[LURE.NONE, LP.CATCH_CHANCE]				= [
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

global.lure_data[LURE.NONE, LP.NAME]						= "Pointed Lure";
global.lure_data[LURE.NONE, LP.DESC]						= "One Point- One View";
global.lure_data[LURE.NONE, LP.INFO]						= "The extra point serves to attract rarer fish. Maybe.";
global.lure_data[LURE.NONE, LP.SPRITE]						= spr_lure_5;
global.lure_data[LURE.NONE, LP.COST_SELL]					= 25;
global.lure_data[LURE.NONE, LP.COST_BUY]					= 175;
global.lure_data[LURE.NONE, LP.CATCH_CHANCE]				= [
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

global.lure_data[LURE.NONE, LP.NAME]						= "Twined Lure";
global.lure_data[LURE.NONE, LP.DESC]						= "A twined rap counterbalances this lure.";
global.lure_data[LURE.NONE, LP.INFO]						= "This comes from a secretive clan of ancient fishers, high in the mountains. Four Twenty high.";
global.lure_data[LURE.NONE, LP.SPRITE]						= spr_lure_6;
global.lure_data[LURE.NONE, LP.COST_SELL]					= 04;
global.lure_data[LURE.NONE, LP.COST_BUY]					= 20;
global.lure_data[LURE.NONE, LP.CATCH_CHANCE]				= [
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

global.lure_data[LURE.NONE, LP.NAME]						= "Lollipop Lure";
global.lure_data[LURE.NONE, LP.DESC]						= "A Delightful Treat";
global.lure_data[LURE.NONE, LP.INFO]						= "You believe this could attract fish with a sweet tooth.";
global.lure_data[LURE.NONE, LP.SPRITE]						= spr_lure_7;
global.lure_data[LURE.NONE, LP.COST_SELL]					= 25;
global.lure_data[LURE.NONE, LP.COST_BUY]					= 225;
global.lure_data[LURE.NONE, LP.CATCH_CHANCE]				= [
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

global.lure_data[LURE.NONE, LP.NAME]						= "Lollipop Lure 2";
global.lure_data[LURE.NONE, LP.DESC]						= "A Delightful Treat";
global.lure_data[LURE.NONE, LP.INFO]						= "You believe this could attract fish with a sweet tooth.";
global.lure_data[LURE.NONE, LP.SPRITE]						= spr_lure_8;
global.lure_data[LURE.NONE, LP.COST_SELL]					= 25;
global.lure_data[LURE.NONE, LP.COST_BUY]					= 225;
global.lure_data[LURE.NONE, LP.CATCH_CHANCE]				= [
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

global.lure_data[LURE.NONE, LP.NAME]						= "Lollipop Lure 3";
global.lure_data[LURE.NONE, LP.DESC]						= "A Delightful Treat";
global.lure_data[LURE.NONE, LP.INFO]						= "You believe this could attract fish with a sweet tooth.";
global.lure_data[LURE.NONE, LP.SPRITE]						= spr_lure_9;
global.lure_data[LURE.NONE, LP.COST_SELL]					= 25;
global.lure_data[LURE.NONE, LP.COST_BUY]					= 225;
global.lure_data[LURE.NONE, LP.CATCH_CHANCE]				= [
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

global.lure_data[LURE.NONE, LP.NAME]						= "Flared lure";
global.lure_data[LURE.NONE, LP.DESC]						= "Flared Tip for Surface Balance";
global.lure_data[LURE.NONE, LP.INFO]						= "This lure is likely to attract Uncommon and Rare fish of unique traits.";
global.lure_data[LURE.NONE, LP.SPRITE]						= spr_lure_10;
global.lure_data[LURE.NONE, LP.COST_SELL]					= 25;
global.lure_data[LURE.NONE, LP.COST_BUY]					= 260;
global.lure_data[LURE.NONE, LP.CATCH_CHANCE]				= [
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

global.lure_data[LURE.NONE, LP.NAME]						= "";
global.lure_data[LURE.NONE, LP.DESC]						= "";
global.lure_data[LURE.NONE, LP.INFO]						= "";
global.lure_data[LURE.NONE, LP.SPRITE]						= spr_lure_11;
global.lure_data[LURE.NONE, LP.COST_SELL]					= ;
global.lure_data[LURE.NONE, LP.COST_BUY]					= ;
global.lure_data[LURE.NONE, LP.CATCH_CHANCE]				= [
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

global.lure_data[LURE.NONE, LP.NAME]						= "";
global.lure_data[LURE.NONE, LP.DESC]						= "";
global.lure_data[LURE.NONE, LP.INFO]						= "";
global.lure_data[LURE.NONE, LP.SPRITE]						= spr_lure_12;
global.lure_data[LURE.NONE, LP.COST_SELL]					= ;
global.lure_data[LURE.NONE, LP.COST_BUY]					= ;
global.lure_data[LURE.NONE, LP.CATCH_CHANCE]				= [
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

global.lure_data[LURE.NONE, LP.NAME]						= "";
global.lure_data[LURE.NONE, LP.DESC]						= "";
global.lure_data[LURE.NONE, LP.INFO]						= "";
global.lure_data[LURE.NONE, LP.SPRITE]						= spr_lure_13;
global.lure_data[LURE.NONE, LP.COST_SELL]					= ;
global.lure_data[LURE.NONE, LP.COST_BUY]					= ;
global.lure_data[LURE.NONE, LP.CATCH_CHANCE]				= [
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

global.lure_data[LURE.NONE, LP.NAME]						= "";
global.lure_data[LURE.NONE, LP.DESC]						= "";
global.lure_data[LURE.NONE, LP.INFO]						= "";
global.lure_data[LURE.NONE, LP.SPRITE]						= spr_lure_14;
global.lure_data[LURE.NONE, LP.COST_SELL]					= ;
global.lure_data[LURE.NONE, LP.COST_BUY]					= ;
global.lure_data[LURE.NONE, LP.CATCH_CHANCE]				= [
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

global.lure_data[LURE.NONE, LP.NAME]						= "";
global.lure_data[LURE.NONE, LP.DESC]						= "";
global.lure_data[LURE.NONE, LP.INFO]						= "";
global.lure_data[LURE.NONE, LP.SPRITE]						= spr_lure_15;
global.lure_data[LURE.NONE, LP.COST_SELL]					= ;
global.lure_data[LURE.NONE, LP.COST_BUY]					= ;
global.lure_data[LURE.NONE, LP.CATCH_CHANCE]				= [
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

global.lure_data[LURE.NONE, LP.NAME]						= "";
global.lure_data[LURE.NONE, LP.DESC]						= "";
global.lure_data[LURE.NONE, LP.INFO]						= "";
global.lure_data[LURE.NONE, LP.SPRITE]						= spr_lure_16;
global.lure_data[LURE.NONE, LP.COST_SELL]					= ;
global.lure_data[LURE.NONE, LP.COST_BUY]					= ;
global.lure_data[LURE.NONE, LP.CATCH_CHANCE]				= [
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

global.lure_data[LURE.NONE, LP.NAME]						= "";
global.lure_data[LURE.NONE, LP.DESC]						= "";
global.lure_data[LURE.NONE, LP.INFO]						= "";
global.lure_data[LURE.NONE, LP.SPRITE]						= spr_lure_17;
global.lure_data[LURE.NONE, LP.COST_SELL]					= ;
global.lure_data[LURE.NONE, LP.COST_BUY]					= ;
global.lure_data[LURE.NONE, LP.CATCH_CHANCE]				= [
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

global.lure_data[LURE.NONE, LP.NAME]						= "";
global.lure_data[LURE.NONE, LP.DESC]						= "";
global.lure_data[LURE.NONE, LP.INFO]						= "";
global.lure_data[LURE.NONE, LP.SPRITE]						= spr_lure_18;
global.lure_data[LURE.NONE, LP.COST_SELL]					= ;
global.lure_data[LURE.NONE, LP.COST_BUY]					= ;
global.lure_data[LURE.NONE, LP.CATCH_CHANCE]				= [
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

global.lure_data[LURE.NONE, LP.NAME]						= "";
global.lure_data[LURE.NONE, LP.DESC]						= "";
global.lure_data[LURE.NONE, LP.INFO]						= "";
global.lure_data[LURE.NONE, LP.SPRITE]						= spr_lure_19;
global.lure_data[LURE.NONE, LP.COST_SELL]					= ;
global.lure_data[LURE.NONE, LP.COST_BUY]					= ;
global.lure_data[LURE.NONE, LP.CATCH_CHANCE]				= [
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

global.lure_data[LURE.NONE, LP.NAME]						= "";
global.lure_data[LURE.NONE, LP.DESC]						= "";
global.lure_data[LURE.NONE, LP.INFO]						= "";
global.lure_data[LURE.NONE, LP.SPRITE]						= spr_lure_20;
global.lure_data[LURE.NONE, LP.COST_SELL]					= ;
global.lure_data[LURE.NONE, LP.COST_BUY]					= ;
global.lure_data[LURE.NONE, LP.CATCH_CHANCE]				= [
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













