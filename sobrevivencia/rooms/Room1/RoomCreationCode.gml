global.hostil = true
global.lugar = 1;
global.sono = true
mato = true;
itens = true;
qtd = irandom_range(room_width/14,room_width/15);
qtd = room_width/10
if (mato){
	repeat(qtd){
		layer_sprite_create("assets_grass",random_range(0,room_width),random_range(0,room_height),choose(spr_grass,spr_grass2,spr_grass3));
	}
}

if (itens== true){
	repeat(random_range(7,15)+global.dia)
	{
		var _item = instance_create_layer(random_range(308,room_width-30),random_range(80,room_height-80),"itens",obj_barato);
	}
if(global.hostil){
	repeat(random_range(3,6)+global.dia)
	var _inimigo = instance_create_layer(random_range((room_width/2),room_width-30),random_range(80,room_height-80),"inimigos",obj_rato);
}

}
if(!instance_exists(obj_player)){
	instance_create_layer(obj_ponto.x,obj_ponto.y,"player",obj_player);

}