/// @description Insert description here
// You can write your code in this editor
//image_xscale*=2;
//image_yscale=image_xscale;
atacando = false;
vida = 1;
descanso=false
delay=0;
troca=false;
delay_part = 0;
direction=random(364);
speed=random_range(-.5,.5);
colidir = function(){
	//checando horizontalmente
	var _col = instance_place(x+hspeed,y,obj_col);
	if(_col){
		hspeed*=-1
		/*if(hspeed>0) x=_col.bbox_left+(x-bbox_right);
		if(hspeed<0) x=_col.bbox_right+(x-bbox_right);
		hspeed=0;*/
	}
	var _col = instance_place(x,y+vspeed,obj_col);
	if (_col){
		vspeed*=-1;
	}
}
atacar = function(){
	if(instance_exists(obj_player)){
		var _dis = point_distance(x,y,obj_player.x,obj_player.y);
		var _parede = collision_line(x,y,obj_player.x,obj_player.y,obj_col,false,true); 
		if(!_parede){
			if (_dis<=200){
				sprite_index=spr_inimigo_ativo;
				atacando=true;
				
			}
		
		}
	}
}
indo_atacar = function(){
if(atacando){
var _dir = point_direction(x,y,obj_player.x,obj_player.y);
				direction=_dir;
				speed=random_range(1,2.5);
}
}

recoil = function(){
	if(troca){
		hspeed*=-1;
		vspeed*=-1;
		//atacando=false;
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
	}
}

contato_player = function(){
	var _col = instance_place(x,y,obj_player);
	if(descanso==false){
	if(_col){
		audio_play_sound(snd_tapa,1,false);
		if(_col.delay_cool<=0)
		{
		_col.vida-=1;
		
		_col.delay_cool=60;
		}
		
		troca=true
		descanso = true;
		delay = room_speed*2;	
	
		}	
	}
}

