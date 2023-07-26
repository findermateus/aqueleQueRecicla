/// @description Insert description here
// You can write your code in this editor
atacando = false;
vida = 3;
velh = random_range(-.5,.5);
velv = random_range(-.5,.5);
vel =3;
colidir = function(){
	//checando horizontalmente
	var _col = instance_place(x+velh,y,obj_col);
	if (_col){
		if (velh!=0) velh*=-1;
	}
	var _col = instance_place(x,y+velv,obj_col);
	if (_col){
		if(velv!=0) velv*=-1;
	}
}
atacar = function(){
	if(instance_exists(obj_player)){
		var _dis = point_distance(x,y,obj_player.x,obj_player.y);
		var _parede = collision_line(x,y,obj_player.x,obj_player.y,obj_col,false,true); 
		if(!_parede){
			if (_dis<=200){
				atacando=true;
				mp_potential_step_object(obj_player.x,obj_player.y,vel,obj_evita_colisao);
			}
		
		}
	}
}


