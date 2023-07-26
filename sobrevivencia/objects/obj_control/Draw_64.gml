/// @description Insert description here
// You can write your code in this editor
	var _posx=20,_posy=200;
	draw_set_font(fnt_display);
	for(var i=0;i<array_length(global.inventario_comida);i++){
		draw_text(_posx,_posy,string(global.inventario_comida[i][0])+": "+string(global.inventario_comida[i][1]));
		_posy+=50;
	}
	
	if(global.inventario_arma[0][1]){
		
		var _posx = 60,_posy = 650;
		var _tam = 3;
		var _arma = sprite_get_height(spr_arma)*_tam;
		var _bala = sprite_get_width(spr_municao)*_tam;
		draw_sprite_ext(spr_arma,sprite_index,_posx,_posy,image_xscale*_tam,image_yscale*_tam,image_angle,image_blend,image_alpha);
		for(var i=0;i<10;i++){
			draw_sprite_ext(spr_municao,sprite_index,_posx-(sprite_get_width(spr_arma))+(_bala*i),_posy+_arma,image_xscale*_tam,image_yscale*_tam,image_angle,image_blend,image_alpha);
		
		}
	
	}
	
	draw_set_font(-1);