/// @description Insert description here
// You can write your code in this editor
agua = false;
comida = false;
item = random(100);
valor =1;
canned = function(){
	sprite_index = spr_canned;
	image_angle = 1;
	valor=3;
}
frango = function(){
	sprite_index = spr_hunger;
	valor = 1;
}

if (item>50){
	sprite_index= spr_thirst;
	agua = true
}else{
	var _item = choose("frango","lata");
	if(_item=="frango"){
		sprite_index =spr_hunger;
	}else{
		sprite_index = spr_canned;
	}
	comida = true;
}
aumentar = function(){
	global.agua+=agua*valor;
	global.comida+=comida*valor;
}



// Inherit the parent event
event_inherited();

