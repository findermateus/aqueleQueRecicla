/// @description Insert description here
// You can write your code in this editor

	var left,right,up,down{
	 left = keyboard_check(ord("A"));
	 right = keyboard_check(ord("D"));
	 up = keyboard_check(ord("W"));
	 down = keyboard_check(ord("S"));
	}
	 
	 velh= (right-left)*vel;
	 velv= (down-up)*vel;
	 
	 x+=velh;
	 y+=velv;