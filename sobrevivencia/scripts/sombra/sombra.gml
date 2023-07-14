// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sombra(texto,posx,posy,fonte){
	draw_set_font(fonte);
	draw_set_color(c_black);
	draw_text(posx,posy,texto);
	draw_set_color(-1);
	draw_set_font(-1);
}