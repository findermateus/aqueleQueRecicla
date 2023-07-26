/// @description Insert description here
// You can write your code in this editor
	
	
	coletar();
	troca_sprite();
	cria_particula();
		if (velh!=0) image_xscale = sign(velh);
	
	if keyboard_check_pressed(vk_space) room_goto_next();
	var left,right,up,down{
	 left = keyboard_check(ord("A"));
	 right = keyboard_check(ord("D"));
	 up = keyboard_check(ord("W"));
	 down = keyboard_check(ord("S"));
	}
	 
	 
var hor=right-left;
var ver=down-up; 

velh= hor*vel;
velv= ver*vel;
	 	
 colidir();
	
		