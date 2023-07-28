/// @description Insert description here
// You can write your code in this editor
draw_self();
	if(!instance_exists(obj_botao)&&dis<50)
	{
	draw_set_font(fnt_display);
	
	draw_set_halign(fa_center);
		draw_set_color(c_black);
		draw_text(x+1,y+35+1,"[E] Interagir");
		draw_set_color(-1);
	draw_text(x,y+35,"[E] Interagir");
	//draw_set_halign(-1);
	draw_set_color(-1);
	draw_set_font(-1);
	draw_set_halign(fa_left);
	
	}