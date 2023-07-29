/// @description Insert description here
// You can write your code in this editor
draw_self();
if(escrever)
{
	var _posx = 18;
	var _posy = 10;
	draw_set_font(fnt_display);
	draw_set_halign(fa_left);
		draw_set_color(c_black);
		draw_text((x+_posx),y+_posy+1,es_texto)
		draw_set_color(c_white);
		draw_text((x+_posx),(y+_posy),es_texto)
		draw_set_halign(fa_left);

	draw_set_font(-1);
}