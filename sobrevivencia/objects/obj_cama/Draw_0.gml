/// @description Insert description here
// You can write your code in this editor
//draw_sprite_ext(spr_sombra,0,x+2,y+5,image_xscale*5,image_yscale*3,image_angle,c_black,.3)
draw_self();

if(escrever)
{
	var _posx = 55;
	draw_set_font(fnt_display);
	draw_set_halign(fa_center);
		draw_set_color(c_black);
		draw_text(x+_posx+1,y+1,texto)
	draw_set_color(c_white);
	draw_text(x+_posx,y,texto)
	draw_set_halign(fa_left);

	draw_set_font(-1);
}











