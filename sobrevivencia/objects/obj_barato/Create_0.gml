/// @description Insert description here
// You can write your code in this editor
// Inherit the parent event
event_inherited();
valor =0;

var _item = irandom_range(0,array_length(global.inventario_venda)-1);
item = global.vetor_item[_item];
switch(item){
case 0:
	sprite_index = global.inventario_venda[_item][2];
	valor = global.inventario_venda[_item][3];
	texto=global.inventario_venda[_item][0];
	//global.inventario_venda[item][1]+=valor;
break;
case 1:
	sprite_index = global.inventario_venda[_item][2];
	valor = global.inventario_venda[_item][3];
	texto=global.inventario_venda[_item][0];
	//global.inventario_venda[item][1]+=valor;
break;
case 2:
	texto=global.inventario_venda[_item][0];
	sprite_index = global.inventario_venda[_item][2];
	valor = global.inventario_venda[_item][3];
	//global.inventario_venda[item][1]+=valor;
break;

}






