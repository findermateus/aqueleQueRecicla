/// @description Insert description here
// You can write your code in this editor
	
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(spr_sombra,0,x,y,image_xscale*2,image_yscale*2,image_angle,c_white,image_alpha*.2)
	gpu_set_blendmode(bm_normal);
draw_self();

