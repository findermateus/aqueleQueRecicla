global.hostil = true
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
	repeat(random_range(10,20))
	{
		var _item = instance_create_layer(random_range(room_width/3,room_width),random_range(10,room_height-10),"itens",obj_alimento);
	}


}