/// @description Insert description here
// You can write your code in this editor
	//var _posx=20,_posy=200;
	
	//draw_text(_lat,_posy+50,string(global.valor));
	draw_set_font(fnt_display_botao)
	draw_set_color(c_black)
	draw_set_halign(fa_left);
		draw_set_valign(fa_top);
	draw_sprite_ext(spr_money,image_index,20,20,2,2,image_angle,image_blend,image_alpha)
	draw_text(110+1,23+1,"  "+string(global.dinheiro));
	draw_set_color(c_white);
	draw_text(110,23,"  "+string(global.dinheiro));
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)

	//draw_set_font(-1)
if(global.hostil){
	if(global.inventario_arma[0][1]){
		
		var _posx = 60,_posy = 650;
		var _tam = 3;
		var _arma = sprite_get_height(spr_arma)*_tam;
		var _bala = sprite_get_width(spr_municao)*_tam;
		draw_sprite_ext(spr_arma,image_index,_posx,_posy,image_xscale*_tam,image_yscale*_tam,image_angle,image_blend,image_alpha);
		for(var i=0;i<obj_player.ammo;i++){
			draw_sprite_ext(spr_municao,image_index,_posx-(sprite_get_width(spr_arma))+(_bala*i),_posy+_arma,image_xscale*_tam,image_yscale*_tam,image_angle,image_blend,image_alpha);
		
		}
	
	}
	var _posx = 50
	repeat(obj_player.vida){
		draw_sprite_ext(spr_vida,0,_posx,600,2,2,image_angle,c_white,.6)
		_posx+=50
	}
}
	draw_set_font(-1);