/// @description Insert description here
// You can write your code in this editor

	if(alarme<=0){
		global.thirst -=2;
		global.hunger -=1;
		alarme=delay;
	}
	alarme--;


	if(global.thirst>=max_sede){
		global.thirst=max_sede;
	}
	if(global.hunger>=max_fome){
		global.hunger=max_fome;
	}
