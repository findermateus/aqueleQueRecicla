/// @description Insert description here
// You can write your code in this editor

draw_self()
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);
	draw_set_font(fnt_display2)
	draw_set_alpha(image_alpha);
	draw_text(room_width/2,room_height/2,"Dia "+string(global.dia));
	draw_set_halign(fa_left);
	draw_set_alpha(1);
	draw_set_valign(fa_top);
	draw_set_font(-1)






