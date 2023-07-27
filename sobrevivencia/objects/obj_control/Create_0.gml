/// @description Insert description here
// You can write your code in this editor
	global.hostil =false;
	window_set_cursor(cr_none);
	global.vetor_item[0]= 0;
	global.vetor_item[1]= 1;
	global.vetor_item[2]= 2;
	
	global.distancia = 50;
	//delay = room_speed*3;
	//enlatado
	global.inventario_venda[0][0] = "Enlatado";
	global.inventario_venda[0][1] = 0;
	global.inventario_venda[0][2] = spr_canned;
	global.inventario_venda[0][3] = 3;
	//agua
	global.inventario_venda[1][0] = "Frango";
	global.inventario_venda[1][1] = 0;
	global.inventario_venda[1][2] = spr_hunger;
	global.inventario_venda[1][3] = 0.50;
	
	global.inventario_venda[2][0] = "Água";
	global.inventario_venda[2][1] = 0;
	global.inventario_venda[2][2] = spr_thirst;
	global.inventario_venda[2][3] = 1;

	
	//OUTROS ITENS
	global.inventario_arma[0][0] = "Arma";
	global.inventario_arma[0][1] = 0;
	global.inventario_arma[0][2] = 0;
	
	//DINHEIRO
	global.dinheiro=0;
	global.valor=0;
	global.vendeu=false;
	