/// @description Insert description here
// You can write your code in this editor
draw_self()

draw_set_font(fnt_display);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(c_black);
draw_set_alpha(image_xscale);
draw_text(x,y,texto);
draw_set_valign(fa_top);
draw_set_alpha(1);
draw_set_color(-1);
draw_set_font(-1);