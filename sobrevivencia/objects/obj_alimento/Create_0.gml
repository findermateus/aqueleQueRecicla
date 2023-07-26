/// @description Insert description here
// You can write your code in this editor

valor =1;

var _item = irandom(2);
item = global.vetor_item[_item];
switch(item){
case 0:
	sprite_index = spr_canned;
	valor = 3;
	//global.inventario_comida[item][1]+=valor;
break;
case 1:
	sprite_index = spr_hunger;
	valor = 0.75;
	//global.inventario_comida[item][1]+=valor;
break;
case 2:
	sprite_index = spr_thirst;
	valor = 1;
	//global.inventario_comida[item][1]+=valor;
break;

}




// Inherit the parent event
event_inherited();

