boat_bob_iter += boat_bob_speed;

if ((happy || sad) && alarm[0] == -1)
	emoji_fade -= 0.01;
	
if (emoji_fade <= 0) {
	happy = false;
	sad = false;
	emoji_fade = 0;
}