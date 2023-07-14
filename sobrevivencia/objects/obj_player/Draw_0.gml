/// @description Insert description here
// You can write your code in this editor
	draw_self();
	
	if(instance_exists(item_prox)&&dis<=global.distancia&&desenhar==true){
		draw_set_halign(fa_center);
			draw_set_font(fnt_display);
				draw_text(item_prox.x,item_prox.y+16,"[E] pegar");
			draw_set_font(-1);
		draw_set_halign(-1);
	}








