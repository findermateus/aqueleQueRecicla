/// @description Insert description here
// You can write your code in this editor


draw_self();
draw_set_color(c_black);
draw_set_halign(1);
draw_set_valign(1);
var _larg = sprite_width/2;
var _alt = sprite_height/2;

draw_text(x+_larg,y+_alt+2,texto);
draw_set_color(-1);
draw_text(x+_larg,y+_alt,texto);

draw_set_halign(0);
draw_set_valign(0);








