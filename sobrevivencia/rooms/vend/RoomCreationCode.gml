mato = false;
qtd = irandom_range(room_width/14,room_width/15);
qtd = room_width/15
if (mato){
	repeat(qtd){
		layer_sprite_create("assets_grass",random_range(0,room_width),random_range(0,room_height),choose(spr_grass,spr_galho));
	}


}

obj_player.x = 30;
obj_player.y = room_height/2;