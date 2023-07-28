/// @description Insert description here
// You can write your code in this editor
	var _dia = instance_create_layer(0,0,"trans",obj_trans_dia);
	global.dia = 1;
	global.hostil =false;
	window_set_cursor(cr_none);
	global.vetor_item[0]= 0;
	global.vetor_item[1]= 1;
	global.vetor_item[2]= 2;
	
	global.distancia = 50;
	//delay = room_speed*3;
	//enlatado
	global.inventario_venda[0][0] = "Enlatado Vazio";
	global.inventario_venda[0][1] = 0;
	global.inventario_venda[0][2] = spr_canned;
	global.inventario_venda[0][3] = 3;
	//agua
	global.inventario_venda[1][0] = "Papel";
	global.inventario_venda[1][1] = 0;
	global.inventario_venda[1][2] = spr_papel;
	global.inventario_venda[1][3] = 0.50;
	
	global.inventario_venda[2][0] = "Garrafa Plástica";
	global.inventario_venda[2][1] = 0;
	global.inventario_venda[2][2] = spr_garrafa;
	global.inventario_venda[2][3] = 1;

	
	//OUTROS ITENS
	global.inventario_arma[0][0] = "Arma";
	global.inventario_arma[0][1] = 0;
	global.inventario_arma[0][2] = 0;
	
	//DINHEIRO
	global.dinheiro=0;
	global.valor=0;
	