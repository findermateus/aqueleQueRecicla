/// @description Insert description here
// You can write your code in this editor
	draw_self();
	
	if(instance_exists(obj_item_pai)){
		if(instance_exists(item_prox)){
			if(dis<=global.distancia){
				if(desenhar==true){
					draw_set_halign(fa_center);
					draw_set_font(fnt_display);
					var _posy = 16;
					draw_text(item_prox.x,item_prox.y+_posy,item_prox.texto);
					_posy+=10
					draw_text(item_prox.x,item_prox.y+_posy,"[E] pegar");
					
				draw_set_font(-1);
			draw_set_halign(-1);
				}
			}
		}
	}
	
	
	if (mira){
		
	window_set_cursor(spr_mira)
	//var lado = 1;
	//var _dir = point_direction(x+(lado*12),y,mouse_x,mouse_y);
	show_debug_message(lado)
	draw_sprite_ext(spr_mira,0,mouse_x,mouse_y,image_xscale*tam_mira,image_yscale*tam_mira,image_angle,image_blend,image_alpha*.7);
	draw_sprite_ext(spr_arma,0,x+(lado*12),y,image_xscale*.7,image_yscale*.7,image_angle,image_blend,image_alpha);
	}
	if(r){
		draw_set_font(fnt_display);
		draw_set_halign(fa_center);
		draw_text(x,tposy+15,"[R] recarregar");
		draw_set_font(-1);
	}





