/// @description Insert description here
// You can write your code in this editor
delay--
if(delay<=0)descanso=false
if(descanso==false){
	atacar();
	indo_atacar();
}
if(hspeed!=0&&descanso==false)image_xscale = sign(hspeed);
if(descanso){
	recoil();
	/*if(troca){
		hspeed*=-1;
		vspeed*=-1;
		
		troca=false
	}
	sinalh = sign(hspeed);
	sinalv = sign(vspeed);
	hspeed = hspeed+((sinalh*-1)*0.05);
	vspeed = vspeed+((sinalv*-1)*0.05);
	if(hspeed==0) hspeed=0;
	if(vspeed==0) vspeed=0;
	if(delay_part<=0){
	var _posx = image_xscale*9;
	var _particula = instance_create_layer(x+(_posx),y,"particles",obj_particle_player);
	_particula.velv=-0.5;
	delay_part=20;
	}*/
}
delay_part--;
var _col = instance_place(x,y,obj_bala)
if(_col){
	if(descanso==false){
		troca=true
		descanso = true;
		delay = room_speed*2;
		recoil();
			
	}
	var _impacto = instance_create_layer(x,y,"efeitos",obj_tiro_impacto);
	//var _dir = point_direction(_impacto.x,_impacto.y,_col.x,_col.y);
	_impacto.sprite_index = spr_explosao;
	instance_destroy(_col);
	
} 

if(vida<1){
	instance_destroy();
}
contato_player();
colidir();