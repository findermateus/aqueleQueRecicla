/// @description Insert description here
// You can write your code in this editor
agua = false;
comida = false;
item = random(100);
valor =1;


if (item>50){
	sprite_index= spr_thirst;
	agua = true
}else{
	sprite_index= choose(spr_hunger,spr_canned);
	comida = true;
}
aumentar = function(){
	global.agua+=agua*valor;
	global.comida+=comida*valor;
}



// Inherit the parent event
event_inherited();

