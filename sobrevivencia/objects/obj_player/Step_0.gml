/// @description Insert description here
// You can write your code in this editor
	if(keyboard_check_pressed(vk_alt)){
		if(god_mode==false){
			god_mode=true;
		}else{
			god_mode=false;
		}
	}
	show_debug_message(god_mode);
	
	var left,right,up,down{
	 left = keyboard_check(ord("A"));
	 right = keyboard_check(ord("D"));
	 up = keyboard_check(ord("W"));
	 down = keyboard_check(ord("S"));
	}
	 
	 coletar();
	 
	 velh= (right-left)*vel;
	 velv= (down-up)*vel;
	 colidir();
	
	 
	