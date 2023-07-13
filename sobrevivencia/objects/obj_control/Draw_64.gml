/// @description Insert description here
// You can write your code in this editor
	var _tam = 3;
	var _posx = 30;

	draw_set_font(fnt_ui);
	
	//sombrafome
	draw_sprite_ext(spr_hunger,image_index,43,52,image_xscale*_tam,image_yscale*_tam,image_angle,c_black,image_alpha*.5);
	draw_sprite_ext(spr_hunger,image_index,40,50,image_xscale*_tam,image_yscale*_tam,image_angle,image_blend,image_alpha);
	
	draw_sprite_ext(spr_thirst,image_index,43,162,image_xscale*_tam,image_yscale*_tam,image_angle,c_black,image_alpha*.5);
	draw_sprite_ext(spr_thirst,image_index,40,160,image_xscale*_tam,image_yscale*_tam,image_angle,image_blend,image_alpha);
	
	draw_set_color(c_black);
	draw_text(42+_posx,43,": "+string(global.hunger));
	draw_text(42+_posx,153,": "+string(global.thirst));
	draw_set_color(-1);
	draw_text(40+_posx,40,": "+string(global.hunger));
	draw_text(40+_posx,150,": "+string(global.thirst));
	
	draw_set_color(-1);
	draw_set_font(-1);
	

