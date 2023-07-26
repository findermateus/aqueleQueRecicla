mato = true;
itens = true;
qtd = irandom_range(room_width/14,room_width/15);
qtd = room_width/10
if (mato){
	repeat(qtd){
		layer_sprite_create("assets_grass",random_range(0,room_width),random_range(0,room_height),choose(spr_grass,spr_grass1,spr_chao,spr_chao1));
	}
}
if (itens== true){
	//instance_create_layer()



}