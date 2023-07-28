/// @description Insert description here
// You can write your code in this editor

if(desenha){
	if(instance_exists(obj_player)){
		draw_set_halign(fa_center)
		draw_set_font(fnt_display);
		draw_set_color(c_black)
		draw_text(obj_player.x+1,obj_player.y+6,"[espaço] "+texto);
		draw_set_color(c_white)
		draw_text(obj_player.x,obj_player.y+5,"[espaço] "+texto);
		draw_set_font(-1);
		//draw_set_halign(-1);
	}
}











