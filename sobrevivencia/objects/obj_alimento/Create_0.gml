/// @description Insert description here
// You can write your code in this editor
agua = false;
comida = false;
item = random(100);
if (item>50){
	sprite_index= spr_thirst;
	agua = true
}else{
	sprite_index= spr_hunger;
	comida = true
}





// Inherit the parent event
event_inherited();

