/// @description Insert description here
// You can write your code in this editor
	//ammo = global.inventario_arma[0][2];

	tposy= y+sin(tempo*0.11)*0.7;
	tempo++
	if(velh>0) lado =1;
	if(velh<0) lado =-1
	if(global.hostil){
	arma();
	tam_mira-=.2;
	if (tam_mira<=1)tam_mira=1;
	}
	coletar();
	troca_sprite();
	cria_particula();
		if (velh!=0) image_xscale = sign(velh);
	if(!instance_exists(obj_trans_dia)&&!instance_exists(obj_transicao))
	{
	var left,right,up,down{
	 left = keyboard_check(ord("A"));
	 right = keyboard_check(ord("D"));
	 up = keyboard_check(ord("W"));
	 down = keyboard_check(ord("S"));
	
	
	}
	var hor=right-left;
	var ver=down-up; 
	velh= hor*global.vel;
	velv= ver*global.vel;
	}
	  if(delay_cool>0)
		{
		  draw_cool=true;
		  delay_cool--
	  }
	
	if(delay_cool<=0){
		draw_cool=false;
	}

	 
	vendedor();
	colidir();
	if(vida<=0){
		morrer();
	
	}
	
		