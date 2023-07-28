/// @description Insert description here
// You can write your code in this editor
	draw_sprite_ext(spr_sombra,0,x,y+7,image_xscale*1.6,image_yscale*.6,image_angle,c_black,image_alpha*.3)
	draw_self();
	
	if(instance_exists(obj_item_pai)){
		if(instance_exists(item_prox)){
			if(dis<=global.distancia){
				if(desenhar==true){
					draw_set_halign(fa_center);
					draw_set_font(fnt_display);
					
					//NOME
					var _posy = 16;
						draw_set_color(c_black);
						draw_text(item_prox.x+1,item_prox.y+_posy+1,item_prox.texto);
						draw_set_color(-1);
						draw_text(item_prox.x,item_prox.y+_posy,item_prox.texto);
					
					//VALOR
					_posy+=10
						
						draw_set_color(c_black);
						draw_text(item_prox.x,item_prox.y+_posy,"Valor: "+string(item_prox.valor));
						draw_set_color(-1);
						draw_text(item_prox.x,item_prox.y+_posy,"Valor: "+string(item_prox.valor));
					
					//PEGAR
					_posy+=10
					draw_set_color(c_black);
					draw_text(item_prox.x+1,item_prox.y+_posy+1,"[E] pegar");
					draw_set_color(-1);
					draw_text(item_prox.x,item_prox.y+_posy,"[E] pegar");
				draw_set_font(-1);
			draw_set_halign(fa_left);
				}
			}
		}
	}
	
	
	if(global.hostil){
	if (mira){
		
	//window_set_cursor(spr_mira)
	//var lado = 1;
	//var _dir = point_direction(x+(lado*12),y,mouse_x,mouse_y);
	//show_debug_message(lado)
	draw_sprite_ext(spr_mira,0,mouse_x,mouse_y,image_xscale*tam_mira,image_yscale*tam_mira,image_angle,image_blend,image_alpha*.7);
	draw_sprite_ext(spr_arma,0,x+(lado*12),y,image_xscale*.7,image_yscale*.7,image_angle,image_blend,image_alpha);
	}
	}else{
		cursor_sprite=spr_mouse
	//window_set_cursor(spr_mouse);
	}
	if(r){
		draw_set_font(fnt_display);
		draw_set_halign(fa_center);
		draw_text(x,tposy+15,"[R] recarregar");
		draw_set_font(-1);
		draw_set_halign(fa_left);
	}




