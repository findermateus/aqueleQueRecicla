/// @description Insert description here
// You can write your code in this editor
draw_self();
if(escrever)
{
	var _posx = 18;
	draw_set_font(fnt_display);
	draw_set_halign(fa_right);
		draw_set_color(c_black);
		draw_text((x-_posx)+1,y+1,texto)
	draw_set_color(c_white);
	draw_text(x-_posx,y,texto)
	draw_set_halign(fa_left);

	draw_set_font(-1);
}